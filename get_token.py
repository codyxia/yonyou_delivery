#!/usr/bin/env python3
"""
获取用友API全局识别码(token)
token存储到cache.json中，自动管理过期时间
"""

import json
import time
import requests
from pathlib import Path
from datetime import datetime

# 忽略SSL警告
try:
    import urllib3
    urllib3.disable_warnings()
except:
    pass


# API配置
TOKEN_URL = "https://api.yonyouup.com/system/token"
CACHE_FILE = Path(__file__).parent / "cache.json"


def load_config() -> dict:
    """从config.json加载配置"""
    config_file = Path(__file__).parent / "config.json"
    if not config_file.exists():
        raise FileNotFoundError(f"配置文件不存在: {config_file}")

    with open(config_file, 'r', encoding='utf-8') as f:
        config = json.load(f)

    required_keys = ['from_account', 'app_key', 'app_secret']
    for key in required_keys:
        if key not in config:
            raise ValueError(f"配置缺少必需字段: {key}")

    return config


def load_cache() -> dict:
    """加载cache.json"""
    if not CACHE_FILE.exists():
        return None

    try:
        with open(CACHE_FILE, 'r', encoding='utf-8') as f:
            return json.load(f)
    except (json.JSONDecodeError, IOError):
        return None


def save_cache(cache: dict) -> None:
    """保存到cache.json"""
    with open(CACHE_FILE, 'w', encoding='utf-8') as f:
        json.dump(cache, f, ensure_ascii=False, indent=2)


def is_token_valid(cache: dict) -> bool:
    """检查token是否有效（未过期）"""
    if cache is None:
        return False

    if 'expires_at' not in cache:
        return False

    # 预留60秒缓冲时间，避免临界情况
    return time.time() < (cache['expires_at'] - 60)


def fetch_token(config: dict) -> dict:
    """从API获取新token"""
    params = {
        'from_account': config['from_account'],
        'app_key': config['app_key'],
        'app_secret': config['app_secret']
    }

    print(f"正在从API获取token...")
    print(f"URL: {TOKEN_URL}")

    response = requests.get(TOKEN_URL, params=params, timeout=30)
    response.raise_for_status()

    result = response.json()

    if str(result.get('errcode')) != '0':
        raise Exception(f"获取token失败: {result.get('errmsg')} (errcode: {result.get('errcode')})")

    token_data = result.get('token', {})
    if not token_data:
        raise Exception("响应中缺少token数据")

    expires_in = token_data.get('expiresIn', 7200)
    now = time.time()

    cache = {
        'id': token_data.get('id'),
        'appKey': token_data.get('appKey'),
        'expiresIn': expires_in,
        'expires_at': now + expires_in,
        'fetched_at': datetime.now().isoformat()
    }

    print(f"获取成功! token: {cache['id'][:20]}...")
    print(f"过期时间: {expires_in}秒")
    print(f"到期时间: {datetime.fromtimestamp(cache['expires_at']).strftime('%Y-%m-%d %H:%M:%S')}")

    return cache


def get_token(config: dict = None, force_refresh: bool = False) -> str:
    """获取token（优先使用缓存，缓存无效时自动获取新token）

    Args:
        config: 配置字典，如果为None则从config.json加载
        force_refresh: 是否强制刷新token

    Returns:
        token字符串
    """
    # 加载配置
    if config is None:
        config = load_config()

    # 检查缓存
    if not force_refresh:
        cache = load_cache()
        if is_token_valid(cache):
            remaining = int(cache['expires_at'] - time.time())
            print(f"使用缓存token，剩余有效期: {remaining}秒")
            return cache['id']

    # 获取新token
    cache = fetch_token(config)
    save_cache(cache)

    return cache['id']


def main():
    """主函数"""
    import argparse

    parser = argparse.ArgumentParser(description='获取用友API Token')
    parser.add_argument('--force', '-f', action='store_true', help='强制刷新token（忽略缓存）')
    parser.add_argument('--show', '-s', action='store_true', help='显示当前缓存状态')

    args = parser.parse_args()

    try:
        config = load_config()
    except FileNotFoundError as e:
        print(f"错误: {e}")
        print("\n请在config.json中配置以下内容:")
        print('{"from_account": "你的账号", "app_key": "你的app_key", "app_secret": "你的app_secret"}')
        return 1

    if args.show:
        cache = load_cache()
        if cache:
            print("当前缓存状态:")
            print(f"  token: {cache.get('id', 'N/A')[:30]}...")
            print(f"  appKey: {cache.get('appKey', 'N/A')}")
            print(f"  expiresIn: {cache.get('expiresIn', 'N/A')}秒")
            print(f"  获取时间: {cache.get('fetched_at', 'N/A')}")
            if 'expires_at' in cache:
                remaining = int(cache['expires_at'] - time.time())
                status = "有效" if remaining > 0 else "已过期"
                print(f"  剩余时间: {remaining}秒 ({status})")
                print(f"  到期时间: {datetime.fromtimestamp(cache['expires_at']).strftime('%Y-%m-%d %H:%M:%S')}")
        else:
            print("无缓存记录")
        return 0

    try:
        token = get_token(config, force_refresh=args.force)
        print(f"\n最终token: {token}")
        return 0
    except Exception as e:
        print(f"错误: {e}")
        return 1


if __name__ == '__main__':
    exit(main())
#!/usr/bin/env python3
"""
审核发货单接口
自动管理token（从cache.json读取，过期自动刷新）
"""

import json
import time
import requests
from pathlib import Path
from datetime import datetime
from typing import Optional

# 忽略SSL警告
try:
    import urllib3
    urllib3.disable_warnings()
except:
    pass


# API配置
API_BASE_URL = "https://api.yonyouup.com"
AUDIT_URL = f"{API_BASE_URL}/api/consignment/unverify"
TOKEN_URL = f"{API_BASE_URL}/system/token"
CACHE_FILE = Path(__file__).parent / "cache.json"
CONFIG_FILE = Path(__file__).parent / "config.json"


def load_config() -> dict:
    """从config.json加载配置"""
    if not CONFIG_FILE.exists():
        raise FileNotFoundError(f"配置文件不存在: {CONFIG_FILE}")

    with open(CONFIG_FILE, 'r', encoding='utf-8') as f:
        config = json.load(f)

    required_keys = ['from_account', 'app_key', 'app_secret', 'user_id', 'password']
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

    # 预留60秒缓冲时间
    return time.time() < (cache['expires_at'] - 60)


def refresh_token(config: dict) -> str:
    """刷新token"""
    params = {
        'from_account': config['from_account'],
        'app_key': config['app_key'],
        'app_secret': config['app_secret']
    }

    print(f"正在刷新token...")
    response = requests.get(TOKEN_URL, params=params, timeout=30)
    response.raise_for_status()

    result = response.json()

    if str(result.get('errcode')) != '0':
        raise Exception(f"刷新token失败: {result.get('errmsg')} (errcode: {result.get('errcode')})")

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

    save_cache(cache)
    print(f"token刷新成功: {cache['id'][:20]}...")
    return cache['id']


def erp_login(config: dict = None) -> bool:
    """调用ERP登录接口"""
    if config is None:
        config = load_config()

    token = get_token(config)

    params = {
        'from_account': config['from_account'],
        'to_account': 'mansheng',
        'app_key': config['app_key'],
        'token': token
    }

    body = {
        "user": {
            "user_id": str(config['user_id']),
            "password": str(config.get('password', ''))
        }
    }

    print(f"\n===== ERP登录 =====")
    print(f"请求body: {json.dumps(body, ensure_ascii=False)}")
    print(f"user_id: {config['user_id']}")
    print(f"URL: {API_BASE_URL}/api/user/login")

    response = requests.post(f"{API_BASE_URL}/api/user/login", params=params, json=body, timeout=30)
    response.raise_for_status()

    result = response.json()

    if str(result.get('errcode')) == '0':
        print("ERP登录成功!")
        return True
    else:
        print(f"ERP登录失败: {result.get('errmsg')} (errcode: {result.get('errcode')})")
        return False


def get_token(config: dict = None, force_refresh: bool = False) -> str:
    """获取token（自动管理缓存和刷新）"""
    if config is None:
        config = load_config()

    cache = load_cache()

    if not force_refresh and is_token_valid(cache):
        remaining = int(cache['expires_at'] - time.time())
        print(f"使用缓存token，剩余有效期: {remaining}秒")
        return cache['id']

    return refresh_token(config)


def audit_consignment(
    voucher_code: str,
    agree: int = 1,
    opinion: str = "",
    to_account: str = "mansheng",
    ds_sequence: int = None
) -> dict:
    """审核发货单

    Args:
        voucher_code: 单据编号
        agree: 是否同意 (1=同意; 0=不同意)
        opinion: 审批意见
        to_account: 提供方id
        ds_sequence: 数据源序号

    Returns:
        API响应字典
    """
    config = load_config()

    # ERP登录
    if not erp_login(config):
        return {'errcode': 'LOGIN_FAILED', 'errmsg': 'ERP登录失败'}

    # 获取token（自动刷新）
    token = get_token(config)

    # 构建URL参数
    params = {
        'from_account': config['from_account'],
        'app_key': config['app_key'],
        'token': token
    }

    if to_account:
        params['to_account'] = to_account

    if ds_sequence is not None:
        params['ds_sequence'] = ds_sequence

    # 构建请求体（使用user_id而非person_code）
    body = {
        "consignment": {
            "voucher_code": str(voucher_code),
            "user_id": str(config['user_id']),
            "agree": str(agree),
            "opinion": str(opinion)
        }
    }

    print(f"\n===== 审核发货单 =====")
    print(f"请求body: {json.dumps(body, ensure_ascii=False)}")
    print(f"单据编号: {voucher_code}")
    print(f"审批人: {config['user_id']}")
    print(f"审批意见: {opinion or '(无)'}")
    print(f"是否同意: {'是' if agree == 1 else '否'}")
    print(f"URL: {AUDIT_URL}")

    response = requests.post(AUDIT_URL, params=params, json=body, timeout=30)
    response.raise_for_status()

    result = response.json()

    errcode = result.get('errcode')
    errmsg = result.get('errmsg', '')

    if errcode == '0':
        print(f"审核成功! errcode: {errcode}")
    else:
        print(f"审核失败! errcode: {errcode}, errmsg: {errmsg}")

        # token无效时自动刷新重试
        if errcode in ('30001', '30002', '30003', '30007'):
            print("token可能已过期，尝试刷新...")
            token = get_token(config, force_refresh=True)
            params['token'] = token

            response = requests.post(AUDIT_URL, params=params, json=body, timeout=30)
            response.raise_for_status()
            result = response.json()

            errcode = result.get('errcode')
            errmsg = result.get('errmsg', '')

            if errcode == '0':
                print(f"重试审核成功!")
            else:
                print(f"重试审核失败! errcode: {errcode}, errmsg: {errmsg}")

    return result


def batch_audit(
    voucher_codes: list,
    agree: int = 1,
    opinion: str = "",
    to_account: str = "mansheng"
) -> list:
    """批量审核发货单

    Args:
        voucher_codes: 单据编号列表
        agree: 是否同意
        opinion: 审批意见
        to_account: 提供方id

    Returns:
        结果列表
    """
    results = []

    print(f"\n===== 批量审核 =====")
    print(f"单据数量: {len(voucher_codes)}")
    print()

    for idx, voucher_code in enumerate(voucher_codes, 1):
        print(f"\n[{idx}/{len(voucher_codes)}] 处理: {voucher_code}")

        try:
            result = audit_consignment(
                voucher_code=voucher_code,
                agree=agree,
                opinion=opinion,
                to_account=to_account
            )
            results.append({
                'voucher_code': voucher_code,
                'success': result.get('errcode') == '0',
                'result': result
            })
        except Exception as e:
            print(f"处理异常: {e}")
            results.append({
                'voucher_code': voucher_code,
                'success': False,
                'error': str(e)
            })

    # 打印汇总
    success_count = sum(1 for r in results if r['success'])
    print(f"\n===== 批量审核完成 =====")
    print(f"成功: {success_count}/{len(results)}")

    return results


def main():
    """主函数"""
    import argparse

    parser = argparse.ArgumentParser(description='审核发货单')
    parser.add_argument('--voucher-code', '-v', help='单据编号')
    parser.add_argument('--agree', '-a', type=int, default=1, choices=[0, 1], help='是否同意 (1=同意; 0=不同意)')
    parser.add_argument('--opinion', '-o', default='', help='审批意见')
    parser.add_argument('--to-account', '-t', default='mansheng', help='提供方id')
    parser.add_argument('--batch', '-b', help='批量审核，指定包含单据编号的文件路径或逗号分隔的编号列表')
    parser.add_argument('--ds-sequence', '-d', type=int, help='数据源序号')

    args = parser.parse_args()

    try:
        config = load_config()
    except FileNotFoundError as e:
        print(f"错误: {e}")
        return 1

    # 批量模式
    if args.batch:
        voucher_codes = []

        if Path(args.batch).exists():
            # 从文件读取
            with open(args.batch, 'r', encoding='utf-8') as f:
                voucher_codes = [line.strip() for line in f if line.strip()]
        else:
            # 逗号分隔
            voucher_codes = [code.strip() for code in args.batch.split(',') if code.strip()]

        if not voucher_codes:
            print("错误: 未找到单据编号")
            return 1

        results = batch_audit(
            voucher_codes=voucher_codes,
            agree=args.agree,
            opinion=args.opinion,
            to_account=args.to_account
        )

        # 返回失败数量作为退出码
        failed = len(results) - sum(1 for r in results if r['success'])
        return failed

    # 单个模式
    if not args.voucher_code:
        print("错误: 请指定 --voucher-code")
        return 1

    try:
        result = audit_consignment(
            voucher_code=args.voucher_code,
            agree=args.agree,
            opinion=args.opinion,
            to_account=args.to_account,
            ds_sequence=args.ds_sequence
        )

        return 0 if result.get('errcode') == '0' else 1

    except Exception as e:
        print(f"错误: {e}")
        return 1


if __name__ == '__main__':
    exit(main())
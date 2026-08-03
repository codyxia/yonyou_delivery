import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // 纯前端应用，导出纯静态 out/，可部署到任意静态托管
  output: "export",
};

export default nextConfig;

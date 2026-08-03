import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import Script from "next/script";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "用友 U8 发货单 SQL 生成器",
  description: "上传发货单 Excel（.xls/.xlsx）或压缩包，在浏览器本地生成 T-SQL 脚本并打包下载",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html
      lang="zh-CN"
      className={`${geistSans.variable} ${geistMono.variable} h-full antialiased`}
    >
      <body className="min-h-full flex flex-col">
        {children}
        {/* SheetJS 仅在前端运行，通过脚本标签加载，避免打包器/SSR 解析 Node 内置模块 */}
        <Script
          src="/vendor/xlsx.full.min.js"
          strategy="beforeInteractive"
        />
      </body>
    </html>
  );
}

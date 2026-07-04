#!/usr/bin/env bash
# 一键部署到 GitHub Pages。用法：先在 github.com 建好 public 仓库
# Serendipity-r.github.io（不要勾 README），然后在本文件夹运行 ./deploy.sh
set -e
cd "$(dirname "$0")"
git add -A
git commit -m "update homepage" || echo "（没有新改动，跳过 commit）"
git branch -M main
git push -u origin main
echo ""
echo "✅ 推送完成！接着去仓库 Settings → Pages → Source 选 main / root 保存。"
echo "   约 1 分钟后访问：https://serendipity-r.github.io"

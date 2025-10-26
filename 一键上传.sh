#!/bin/bash

echo "========================================"
echo "   📝 一键更新并上传到 GitHub"
echo "========================================"
echo ""
echo "🔍 检测更改中..."
echo ""

# 显示有哪些文件被修改了
git status --short

echo ""
echo "========================================"
read -p "请输入更新说明（例如：更新案例001、添加案例002）: " commit_msg

# 如果没有输入，使用默认信息
if [ -z "$commit_msg" ]; then
    commit_msg="更新学习笔记 $(date +%Y-%m-%d)"
fi

echo ""
echo "[1/4] 📝 暂存所有更改..."
git add .

echo ""
echo "[2/4] ✅ 提交更改..."
git commit -m "$commit_msg"

echo ""
echo "[3/4] 🌍 拉取远程更新..."
git pull origin main

echo ""
echo "[4/4] 🚀 推送到 GitHub..."
git push origin main

echo ""
echo "========================================"
echo "✨ 上传完成！"
echo "📱 网站将在 1-2 分钟后自动更新"
echo "🌐 访问: https://loveai77777.github.io/n8n-learning/"
echo "========================================"
echo ""
echo "💡 提示：如果有新案例，记得更新 index.html 中的案例列表！"
echo ""
read -p "按任意键退出..."

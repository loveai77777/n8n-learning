#!/bin/bash

echo "========================================"
echo "   N8N 学习笔记 - 自动上传到 GitHub"
echo "========================================"
echo ""

# 提示输入提交信息
read -p "请输入今天学习的内容描述（例如：添加案例002，直接回车使用默认）: " commit_msg

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
echo "[3/4] 🌍 获取远程更新..."
git pull origin main

echo ""
echo "[4/4] 🚀 推送到 GitHub..."
git push origin main

echo ""
echo "========================================"
echo "✨ 上传完成！你的笔记已经保存到 GitHub"
echo "========================================"
echo ""
read -p "按任意键退出..."

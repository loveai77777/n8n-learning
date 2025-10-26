#!/bin/bash

echo "========================================"
echo "   📁 创建新案例文件夹"
echo "========================================"
echo ""

# 获取案例编号
read -p "请输入案例编号（如：002）: " case_number

# 获取案例名称
read -p "请输入案例名称（如：数据同步）: " case_name

# 创建文件夹
folder_name="${case_number}-${case_name}"
full_path="cases/${folder_name}"

echo ""
echo "📁 正在创建文件夹: ${full_path}"
mkdir -p "${full_path}"

if [ -d "${full_path}" ]; then
    echo "✅ 文件夹创建成功！"
    echo ""
    echo "📝 接下来的步骤："
    echo "   1. 把今天的 HTML 文件复制到这个文件夹"
    echo "   2. 重命名为: index.html"
    echo "   3. 双击"一键上传.sh"上传到 GitHub"
    echo ""
    echo "📂 文件夹位置: $(pwd)/${full_path}"
    echo ""
    
    # 在 Mac 上打开文件夹
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open "${full_path}"
    else
        # Linux 上使用 xdg-open
        xdg-open "${full_path}" 2>/dev/null || echo "请手动打开文件夹"
    fi
else
    echo "❌ 文件夹创建失败"
fi

echo ""
read -p "按任意键退出..."

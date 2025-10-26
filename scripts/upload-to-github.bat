@echo off
chcp 65001 >nul
echo ========================================
echo    N8N 学习笔记 - 自动上传到 GitHub
echo ========================================
echo.

REM 提示输入提交信息
set /p commit_msg="请输入今天学习的内容描述（例如：添加案例002）: "

REM 如果没有输入，使用默认信息
if "%commit_msg%"=="" set commit_msg=更新学习笔记 %date%

echo.
echo [1/4] 📝 暂存所有更改...
git add .

echo.
echo [2/4] ✅ 提交更改...
git commit -m "%commit_msg%"

echo.
echo [3/4] 🌍 获取远程更新...
git pull origin main

echo.
echo [4/4] 🚀 推送到 GitHub...
git push origin main

echo.
echo ========================================
echo ✨ 上传完成！你的笔记已经保存到 GitHub
echo ========================================
echo.
pause

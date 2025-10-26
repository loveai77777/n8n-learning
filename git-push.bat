@echo off
echo ========================================
echo    Git Push Script - Upload to GitHub
echo ========================================
echo.
echo Checking changes...
echo.

git status --short

echo.
echo ========================================
set /p commit_msg="Enter commit message (e.g., update case 001): "

if "%commit_msg%"=="" set commit_msg=Update notes %date%

echo.
echo [1/4] Staging changes...
git add .

echo.
echo [2/4] Committing...
git commit -m "%commit_msg%"

echo.
echo [3/4] Pulling updates...
git pull origin main

echo.
echo [4/4] Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo Upload completed!
echo Your website will update in 1-2 minutes.
echo Visit: https://loveai77777.github.io/n8n-learning/
echo ========================================
echo.
pause

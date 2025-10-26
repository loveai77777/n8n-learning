@echo off
echo ========================================
echo    Create New Case Folder
echo ========================================
echo.

set /p case_number="Enter case number (e.g., 002): "
set /p case_name="Enter case name (e.g., email-auto-reply): "

set folder_name=%case_number%-%case_name%
set full_path=cases\%folder_name%

echo.
echo Creating folder: %full_path%
mkdir "%full_path%" 2>nul

if exist "%full_path%" (
    echo Folder created successfully!
    echo.
    echo Next steps:
    echo    1. Copy your HTML file to this folder
    echo    2. Rename it to: index.html
    echo    3. Run git-push.bat to upload
    echo.
    echo Folder location: %cd%\%full_path%
    echo.
    explorer "%full_path%"
) else (
    echo Failed to create folder
)

echo.
pause

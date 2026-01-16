@echo off
echo ========================================
echo    快速解决方案：Git安装修复脚本
echo ========================================
echo.

echo [1/4] 正在检查Git安装状态...

REM 检查Git是否在常见位置
set GIT_FOUND=0

if exist "C:\Program Files\Git\cmd\git.exe" (
    echo 找到Git: C:\Program Files\Git\cmd\git.exe
    set "PATH=%PATH%;C:\Program Files\Git\cmd"
    set GIT_FOUND=1
) else if exist "C:\Git\cmd\git.exe" (
    echo 找到Git: C:\Git\cmd\git.exe
    set "PATH=%PATH%;C:\Git\cmd"
    set GIT_FOUND=1
) else (
    echo 未在常见位置找到Git
)

echo.

if %GIT_FOUND%==0 (
    echo [2/4] Git未找到，建议使用Git Bash
    echo 请按以下步骤操作：
    echo.
    echo 1. 按Win键，搜索"Git Bash"
    echo 2. 打开Git Bash
    echo 3. 运行以下命令：
    echo.
    echo    cd "e:\vibe coding\pindou_web"
    echo    git init
    echo    git add .
    echo    git commit -m "Initial commit"
    echo    git remote add origin https://github.com/USERNAME/pindou-pattern-generator.git
    echo    git branch -M main
    echo    git push -u origin main
    echo.
    goto :end
)

echo [3/4] 正在测试Git命令...
git --version
if %errorlevel% neq 0 (
    echo Git命令仍然不可用
    goto :end
)

echo ✓ Git现在可以使用了！
echo.

echo [4/4] 现在可以运行Git命令了：
echo.
echo 初始化仓库：
echo     git init
echo     git add .
echo     git commit -m "Initial commit: Complete Perler bead pattern generator"
echo.
echo 推送到GitHub：
echo     git remote add origin https://github.com/USERNAME/pindou-pattern-generator.git
echo     git branch -M main
echo     git push -u origin main
echo.

:end
echo.
echo 或者，您也可以使用GitHub Web界面直接上传文件：
echo 1. 访问您的GitHub仓库
echo 2. 点击"uploading an existing file"
echo 3. 拖拽所有文件到浏览器
echo 4. 提交消息："Initial commit"
echo.
pause
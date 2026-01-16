@echo off
echo ========================================
echo    拼豆图案生成器 - Git 部署脚本
echo ========================================
echo.

echo [1/4] 正在检查Git安装...
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo 错误: Git未安装或未添加到PATH
    echo 请先安装Git: https://git-scm.com/download/win
    echo 安装后请重新运行此脚本
    pause
    exit /b 1
)

echo Git已安装，版本信息：
git --version
echo.

echo [2/4] 正在初始化Git仓库...
git init
if %errorlevel% neq 0 (
    echo 错误: Git初始化失败
    pause
    exit /b 1
)
echo ✓ Git仓库初始化完成
echo.

echo [3/4] 正在添加文件到Git...
git add .
if %errorlevel% neq 0 (
    echo 错误: 添加文件失败
    pause
    exit /b 1
)
echo ✓ 文件已添加到暂存区
echo.

echo [4/4] 正在提交代码...
git commit -m "Initial commit: Complete Perler bead pattern generator with Vercel deployment"
if %errorlevel% neq 0 (
    echo 错误: 代码提交失败
    pause
    exit /b 1
)
echo ✓ 代码提交完成
echo.

echo ========================================
echo    Git 仓库初始化完成！
echo ========================================
echo.
echo 下一步:
echo 1. 在GitHub上创建新仓库 (https://github.com/new)
echo 2. 仓库名称: pindou-pattern-generator
echo 3. 运行以下命令推送代码:
echo.
echo    git remote add origin https://github.com/YOUR_USERNAME/pindou-pattern-generator.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 完成后请参考 deploy-to-vercel.md 进行Vercel部署
echo.
pause
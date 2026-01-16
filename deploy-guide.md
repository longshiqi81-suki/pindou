# 拼豆图案生成器 - GitHub & Vercel 部署指南

## 🚀 项目概述

这是拼豆图案生成器的完整部署指南，将指导您完成从代码到云端部署的全过程。

## 📁 项目文件结构

```
pindou_web/
├── pindou.html          # 主应用文件
├── perler_packages_rgb.txt # 拼豆颜色数据
├── README.md            # 项目说明
├── .gitignore          # Git忽略文件
└── deploy-guide.md     # 部署指南
```

## 🔧 GitHub 部署步骤

### 1. 手动创建 GitHub 仓库

1. 访问 [GitHub](https://github.com)
2. 点击 "New repository"
3. 仓库名称：`pindou-pattern-generator`
4. 描述：`A professional online Perler bead pattern generator`
5. 选择 Public 或 Private
6. 点击 "Create repository"

### 2. 初始化本地 Git 仓库

```bash
# 导航到项目目录
cd pindou_web

# 初始化Git仓库
git init

# 添加文件到暂存区
git add .

# 提交代码
git commit -m "Initial commit: Complete Perler bead pattern generator"

# 添加远程仓库 (替换YOUR_USERNAME为您的GitHub用户名)
git remote add origin https://github.com/YOUR_USERNAME/pindou-pattern-generator.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

### 3. 验证 GitHub 仓库

访问 `https://github.com/YOUR_USERNAME/pindou-pattern-generator` 确认代码已上传。

## 🌐 Vercel 部署步骤

### 1. 创建 Vercel 账户

1. 访问 [Vercel](https://vercel.com)
2. 使用 GitHub 账户登录或注册

### 2. 导入 GitHub 项目

1. 在 Vercel 控制台中点击 "New Project"
2. 选择 "Import Git Repository"
3. 找到您的 `pindou-pattern-generator` 仓库
4. 点击 "Import"

### 3. 配置部署设置

**构建设置：**
- Framework Preset: **Other**
- Build Command: *留空* (静态文件无需构建)
- Output Directory: *留空*
- Install Command: *留空*

**环境变量：**
- 无需设置环境变量

### 4. 部署项目

1. 点击 "Deploy"
2. 等待部署完成（约1-2分钟）
3. 获取您的公共URL

## 🎯 部署配置详解

### Vercel 特殊配置

由于这是一个纯静态HTML项目，Vercel会自动检测并配置为静态站点托管。

### 域名配置（可选）

1. 在 Vercel 项目设置中
2. 点击 "Domains" 标签
3. 添加自定义域名（如果需要）

## ✅ 验证部署

### 检查清单

- [ ] GitHub 仓库创建成功
- [ ] 代码成功推送到 GitHub
- [ ] Vercel 项目导入成功
- [ ] 部署状态显示 "Ready"
- [ ] 网站 URL 可正常访问
- [ ] 图片上传功能正常
- [ ] 图案生成功能正常
- [ ] 颜色统计功能正常

### 功能测试

1. **图片上传测试**
   - 上传一张JPG/PNG图片
   - 确认图片正常显示

2. **参数调节测试**
   - 调整网格尺寸
   - 更改颜色系统
   - 修改颜色容差

3. **图纸生成测试**
   - 点击生成按钮
   - 确认图纸正常显示
   - 检查颜色统计

4. **保存打印测试**
   - 测试图纸保存功能
   - 测试打印预览功能

## 🔧 故障排除

### 常见问题

1. **Git 命令不可用**
   - 重新启动终端
   - 重启计算机
   - 手动安装 Git for Windows

2. **Vercel 部署失败**
   - 检查仓库是否为 Public
   - 确认文件结构正确
   - 查看 Vercel 部署日志

3. **网站无法访问**
   - 检查域名DNS设置
   - 确认 HTTPS 证书
   - 验证 Vercel 部署状态

### 日志查看

```bash
# 查看 Vercel 部署日志
vercel logs

# 查看本地构建日志
npm run build
```

## 📊 性能优化建议

1. **图片压缩**：上传前压缩图片以提高处理速度
2. **网格尺寸**：建议使用 50x50 到 100x100 之间的尺寸
3. **颜色容差**：适当调整以平衡准确性和美观性

## 🚀 后续维护

### 代码更新

```bash
# 修改代码后
git add .
git commit -m "Update feature description"
git push origin main
```

Vercel 会自动检测到更新并重新部署。

### 版本管理

- 使用 Git tags 标记重要版本
- 定期备份项目文件
- 监控 Vercel 使用情况

---

## 🎉 完成！

恭喜！您的拼豆图案生成器现在已经成功部署到云端！

**访问地址：** `https://your-project-name.vercel.app`

享受云端拼豆创作吧！🎨✨
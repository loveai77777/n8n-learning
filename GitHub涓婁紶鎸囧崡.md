# 📚 N8N 学习笔记 - GitHub 自动上传指南

## 🎯 目标
让你每天的 N8N 课程笔记自动上传到 GitHub，随时随地都能查看！

---

## 第一步：首次设置（只需做一次）

### 1.1 在 GitHub 创建仓库

1. 打开 https://github.com
2. 点击右上角 **"+"** → **"New repository"**
3. 填写信息：
   - Repository name: `n8n-learning` （或你喜欢的名字）
   - Description: `我的N8N自动化学习笔记`
   - 选择 **Public**（公开）或 **Private**（私有）
   - ✅ 勾选 **"Add a README file"**
4. 点击 **"Create repository"**

### 1.2 克隆仓库到本地

**方法 A：使用 VS Code（推荐）**

1. 打开 VS Code
2. 按 `Ctrl+Shift+P` (Windows) 或 `Cmd+Shift+P` (Mac)
3. 输入 `Git: Clone`
4. 粘贴你的仓库地址：`https://github.com/你的用户名/n8n-learning.git`
5. 选择保存位置（比如：`C:\Projects\` 或 `~/Projects/`）
6. 点击 **"Open"** 打开这个文件夹

**方法 B：使用命令行**

```bash
# 打开终端，进入你想保存的目录
cd ~/Documents

# 克隆仓库
git clone https://github.com/你的用户名/n8n-learning.git

# 进入文件夹
cd n8n-learning

# 用 VS Code 打开
code .
```

### 1.3 配置 Git（如果是第一次使用）

在 VS Code 的终端中输入：

```bash
git config --global user.name "你的名字"
git config --global user.email "你的邮箱@example.com"
```

---

## 第二步：创建文件夹结构

在你的 `n8n-learning` 文件夹中创建以下结构：

```
n8n-learning/
├── README.md                 # 主页说明
├── cases/                    # 案例文件夹
│   ├── 001-producthunt/     # 第一个案例
│   │   └── index.html
│   ├── 002-xxxx/            # 第二个案例
│   │   └── index.html
│   └── ...
├── images/                   # 截图文件夹
│   ├── case-001.png
│   └── ...
└── index.html               # 总目录页面
```

---

## 第三步：每天上传的简单方法

### 方法 1：VS Code 图形界面（最简单！）⭐

1. **把今天的文件复制到相应文件夹**
   - 例如：把 `n8n-case-study.html` 复制到 `cases/001-producthunt/index.html`

2. **在 VS Code 左侧点击"源代码管理"图标**（或按 `Ctrl+Shift+G`）

3. **你会看到修改的文件**
   - 点击文件旁边的 **"+"** 号（暂存更改）

4. **在上方输入框输入提交信息**
   - 例如：`添加案例001：ProductHunt自动采集`

5. **点击 ✓ "提交"按钮**

6. **点击 "同步更改"** 或点击底部状态栏的 ↑↓ 图标

✅ **完成！** 你的文件已经上传到 GitHub 了！

### 方法 2：使用自动化脚本（最快！）⭐⭐⭐

我会为你创建一个脚本，双击就能上传！

---

## 第四步：查看你的笔记

### 在线查看

1. 打开你的 GitHub 仓库：`https://github.com/你的用户名/n8n-learning`
2. 点击任何 HTML 文件
3. 点击 **"Raw"** 按钮查看原始文件
4. 或者使用 GitHub Pages（下面会讲）

### 使用 GitHub Pages（推荐！）

1. 在 GitHub 仓库页面，点击 **"Settings"**
2. 左侧找到 **"Pages"**
3. 在 "Source" 下选择 **"main"** 分支
4. 点击 **"Save"**
5. 等待几分钟，你会得到一个网址：
   - `https://你的用户名.github.io/n8n-learning/`

现在你可以通过这个网址随时查看你的笔记了！📚

---

## 常见问题 Q&A

### Q1: 我忘记 GitHub 密码怎么办？
**A:** 使用 Personal Access Token（个人访问令牌）
1. GitHub → Settings → Developer settings → Personal access tokens → Generate new token
2. 勾选 `repo` 权限
3. 复制生成的 token
4. 在推送时使用 token 作为密码

### Q2: 每次都要输入用户名密码太麻烦？
**A:** 设置凭证缓存：
```bash
git config --global credential.helper store
```
第一次输入后，以后就不用再输入了！

### Q3: 文件太大无法上传？
**A:** GitHub 单个文件限制 100MB
- 对于大文件，使用 Git LFS
- 或者使用压缩包
- 或者使用外部图床（图片）

### Q4: 如何删除已上传的文件？
**A:** 
1. 在本地删除文件
2. 在 VS Code 源代码管理中提交
3. 同步到 GitHub

### Q5: 想要回到之前的版本？
**A:** 
1. 点击 VS Code 底部的分支名
2. 选择 "Create new branch from..."
3. 或者在 GitHub 网页上查看历史提交

---

## 📌 日常工作流程（只需 30 秒！）

```
1. 💾 保存今天的 HTML 文件到对应文件夹
2. 📝 VS Code → 源代码管理 → 暂存所有更改（点 + 号）
3. ✍️  输入提交信息：例如 "添加案例002"
4. ✅ 点击"提交"
5. 🚀 点击"同步更改"
```

**完成！** 🎉

---

## 💡 高级技巧

### 自动生成目录页
每次添加新案例后，自动更新 `index.html` 显示所有案例列表。

### 添加搜索功能
在主页添加搜索框，快速找到特定案例。

### 导出 PDF
使用浏览器打印功能，将 HTML 另存为 PDF 备份。

### 自动备份
设置定时任务，每天自动提交到 GitHub。

---

## 🎯 总结

- ✅ **首次设置**：10分钟
- ✅ **日常上传**：30秒（3步点击）
- ✅ **永久保存**：GitHub 免费无限期
- ✅ **随时查看**：通过 GitHub Pages 在线访问
- ✅ **版本控制**：可以回到任何历史版本

**现在开始你的 N8N 学习之旅吧！** 🚀

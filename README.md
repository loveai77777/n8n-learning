# 🎓 N8N 自动化学习笔记

> 记录我的 N8N 学习之旅，每天一个案例，构建自动化思维

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-在线查看-blue)](https://你的用户名.github.io/n8n-learning/)
[![案例数量](https://img.shields.io/badge/案例-1-green)]()
[![持续更新](https://img.shields.io/badge/状态-持续更新-brightgreen)]()

## 📚 项目简介

这是我学习 N8N 自动化工作流的笔记仓库。每天学习一个实际案例，深入理解每个节点的原理、参数配置和应用场景。

## 🎯 学习目标

- ✅ 掌握 N8N 的核心节点和使用方法
- ✅ 理解自动化工作流的设计思维
- ✅ 能够独立设计和实现自动化方案
- ✅ 积累实战经验和最佳实践

## 📖 案例列表

### [案例 #001 - ProductHunt 产品自动采集](./cases/001-producthunt/)
- **日期**: 2025-10-26
- **节点**: Cron, RSS Feed, Code, Convert to File, Write File
- **场景**: 定时采集、数据处理、文件存储
- **难度**: ⭐⭐☆☆☆

<!-- 
### [案例 #002 - 标题](./cases/002-xxx/)
- **日期**: 2025-10-27
- **节点**: ...
- **场景**: ...
- **难度**: ⭐⭐⭐☆☆
-->

## 🗂️ 项目结构

```
n8n-learning/
├── README.md                 # 项目说明
├── index.html                # 在线主页
├── cases/                    # 案例文件夹
│   ├── 001-producthunt/     # 案例 001
│   │   ├── index.html       # 案例详细讲解
│   │   └── images/          # 相关截图
│   ├── 002-xxx/             # 案例 002
│   └── ...
├── images/                   # 公共图片
└── scripts/                  # 辅助脚本
    ├── upload-to-github.bat  # Windows 上传脚本
    └── upload-to-github.sh   # Mac/Linux 上传脚本
```

## 🚀 快速开始

### 在线查看
访问 [GitHub Pages](https://你的用户名.github.io/n8n-learning/) 查看所有案例

### 本地运行
```bash
git clone https://github.com/你的用户名/n8n-learning.git
cd n8n-learning
# 直接用浏览器打开 index.html
```

## 💻 使用自动上传脚本

### Windows 用户
1. 双击 `scripts/upload-to-github.bat`
2. 输入今天的更新说明
3. 等待上传完成

### Mac/Linux 用户
1. 给脚本添加执行权限：`chmod +x scripts/upload-to-github.sh`
2. 运行脚本：`./scripts/upload-to-github.sh`
3. 输入今天的更新说明
4. 等待上传完成

## 📝 更新案例的步骤

1. **创建案例文件夹**
   ```bash
   mkdir -p cases/002-案例名称
   ```

2. **添加案例文件**
   - 将 HTML 文件保存为 `index.html`
   - 添加相关截图到 `images/` 文件夹

3. **更新主页**
   - 编辑 `index.html` 中的 `cases` 数组
   - 添加新案例的信息

4. **提交到 GitHub**
   - 使用自动上传脚本
   - 或手动执行 `git add .` → `git commit` → `git push`

## 🎨 案例模板

每个案例包含以下内容：
- 📷 工作流截图
- 🎯 工作流目的和应用场景
- 🔧 每个节点的详细讲解
- 💡 参数设置的原理说明
- 📚 常见应用场景
- 🔄 举一反三的扩展案例
- 🚀 优化建议

## 🌟 学习资源

- [N8N 官方文档](https://docs.n8n.io/)
- [N8N 社区](https://community.n8n.io/)
- [N8N GitHub](https://github.com/n8n-io/n8n)
- [N8N 工作流模板](https://n8n.io/workflows/)

## 📊 学习进度

- 📅 开始日期: 2025-10-26
- 📚 已完成案例: 1
- 🔧 掌握节点: 5
- ⏰ 学习天数: 1

## 🤝 贡献

这是我的个人学习笔记，但欢迎提供建议和反馈！

如果你发现任何问题或有改进建议：
1. 提交 Issue
2. 或者直接提交 Pull Request

## 📄 许可

MIT License - 自由使用和分享

## 📮 联系方式

- GitHub: [@你的用户名](https://github.com/你的用户名)
- Email: 你的邮箱@example.com

---

⭐ 如果这个项目对你有帮助，请给个 Star 支持一下！

💪 持续学习，不断进步！

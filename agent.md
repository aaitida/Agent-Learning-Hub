# Agent Learning Hub 总览

## 仓库目标

这个仓库的核心目标，是把 AI Agent 学习路径整理成一份可执行、可打勾、可落地的 roadmap，而不是单纯堆链接。

它强调的不是“花哨的多智能体演示”，而是更接近真实生产的能力：

- 最小 agent loop
- 工具调用
- RAG 与引用
- 长期记忆
- 上下文压缩
- harness engineering
- 权限与安全边界
- 评测与可观测性
- skills / MCP / A2A / ACP 等能力封装与协议

## 仓库结构

### `README.md`

仓库主入口，README-first。包含：

- 学习目标
- Stage 0 到 Stage 8 的学习路径
- 项目阶梯 `Project Ladder`
- 精选资源列表
- 学习原则与贡献原则

### `stage-1/`

最小 Agent Loop 教程。

核心内容：

- LLM 普通对话
- 结构化 JSON 输出
- 工具 schema 定义
- tool call 解析与执行
- agent loop
- 最大步数、超时、错误处理

最终产出：

- 一个 50 到 150 行的最小 agent

### `stage-2/`

在 Stage 1 之上加入工具使用、RAG 和记忆。

核心内容：

- RAGFlow：chunk / embed / retrieve / answer with citations
- mem0：长期记忆
- Letta：上下文压缩与长对话管理
- 短期上下文、会话记忆、长期记忆的区分
- 失败处理、空结果、幻觉引用控制

最终产出：

- 一个带引用的资料研究助手

### `stage-3/claude-code-source-code/`

Claude Code v2.1.88 的源码分析仓库。

核心内容：

- Claude Code 的 CLI / query engine / tool system / permission flow
- 40+ 工具与权限链路
- subagents、hooks、MCP、skills、context compaction
- telemetry、remote control、feature flags、killswitches
- 深度分析文档：隐私、隐藏功能、卧底模式、远程控制、未来路线图

它更像一份“现代 coding agent harness 的研究样本”，不是教学脚本。

## 主学习路线

### Stage 0

先理解什么是 agent：

- chatbot、workflow、agent、多 agent 的区别
- observe -> think -> act -> observe 循环
- 什么时候不该用 agent

### Stage 1

先做出最小可运行 agent：

- 会调 API
- 会输出 JSON
- 会定义工具
- 会执行工具并把结果喂回模型
- 会循环直到任务结束

### Stage 2

继续做工具增强型 agent：

- 外部知识检索
- 用户记忆
- 长上下文管理
- 带引用回答

### Stage 3

研究一个现代 harness：

- 目录结构
- 工具注册
- 权限门控
- 会话存储
- 状态压缩
- trace / replay / safety

## 项目阶梯

仓库把实战目标拆成多个层级：

1. Calculator Agent
2. Web Research Agent
3. PDF QA Agent
4. Coding Review Agent
5. Browser Agent
6. Claude Code-like Nano Agent
7. OpenClaw-like Gateway
8. Reusable Skill Pack
9. Multi-Agent Writer
10. Personal Agent
11. Production Harness

这个阶梯的意图很明确：先做小而稳的 agent，再逐步把工程能力、记忆、协议和安全边界补齐。

## 资源选择原则

仓库不鼓励“无脑刷链接”，而是按用途选资源：

- 官方文档优先
- 可运行开源项目优先
- 真实工程经验优先
- 高质量论文和 benchmark 优先
- 小而明确的项目优先

要避免：

- 低质量社媒搬运
- 付费课广告
- 无法验证的资料
- 诱导绕过平台规则的内容

## 核心判断标准

这个仓库反复强调的判断标准是：

- 先做出能跑的最小 agent，再加功能
- 先 trace，再扩展复杂度
- 先 eval，再加更多 agent
- 多 agent 不是魔法，本质是协调问题
- 工具必须有严格 schema 和权限边界
- 风险操作必须保留人工确认

## 对 agent 的使用建议

如果你要把这个仓库当成 agent 学习资料，推荐顺序是：

1. 先读 `README.md`
2. 再按 `stage-1/README.md` 跑最小 loop
3. 再按 `stage-2/README.md` 加 RAG 和记忆
4. 最后看 `stage-3/claude-code-source-code/README.md` 学 harness

如果你要修改仓库内容，优先遵守：

- README-first
- 高信号、低噪音
- 资料可验证
- 目标明确
- 不把仓库改成链接垃圾场


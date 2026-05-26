# 15 周 GitHub 贡献冲刺手册

目标：2026-09-05 前贡献数 **>200**（当前 ~44，需新增 ~156）。

## 每日节奏（工作日 ~45 分钟）

| 时段 | 动作 | 计入贡献 |
|------|------|----------|
| 固定时段 | 1 次 Agent-Learning-Hub commit → main | ✓ commit |
| 周三 | 对外开源 PR 或 issue | ✓ PR/issue |
| 周五 | 对外开源 PR 或 code review | ✓ PR/review |

周末：周六推进 Fork 钩子功能；周日运行 `./scripts/milestone_check.sh` 填周报。

## 每周配额（11 次/周）

| 类型 | 目标 | 示例 |
|------|------|------|
| Hub 功能 commit | 5–7 | 文档、脚本、stage 改进 |
| 对外 PR | 2–3 | 见下方目标仓库 |
| Issue / Review | 2–3 | good first issue triage、文档 typo |

## Hub 贡献 backlog（按周消化）

- [x] `scripts/bootstrap.sh` 一键 smoke test
- [x] `scripts/hub_progress.py` 学习进度 CLI
- [x] `scripts/scaffold_skill.py` Skill 脚手架
- [x] `stage-7/scripts/render_eval_report.py` HTML 报告
- [ ] stage-1 README 英文摘要
- [ ] index.html 移动端优化
- [ ] 新增 3 条 stage-7 eval 任务
- [ ] CHANGELOG.md + v1.0.0 release 准备

## 对外 PR 目标仓库

优先：**活跃 + Agent 相关 + good first issue**

| 仓库 | 切入点 |
|------|--------|
| [agentscope-ai/agentscope](https://github.com/agentscope-ai/agentscope) | 文档、示例、中文 README |
| [langchain-ai/langgraph](https://github.com/langchain-ai/langgraph) | docs typo、tutorial fix |
| [modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers) | MCP server 文档 |
| [datawhalechina/Agent-Learning-Hub](https://github.com/datawhalechina/Agent-Learning-Hub) | 向上游同步改进（若适用） |

流程：找 issue → 评论认领 → fork → 小 PR → 24h 内响应 review。

## 周报模板（每周日复制填写）

```markdown
## Week YYYY-MM-DD

- Contributions (GitHub profile): __ / 200 target
- Forks (kngwyc3 repos total): __ / 200 target
- Hub commits this week: __
- External PRs: __ (links)
- Blockers:
- Next week top 3:
```

## 环境检查

```bash
chmod +x scripts/check_github_setup.sh scripts/bootstrap.sh scripts/milestone_check.sh
./scripts/check_github_setup.sh
```

确认 `git config user.email` 与 [GitHub Verified emails](https://github.com/settings/emails) 一致；Profile 开启 **Include private contributions**（如有私有仓库贡献）。

## 禁止事项

- 空 commit 刷绿块
- 购买 star/fork
- 多账号重复认定

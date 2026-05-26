# 每日贡献时段（GitHub 绿块节奏）

建议固定 **工作日 08:30–09:15** 或 **午休 12:30–13:00**（45 分钟）。

## 开始前（1 分钟）

```bash
./scripts/check_github_setup.sh
```

确认 `git config user.email` 使用的邮箱已在 https://github.com/settings/emails 验证。

Profile 设置：https://github.com/settings/profile → 勾选 **Include private contributions on my profile**。

## 工作日清单（45 分钟）

| 分钟 | 动作 |
|------|------|
| 0–5 | `git pull` + 选今日 issue / 小任务 |
| 5–35 | 实现 + 本地 smoke（`./scripts/bootstrap.sh` 或单 stage 测试） |
| 35–45 | commit → push main（或开 PR） |

**周三 / 周五额外 20 分钟**：对外仓库提 PR 或 issue（见 [CONTRIBUTION_SPRINT.md](CONTRIBUTION_SPRINT.md)）。

## 周末

| 日 | 时长 | 动作 |
|----|------|------|
| 周六 | 2h | Fork 钩子功能 / 推广素材 |
| 周日 | 30min | `./scripts/milestone_check.sh` + 填周报 |

## 周报位置

复制 [CONTRIBUTION_SPRINT.md](CONTRIBUTION_SPRINT.md) 底部模板，保存为 `docs/talent-plan/weekly/YYYY-MM-DD.md`（本地，已 gitignore）。

## 首次核实（本周必做）

1. 阅读 [POLICY_VERIFICATION.md](POLICY_VERIFICATION.md)
2. 向区人社局发送核实邮件（模板在文档内）
3. 填写核实结果表

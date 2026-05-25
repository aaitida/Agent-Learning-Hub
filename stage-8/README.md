# Stage 8: Ship A Real Agent

一个可 clone、可配置、可观测的 **CLI Agent** 最小产品，整合 Stage 1（agent loop）与 Stage 7（安全门禁 / trace / eval 思维）。

## 用户与任务

| 项 | 定义 |
|----|------|
| **用户** | 会一点 Python、想跑通「真实 agent 产品形态」的开发者 |
| **任务** | 用自然语言下达任务；agent 在权限边界内选工具、执行、给出可验证结果 |
| **成功标准** | ① 30 秒内跑起 CLI；② 高风险操作触发人工确认；③ 每次运行有 trace 日志；④ 超步数/超时/成本上限可预期失败 |

## 能力清单（对应主 README Stage 8）

- [x] 明确用户、任务、成功标准（本文档）
- [ ] 日志、trace、错误重试、超时、成本上限 → `common.py` + `agent.py`
- [ ] 权限边界与人工确认 → `safety.py`
- [ ] CLI 部署 → `cli.py`
- [ ] 运行 / 配置 / 扩展说明 → 随各 step 补全

## 目录规划（按 [SHIP_WORKFLOW.md](SHIP_WORKFLOW.md) 增量交付）

```text
stage-8/
  README.md           # Step 1 — 本文件
  SHIP_WORKFLOW.md    # 增量 MR 工作流
  .env.example        # Step 2
  requirements.txt    # Step 3
  common.py           # Step 4 — 配置、日志、trace、成本
  tools.py            # Step 5 — 工具
  safety.py           # Step 6 — 安全门禁
  agent.py            # Step 7 — agent loop
  cli.py              # Step 8 — CLI 入口
  step01_smoke.py     # Step 9 — smoke test
  traces/             # 运行后生成（gitignore）
```

## 快速开始（全部 step 完成后）

```bash
cd stage-8
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env   # 填入 OPENAI_API_KEY
python cli.py "读取 ../stage-1/notes.txt 并总结内容"
```

## 限制（v1）

- 仅 CLI，无 Web / Bot
- 工具集最小（读文件 + 计算），可后续扩展
- 需要 OpenAI 兼容 API；smoke test 支持 dry-run

## 增量开发

**不要一次写完。** 请按 [SHIP_WORKFLOW.md](SHIP_WORKFLOW.md)：**一个文件 → 一个 MR → merge main → 下一步**。

当前进度：**Step 1 完成，等待 merge 后做 Step 2。**

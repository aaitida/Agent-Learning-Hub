#!/usr/bin/env bash
# Create good first issues on GitHub (requires gh auth login).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if ! command -v gh >/dev/null 2>&1; then
  echo "Install GitHub CLI: brew install gh && gh auth login"
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "Run: gh auth login"
  exit 1
fi

create_issue() {
  local title="$1"
  local body="$2"
  if gh issue list --search "$title in:title" --json title --jq '.[].title' | grep -Fq "$title"; then
    echo "SKIP (exists): $title"
  else
    gh issue create --title "$title" --label "good first issue,help wanted" --body "$body"
    echo "CREATED: $title"
  fi
}

create_issue "[good first issue] Add bootstrap.sh to README quick start" \
"Goal: README 快速开始区块链接 scripts/bootstrap.sh 并说明 smoke test 步骤。

Scope: README.md only.

Acceptance:
- Quick start 含 ./scripts/bootstrap.sh
- 说明 check_github_setup.sh 用途"

create_issue "[good first issue] Translate stage-1 README key sections to English" \
"Goal: stage-1/README.md 增加 English summary 段落（不改代码）。

Scope: stage-1/README.md"

create_issue "[good first issue] Add one eval task for skill validation" \
"Goal: stage-7/evals/tasks.csv 新增 1 条 skill 相关 eval 任务。

Scope: evals/tasks.csv + 必要时 TEACHING_RESPONSES"

create_issue "[good first issue] Fix broken or outdated resource links in README" \
"Goal: 扫描 README Curated Resources，修复失效链接或标注 archived。

Scope: README.md"

create_issue "[good first issue] Improve index.html mobile layout" \
"Goal: index.html 在窄屏下 stage 导航不溢出。

Scope: index.html CSS only"

echo "Done. Labels may need to exist — create 'good first issue' and 'help wanted' in repo settings if missing."

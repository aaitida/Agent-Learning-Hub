#!/usr/bin/env bash
# Milestone dashboard for Shenzhen talent plan GitHub targets.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

TODAY="$(date +%Y-%m-%d)"

# Milestone thresholds: date contrib_min fork_min
milestones=(
  "2026-06-30:80:15"
  "2026-07-31:130:60"
  "2026-08-31:190:170"
  "2026-09-05:200:200"
)

echo "=== Talent Plan Milestone Check ==="
echo "Date: $TODAY"
echo

if ! command -v gh >/dev/null 2>&1 || ! gh auth status >/dev/null 2>&1; then
  echo "WARN: gh not authenticated — showing manual checklist only"
  echo "  Install: brew install gh && gh auth login"
  echo "  Docs:    docs/talent-plan/MILESTONE_REVIEW.md"
  exit 0
fi

USER="$(gh api user -q .login)"
echo "GitHub user: $USER"
echo "Profile:     https://github.com/$USER"
echo

# Sum forks across public repos
FORKS="$(gh api "users/$USER/repos?per_page=100&type=owner" --paginate -q '[.[].forks_count] | add // 0')"
STARS="$(gh api "users/$USER/repos?per_page=100&type=owner" --paginate -q '[.[].stargazers_count] | add // 0')"
REPOS="$(gh api "users/$USER/repos?per_page=100&type=owner" --paginate -q 'length')"

echo "--- Repo stats (owner, public) ---"
echo "Repos: $REPOS"
echo "Total forks:  $FORKS  (target >200)"
echo "Total stars:  $STARS"
echo

# Flagship repo
HUB_FORKS="$(gh api repos/"$USER"/Agent-Learning-Hub -q .forks_count 2>/dev/null || echo '?')"
HUB_STARS="$(gh api repos/"$USER"/Agent-Learning-Hub -q .stargazers_count 2>/dev/null || echo '?')"
echo "Agent-Learning-Hub: forks=$HUB_FORKS stars=$HUB_STARS"
echo

echo "--- Contributions ---"
echo "Open https://github.com/$USER — check 'contributions in the last year' on profile."
echo "GitHub API does not expose contribution count directly; record manually in MILESTONE_REVIEW.md"
echo

echo "--- Milestone targets ---"
printf "%-12s %8s %8s %s\n" "Date" "Contrib" "Forks" "Status"
for m in "${milestones[@]}"; do
  IFS=: read -r date contrib fork <<< "$m"
  if [[ "$TODAY" > "$date" || "$TODAY" == "$date" ]]; then
    status="DUE"
    if [[ "$FORKS" -ge "$fork" ]] 2>/dev/null; then
      fork_status="fork OK"
    else
      fork_status="fork NEED +$((fork - FORKS))"
    fi
    status="$fork_status; contrib check manually (>=$contrib)"
  else
    status="upcoming"
  fi
  printf "%-12s %8s %8s %s\n" "$date" ">=$contrib" ">=$fork" "$status"
done

echo
echo "--- Suggested actions ---"
if [[ "${FORKS:-0}" -lt 60 ]]; then
  echo "- Fork lag: follow docs/talent-plan/COMMUNITY_LAUNCH.md Phase 1"
fi
if [[ "${FORKS:-0}" -lt 170 ]]; then
  echo "- Prepare v1.0.0 release and 30-day check-in issue"
fi
echo "- Weekly: docs/talent-plan/CONTRIBUTION_SPRINT.md"
echo "- Policy: docs/talent-plan/POLICY_VERIFICATION.md"

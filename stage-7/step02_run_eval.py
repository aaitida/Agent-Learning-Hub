"""
Step 2 — 运行 eval

运行：python step02_run_eval.py
"""

from __future__ import annotations

import subprocess
import sys
from pathlib import Path


def main() -> None:
    runner = Path("scripts/eval_runner.py")
    cmd = [sys.executable, str(runner), "--tasks", "evals/tasks.csv", "--out", "evals/results.csv"]
    raise SystemExit(subprocess.call(cmd))


if __name__ == "__main__":
    main()

# Contributing

Thanks for helping improve Agent Learning Hub.

This repository is README-first. The best contribution is a small, high-signal change that makes the learning path clearer.

## 5-Minute First PR

1. Fork [kngwyc3/Agent-Learning-Hub](https://github.com/kngwyc3/Agent-Learning-Hub) and clone your fork.
2. Pick a [`good first issue`](https://github.com/kngwyc3/Agent-Learning-Hub/issues?q=is%3Aopen+label%3A%22good+first+issue%22) or see [.github/GOOD_FIRST_ISSUES.md](.github/GOOD_FIRST_ISSUES.md).
3. Create a branch: `git checkout -b fix/short-description`
4. Run smoke tests for your stage:
   ```bash
   cd stage-5 && python step04_run_smoke_cases.py
   cd stage-8 && python step01_smoke.py
   ```
5. Commit with a clear message and open a PR against `main`.
6. Fill in the PR template; link the issue with `Fixes #123` when applicable.

**GitHub contributions:** ensure your commit email is [verified on GitHub](https://github.com/settings/emails). Run `./scripts/check_github_setup.sh` locally.

## Good Contributions

- Add an official doc, official engineering blog, paper, benchmark, or runnable open-source repo.
- Improve a todo item so it is more concrete and easier to verify.
- Add a small project idea with a clear learning goal.
- Fix outdated links.
- Remove low-quality or duplicated resources.
- Add a reusable skill to [skills/](skills/) with `SKILL.md` + at least one format template or script (refer to Stage 5 for skill design principles).

## Please Avoid

- Copying posts from social platforms.
- Adding paid course ads without substantial free material.
- Adding private, paywalled, or scraped content.
- Adding resources that encourage bypassing platform rules.
- Turning the README into a huge link dump.

## Resource Format

Use short descriptions:

```markdown
| [Title](https://example.com) | One sentence explaining why it matters. |
```

## Quality Bar

- Can a learner use this resource today?
- Is the source trustworthy?
- Does it teach a concrete skill or concept?
- Is it more useful than another link already listed?


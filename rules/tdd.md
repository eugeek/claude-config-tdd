# TDD Workflow

## Plan mode (Opus)
1. If task introduces a new module/service or touches >3 unrelated files → use Agent tool to spawn `architect` sub-agent
2. Produce plan: feature description / decomposition + files / expected result

## Implementation (Sonnet, auto-accept)
1. Read — read all files that will be touched, detect language and test conventions
2. Use Agent tool to spawn `qa` sub-agent — writes tests (functional + non-functional) + stubs, confirm tests fail (red)
3. Use Agent tool to spawn `frontend`, `backend`, or both — minimal implementation to pass tests
4. Green check — tests + type check + linter must all pass; if failing after 3 attempts — stop and ask user
5. Use Agent tool to spawn `frontend`/`backend` — refactor, tests must stay green
6. Use Agent tool to spawn `reviewer` sub-agent — reviews implementation
7. Summary — files changed + one command to run

## Agent selection
- `frontend` — components, UI logic, styling, client-side state
- `backend` — API, database, auth, server logic
- Both — fullstack feature: backend first, then frontend

## Green check per language
- TypeScript: `tsc --noEmit` + eslint/biome
- JavaScript: eslint/biome only
- Python: `mypy` (if configured) + ruff/flake8
- Other: detect from package.json / pyproject.toml / Makefile

## Skip
Task starts with `quick:` → implement directly, no TDD, no review.

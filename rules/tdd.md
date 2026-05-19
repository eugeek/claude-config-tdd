# TDD Workflow

## Plan mode (Opus)
1. If task introduces a new module/service or touches >3 unrelated files → spawn `architect` sub-agent
2. Produce plan: feature description / decomposition + files / expected result

## Implementation (Sonnet, auto-accept)
1. Read all files that will be touched, detect language and test conventions
2. Spawn `qa` — writes tests (functional + non-functional) + stubs, confirm tests fail (red)
3. Spawn `frontend` / `backend` / both — minimal implementation to pass tests
4. Green check — tests + type check + linter must all pass; if failing after 3 attempts — stop and ask user
5. Refactor in-place — tests must stay green
6. Spawn `reviewer` — reviews implementation
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

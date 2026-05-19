# claude-config

[![Claude Code](https://img.shields.io/badge/Claude_Code-config-D97757?logo=anthropic&logoColor=white)](https://claude.com/claude-code)
[![Shell](https://img.shields.io/badge/shell-bash-4EAA25?logo=gnubash&logoColor=white)](install.sh)
[![MCP](https://img.shields.io/badge/MCP-enabled-7c3aed)](mcp.json)

Opinionated [Claude Code](https://claude.com/claude-code) setup: TDD workflow, sub-agents, safe permissions, MCP servers.

## Features

- **TDD workflow** — `qa` writes tests → `frontend`/`backend` implement → `reviewer` reviews
- **5 sub-agents** — `architect`, `frontend`, `backend`, `qa`, `reviewer`
- **4 commands** — `/fix`, `/review`, `/test`, `/test-new`
- **Safe defaults** — git writes, `sudo`, `rm`, `.env` denied; test runners and linters auto-allowed
- **MCP servers** — Chrome DevTools, Context7

## Install

```bash
git clone https://github.com/eugeek/claude-config.git
cd claude-config
./install.sh
```

Existing `~/.claude` is moved to `~/.claude-old`.

Add to `~/.zshrc`:

```bash
export GITHUB_TOKEN="..."
export BRAVE_API_KEY="..."
export CONTEXT7_API_KEY="..."
export POSTGRES_CONNECTION_STRING="..."
```

## Workflow

**New feature** — Opus + Plan Mode (`Shift+Tab`):
1. Complex task → `architect` reviews structure
2. Plan: feature → decomposition + files → result

**Implementation** — Sonnet + auto-accept (`Shift+Tab` twice):
1. `qa` writes tests (red)
2. `frontend` / `backend` / both implement (green)
3. `reviewer` reviews

**Skip TDD** — prefix with `quick:`:

```
quick: fix typo in button label
```

## Commands

| Command      | Purpose                                  |
| ------------ | ---------------------------------------- |
| `/fix`       | Reviewer agent + auto-fix safe issues    |
| `/review`    | Fresh-perspective code review            |
| `/test`      | Run tests, auto-detect runner            |
| `/test-new`  | Generate tests for untested code         |

## Agents

| Agent       | Role                                   |
| ----------- | -------------------------------------- |
| `architect` | Structure analysis, plan mode only     |
| `frontend`  | React, TypeScript, UI                  |
| `backend`   | API, database, auth, server            |
| `qa`        | Writes tests before implementation     |
| `reviewer`  | Reviews after green                    |

## Permissions

- **Denied** — `git add/commit/push/pull/merge/rebase/stash`, `sudo`, `rm`, `.env` read/write
- **Allowed** — `npm/yarn/pnpm/bun/npx`, `vitest/jest/pytest`, `tsc/mypy/ruff/eslint/biome`, read-only git
- **Ask** — everything else

## Structure

```
.
├── agents/      Sub-agent definitions
├── commands/    Slash commands
├── rules/       Code style, TDD, plan mode, etc.
├── CLAUDE.md    Loads rules into context
├── settings.json
├── mcp.json
└── install.sh
```

## API keys

- GitHub — https://github.com/settings/tokens
- Context7 — https://console.upstash.com/
- Brave Search — https://brave.com/search/api/

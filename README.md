# Claude Code Config

## Install (fresh machine)

```bash
git clone https://github.com/your-username/claude-config.git
cd claude-config
./install.sh
```

## Install (already have Claude Code with config)

Backup your current config first:

```bash
cp -r ~/.claude/agents ~/.claude/agents.bak 2>/dev/null || true
cp -r ~/.claude/commands ~/.claude/commands.bak 2>/dev/null || true
cp -r ~/.claude/rules ~/.claude/rules.bak 2>/dev/null || true
cp ~/.claude/CLAUDE.md ~/.claude/CLAUDE.md.bak 2>/dev/null || true
cp ~/.claude/settings.json ~/.claude/settings.json.bak 2>/dev/null || true
```

Check what you had — you may want to migrate custom rules:

```bash
ls ~/.claude/agents.bak
ls ~/.claude/rules.bak
```

Then install:

```bash
git clone https://github.com/your-username/claude-config.git
cd claude-config
./install.sh
```

`install.sh` also makes a full timestamped backup of `~/.claude` automatically.

## Environment variables

Add to `~/.zshrc`:
```bash
export GITHUB_TOKEN="..."
export BRAVE_API_KEY="..."
export CONTEXT7_API_KEY="..."
export POSTGRES_CONNECTION_STRING="..."
```

## Workflow

**New feature — Opus + Plan Mode (Shift+Tab):**
- Complex task → `architect` agent reviews structure first
- Plan: feature / decomposition + files / result

**Implementation — Sonnet + auto-accept (Shift+Tab twice):**
1. `qa` agent writes tests (red)
2. `frontend` / `backend` / both implement (green)
3. `reviewer` agent reviews

**Quick task (skip TDD):** prefix with `quick:`
```
quick: fix typo in button label
```

## Agents
- `architect` — structure analysis, plan mode only
- `frontend` — React, TypeScript, UI
- `backend` — API, database, auth, server
- `qa` — writes tests before implementation
- `reviewer` — reviews after green

## Permissions
- Blocked: `git add/commit/push/pull/merge/stash`, `sudo`, `rm`, `.env`
- Auto-allowed: test runners (vitest, jest, pytest), linters (eslint, ruff, biome), typecheck (tsc, mypy), package managers
- Everything else: Claude asks

## API Keys
- GitHub: https://github.com/settings/tokens
- Context7: https://console.upstash.com/
- Brave Search: https://brave.com/search/api/

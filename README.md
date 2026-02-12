# Claude Code Configuration

Personal Claude Code setup with agents, commands, rules, and MCP servers.

## Quick Install
```bash
# Backup existing config
mv ~/.claude ~/.claude.backup 2>/dev/null || true

# Clone and install
git clone https://github.com/your-username/claude-config.git
cd claude-config

# Copy files
mkdir -p ~/.claude/{agents,commands,rules}
cp agents/* ~/.claude/agents/
cp commands/* ~/.claude/commands/
cp rules/* ~/.claude/rules/
cp settings.json ~/.claude/
cp mcp.json ~/.mcp.json
```

## Environment Variables

Add to `~/.zshrc` or `~/.bashrc`:
```bash
# Required for MCP servers
export GITHUB_TOKEN="ghp_xxxxx"              # GitHub personal access token
export CONTEXT7_API_KEY="xxxxx"             # Upstash Context7 API key
export POSTGRES_CONNECTION_STRING="postgresql://user:pass@localhost:5432/db"
export BRAVE_API_KEY="xxxxx"                # Brave Search API key
```

Then: `source ~/.zshrc`

## What's Included

### Agents
- **frontend** - React, TypeScript, performance
- **fullstack** - API integration, end-to-end features
- **architect** - System design, SOLID, refactoring
- **qa** - Comprehensive test coverage
- **reviewer** - Code review, DRY, optimization

### Commands
- `/review` - Code review with fresh eyes
- `/test` - Run tests and analyze
- `/test-new <file>` - Generate tests for file

### Rules
- Short, direct responses
- No unnecessary comments in code
- No auto-generated README/docs
- Concise plans in Plan mode

### MCP Servers
- chrome-devtools, context7, github, filesystem
- postgres, brave-search, puppeteer, git

## Usage
```bash
claude

# Try commands:
/agents                    # List agents
/review                    # Review last commit
/test                      # Run all tests
/test-new src/utils.ts    # Generate tests
```

## Permissions

Git operations (add, commit, push) are **blocked** by default.
`.env` files are **protected** (read/write denied).

## Get API Keys

- **GitHub Token**: https://github.com/settings/tokens
- **Context7**: https://console.upstash.com/
- **Brave Search**: https://brave.com/search/api/

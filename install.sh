#!/bin/bash
set -e

CLAUDE_DIR="$HOME/.claude"

if [ -d "$CLAUDE_DIR" ]; then
  mv "$CLAUDE_DIR" "$HOME/.claude-old"
  echo "Moved existing config to ~/.claude-old"
fi

mkdir -p "$CLAUDE_DIR"/{agents,commands,rules}

cp agents/*   "$CLAUDE_DIR/agents/"
cp commands/* "$CLAUDE_DIR/commands/"
cp rules/*    "$CLAUDE_DIR/rules/"
cp CLAUDE.md  "$CLAUDE_DIR/"
cp settings.json "$CLAUDE_DIR/"
cp mcp.json   "$CLAUDE_DIR/mcp.json"

echo "Done. Add to ~/.zshrc or ~/.bashrc:"
echo ""
echo "  export GITHUB_TOKEN=\"...\""
echo "  export BRAVE_API_KEY=\"...\""
echo "  export CONTEXT7_API_KEY=\"...\""
echo "  export POSTGRES_CONNECTION_STRING=\"...\""

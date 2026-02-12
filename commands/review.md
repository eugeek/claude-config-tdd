# Code Review Command

Run comprehensive code review with reviewer agent.

## What to review:

Args: $ARGUMENTS

If no args - review last commit changes.
If path provided - review that file/folder.
If "all" - review entire codebase (use carefully).

## Process:

1. Use `reviewer` agent (fresh perspective, independent)
2. Check git diff or specified files
3. Find issues:
   - ❌ Unnecessary comments
   - 🔄 DRY violations
   - ⚡ SOLID principles violations
   - 🚀 Performance issues
   - 👃 Code smells
   - 🔒 Security vulnerabilities
   - 📛 Poor naming
   - 💎 Optimization opportunities

4. Report format:
   - CRITICAL 🔴 (must fix now)
   - MUST FIX 🟠 (before merge)
   - SHOULD IMPROVE 🟡 (optimize)
   - DELETE ❌ (remove this code/comment)

## Examples:
```bash
/review                          # Review last commit
/review src/api/users.ts        # Review specific file
/review src/components/         # Review folder
/review --since HEAD~3          # Review last 3 commits
```

## Rules:

- Be ruthless - no mercy for bad code
- Fresh eyes - ignore previous context
- Specific - exact line numbers
- Actionable - how to fix

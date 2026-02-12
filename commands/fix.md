# Fix Command

Auto-fix issues found by reviewer.

Args: $ARGUMENTS (optional: file path)

## Process:

1. Run `/review` first to find issues
2. Use `reviewer` agent to analyze
3. Auto-fix safe issues:
   - ✅ Remove unnecessary comments
   - ✅ Fix formatting
   - ✅ Apply DRY refactoring
   - ✅ Rename variables (poor names)
   - ✅ Extract magic numbers to constants
   - ⚠️ Ask before complex refactors

4. Report what was fixed

## Example:
```bash
/fix                    # Fix all safe issues
/fix src/api/users.ts  # Fix specific file
```

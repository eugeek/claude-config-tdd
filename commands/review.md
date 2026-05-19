# Review

Invoke `reviewer` sub-agent with fresh perspective.

Args: $ARGUMENTS
- No args → review last commit diff
- Path → review that file/folder

Output: `CRITICAL|MUST FIX|IMPROVE|DELETE [file:line] issue → fix`
Summary: X critical, Y must-fix, Z improvements.

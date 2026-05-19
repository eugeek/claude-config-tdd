# Test New

Generate tests for existing code that has no tests. Use outside of TDD flow.

Args: $ARGUMENTS (file path required)

Uses `qa` sub-agent. Covers: happy path, edge cases, error cases, security.

Output: test file next to source (`file.ts` → `file.test.ts`, `utils.py` → `test_utils.py`).

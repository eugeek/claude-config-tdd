# Test

Run tests and report results. Use outside of TDD flow.

Args: $ARGUMENTS
- No args → run all tests
- Path → run tests for that file/folder
- `coverage` → show coverage report

Auto-detect runner from project (vitest, jest, pytest).
Output: `✓ X passed, ✗ Y failed` + failing names + coverage %.

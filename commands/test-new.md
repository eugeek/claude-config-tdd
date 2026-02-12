# Generate Tests Command

Generate comprehensive test coverage for code file.

Args: $ARGUMENTS (file path required)

## Process:

1. Use `qa` agent
2. Read the code file
3. Analyze all functions/classes/methods
4. Generate tests covering:

### Happy Path ✅
- Valid inputs
- Expected behavior
- Normal flow

### Edge Cases ⚠️
- Empty strings/arrays/objects
- Null/undefined
- Boundary values (0, -1, max)
- Very large inputs
- Special characters
- Unicode

### Error Cases ❌
- Invalid inputs
- Type mismatches
- Out of range values
- Network failures (if applicable)
- Timeout scenarios

### Security 🔒
- SQL injection attempts
- XSS payloads
- Path traversal
- Authentication bypass

## Output:

Create test file in same directory:
- `file.ts` → `file.test.ts`
- `component.tsx` → `component.test.tsx`
- `utils.py` → `test_utils.py`

## Example:
```bash
/test-new src/utils/validation.ts
```

Generates: `src/utils/validation.test.ts` with full coverage.

# Test Command

Run tests with QA agent and analyze results.

## What to test:

Args: $ARGUMENTS

If no args - run all tests.
If path provided - test that file/folder.
If "new" - generate tests for new code.
If "coverage" - show coverage report.

## Process:

1. Use `qa` agent (comprehensive test coverage specialist)

2. Find test files:
   - *.test.* 
   - *.spec.*
   - __tests__/

3. Detect framework:
   - Jest
   - Vitest  
   - Mocha
   - Pytest
   - etc.

4. Run tests:
```bash
   npm test
   yarn test
   pnpm test
   pytest
```

5. Analyze results:
   - ✅ Pass count
   - ❌ Fail count
   - 📊 Coverage %
   - ⏱️ Slow tests (>1s)
   - 🔍 Missing test scenarios

6. Report format:
   - **STATUS**: ✅ All passed / ❌ X failures
   - **STATS**: Total, Passed, Failed, Coverage
   - **FAILURES**: What failed and why
   - **MISSING**: What needs tests
   - **RECOMMENDATIONS**: How to improve

## Examples:
```bash
/test                                    # Run all tests
/test src/api/users.test.ts             # Run specific test file
/test src/components/                   # Test folder
/test new src/utils/validation.ts       # Generate tests for new code
/test coverage                          # Show coverage report
```

## Test Generation Mode:

When "new" is specified:
1. Read the code file
2. Identify all functions/methods
3. Generate comprehensive tests:
   - Happy path
   - Edge cases (empty, null, boundary)
   - Error cases
   - Security cases
4. Cover all scenarios from QA agent's checklist

## Coverage Goals:

- Unit tests: 80%+
- Integration tests: all APIs
- E2E tests: critical flows
- Edge cases: all identified

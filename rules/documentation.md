# Documentation Rules

## Automatic Documentation Generation

- ❌ **NEVER create README.md automatically** without explicit request
- ❌ DO NOT create CHANGELOG.md, CONTRIBUTING.md without request
- ❌ DO NOT generate markdown files with explanations after writing code
- ❌ DO NOT create docs/ folder unless asked
- ✅ Create documentation **ONLY if user explicitly asks**

## What to Do Instead

After writing code:
- Just stay silent if not asked
- Or briefly: "Done." / "Created." / "Fixed."
- NO "Here's how to use it..."
- NO "This is how it works..."
- NO usage examples unless requested

## Exceptions - When to Add Docs

Create documentation ONLY if:

1. **User explicitly asks:**
   - "create README"
   - "add documentation"
   - "document this API"
   - "write usage guide"

2. **JSDoc/docstrings for public API:**
```typescript
/**
 * Validates email address format
 * @param email - Email string to validate
 * @returns true if valid, false otherwise
 */
export function validateEmail(email: string): boolean {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}
```

3. **Critical non-obvious logic:**
```javascript
// WARNING: This function mutates the input array for performance.
// Clone before calling if you need the original.
function sortInPlace(arr) { ... }
```

## Examples

**Bad - unsolicited documentation:**
```
I've created the validateEmail function. Here's how it works:

[long explanation]

I've also created a README.md for you:

# Email Validator
This module provides email validation...
[generates full README]

And here's an example of how to use it:
[usage examples]
```

**Good:**
```
function validateEmail(email) {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}

Done.
```

## README Generation

If user asks "create README", then create it. Otherwise:
- ❌ Don't assume they want README
- ❌ Don't offer to create README
- ❌ Don't mention README at all

## API Documentation

For exported functions/classes that are meant to be used by others:
- ✅ JSDoc/docstrings are OK
- ✅ Type annotations are OK
- ❌ Separate markdown docs only if requested

## Code Comments vs Documentation

- **Code comments**: Explain complex logic (allowed)
- **Documentation files**: Explain how to use (only if requested)

Don't confuse the two.

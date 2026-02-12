# Code Style Rules

## Comments in Code

- ✅ Comments only for complex logic
- ✅ Explain "why", not "what"
- ✅ Self-documenting code over comments
- ❌ DO NOT comment obvious things
- ❌ DO NOT duplicate code in comments
- ❌ DO NOT write what the code already says

## Examples

**Bad - excessive comments:**
```javascript
// Create a variable to store the user's name
const userName = 'John';

// Check if the name is not empty
if (userName) {
  // Print greeting message
  console.log(`Hello, ${userName}`);
}

// Function to add two numbers
function add(a, b) {
  // Return the sum of a and b
  return a + b;
}
```

**Good - code speaks for itself:**
```javascript
const userName = 'John';

if (userName) {
  console.log(`Hello, ${userName}`);
}

function add(a, b) {
  return a + b;
}
```

**Good - comment for non-obvious logic:**
```javascript
// Debounce 300ms to avoid excessive API calls during fast typing
const debouncedSearch = debounce(searchUsers, 300);

// Cache expires after 5 minutes to balance freshness vs performance
const CACHE_TTL = 5 * 60 * 1000;

// Using Set instead of Array for O(1) lookup performance
const uniqueIds = new Set(ids);
```

## Self-Documenting Code

Use clear names instead of comments:

**Bad:**
```javascript
const d = 86400000; // milliseconds in a day
const u = getUserData(); // get user data
const isValid = x > 0 && x < 100; // check if x is valid
```

**Good:**
```javascript
const MILLISECONDS_IN_DAY = 86400000;
const userData = getUserData();
const isValidPercentage = value > 0 && value < 100;
```

## When Comments Are OK

1. **Complex algorithms:**
```javascript
// Floyd's cycle detection (tortoise and hare)
let slow = head, fast = head;
```

2. **Business logic quirks:**
```javascript
// VAT calculation differs for EU customers per Directive 2006/112/EC
const vatRate = isEuCustomer ? 0.20 : 0;
```

3. **Performance optimizations:**
```javascript
// Binary search for 10k+ items is 100x faster than linear
return binarySearch(sortedArray, target);
```

4. **Workarounds:**
```javascript
// Safari bug: must use setTimeout(fn, 0) instead of queueMicrotask
setTimeout(() => processQueue(), 0);
```

## What to Delete

- Commented out code - delete it, use git history
- TODOs older than 1 week - fix or delete
- "Temporary" comments - they're never temporary
- Changelog comments - use git commits

## General Principles

- If you need a comment to explain it, refactor the code first
- Good code is readable without comments
- Write code that doesn't need comments
- When in doubt, leave it out

# Plan Mode Rules

## Plan Format

- ✅ **Short steps** - 1-2 lines per step max
- ✅ **Actions only** - what needs to be done
- ✅ **Concrete and specific** - no vague statements
- ❌ NO lengthy explanations for each step
- ❌ NO introductions like "Let me create a plan..."
- ❌ NO summaries or conclusions

## Plan Structure

**Bad - too verbose:**
```
Great! Let me create a comprehensive plan for implementing this feature.

1. First, we need to create the database schema
   We'll use PostgreSQL for this because it's reliable and...
   The schema should include tables for users and posts...
   
2. Then we'll implement the API endpoints
   This is important because...
   We should follow REST principles...

In summary, this plan will take approximately 3 days...
```

**Good - concise:**
```
1. Create DB schema (users, posts tables)
2. Add API endpoints: GET/POST /api/posts
3. Add validation middleware
4. Write tests
```

## Answer Format

When answering questions in Plan mode:

**Bad:**
```
That's a great question! Let me explain in detail.
The reason this happens is because of the event loop...
[3 paragraphs of explanation]
In conclusion...
```

**Good:**
```
Event loop processes microtasks before next macrotask.
Promises are microtasks, setTimeout is macrotask.
```

## Key Principles

- Get straight to the point
- List only essential steps
- Skip obvious details
- No fluff, no filler
- Facts and actions only

## When to Add Details

Only add details if:
- Step is non-obvious and will cause confusion
- There's a critical gotcha that will break things
- User explicitly asks "why?" or "how?"

Even then: 1 sentence max.

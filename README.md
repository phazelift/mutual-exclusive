# mutually-exclusive


### Check whether the characters of a string are mutually exclusive

<br/>

```typescript
const mutuallyExclusive = require('@sygn/mutually-exclusive');

console.log(mutuallyExclusive('mutually', 'exclusive'));
// false

// you can add a handler for handling type errors (see message-events npm package)
mutuallyExclusive.onError(console.error);
```
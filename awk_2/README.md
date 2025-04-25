# AWK Challenge: Most Frequent Word in the Middle Line

## Problem Statement

Given a file containing **odd number of lines**, find the **most frequently occurring word** in the **middle line** of the file. The comparison should be **case-insensitive**, and if multiple words share the highest frequency, return the lexicographically smallest one.

### Rules:

- Words are separated by spaces or punctuation (`!`, `.`, `,`, `?`, `;`, `:`).
- Ignore case (`Apple`, `apple`, and `APPLE` are the same).
- The file always has an odd number of lines ≥ 3.
- Output must be exactly one word — the most frequent in the middle line.

## Example

**Input (middle line is line 3):**
```
hello world
this is the second line.
Apple apple APPLE banana banana.
some random text
end of file
```

**Output:**
```
apple
```

## Constraints

- Use only `awk` in your script.
- No external tools like `grep`, `sed`, or `sort`.

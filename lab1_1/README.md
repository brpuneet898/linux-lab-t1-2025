```markdown
# Bash Script - Pattern Filter using Redirection

## Problem Statement

Write a script `pattern_filter.sh` that:
- Accepts a pattern as the first argument.
- Reads from `input.txt`.
- Writes all lines containing the pattern to `output.txt`.

## Usage

```bash
./pattern_filter.sh <pattern>
```

## Sample Input (`input.txt`):
```
apple
banana
apple pie
grape
pineapple
```

## Sample Command:
```bash
./pattern_filter.sh apple
```

## Expected Output (`output.txt`):
```
apple
apple pie
pineapple
```

## Notes
- Matching is case-sensitive.
- Output should overwrite previous `output.txt` content.
```
# Challenge: Normalize and Collapse Paragraphs using `sed`

## Problem

You are given a text file with multiple paragraphs. Each paragraph:
- Is separated by **one or more empty lines**.
- May contain lines that are indented or contain excessive spaces/tabs.

### Your task:

1. **Collapse each paragraph** into a single line.
2. **Remove all extra spaces or tabs** (normalize spacing to a single space).
3. **Keep only one blank line** between paragraphs.

### Input Example (`public_input1.txt`):
```
This   is a
    paragraph one.
It   has multiple lines.


This is       paragraph    two.

	Third one
has	tabs	and spaces
```

### Output Example (`public_output1.txt`):
```
This is a paragraph one. It has multiple lines.

This is paragraph two.

Third one has tabs and spaces
```

---

## Constraints

- You **must** use `sed` (you can use shell minimally if needed).
- Do not use `awk`, `perl`, `python`, etc.

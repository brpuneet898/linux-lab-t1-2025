# Advanced `grep` Challenge

## Problem Statement

You are given a file named `data.txt` which contains a list of strings, one per line. Your task is to write a `grep` or `egrep` command that matches **only those lines** which satisfy **all** of the following criteria:

1. The line **must contain at least two different palindromic words** (a word that reads the same forwards and backwards, e.g., `madam`, `racecar`).
2. Each palindromic word must be **at least 3 characters long**.
3. The palindromic words must be **separated by at least one non-palindromic word** in the line.
4. The match must be **case-insensitive**.
5. Output the matching **entire lines**.

## Constraints
- You can assume words are separated by spaces.
- Only alphabetic characters (a-z, A-Z) appear in the file.
- You must solve this using only `grep`, `egrep`, or `grep -E`.

## Example Input

Given the following lines in `data.txt`:

```


# Advanced `grep` Challenge

## Problem Statement

You are given a file named `data.txt` which contains a list of strings, one per line. Your task is to write a `grep` or `egrep` command that matches **only those lines** which satisfy **all** of the following criteria:

1. The line **must contain at least two different palindromic words** (a word that reads the same forwards and backwards, e.g., `madam`, `racecar`).
2. Each palindromic word must be **at least 3 characters long**.
3. The palindromic words must be **separated by at least one non-palindromic word** in the line.
4. The match must be **case-insensitive**.
5. Output the matching **entire lines**.

## Constraints
- You can assume words are separated by spaces.
- Only alphabetic characters (a-z, A-Z) appear in the file.
- You must solve this using only `grep`, `egrep`, or `grep -E`.

## Example Input

Given the following lines in `data.txt`:


hello racecar bob madam noon
racecar hello madam
madam anna civic
hello world level kayak refer stats noon
refer hello racecar kayak
bob anna
```

### Expected Output

```
racecar hello madam
refer hello racecar kayak
```

## Instructions

Write your solution in `solution.sh`. It should print the correct output when executed as:

```bash
bash solution.sh
```
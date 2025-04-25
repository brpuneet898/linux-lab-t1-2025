GREP/EGREP Challenge: Advanced Pattern Matching

## Challenge

You are given a file containing a mixture of valid and invalid IPv4 addresses. Your task is to extract **only** the valid IPv4 addresses using `egrep`.

### Valid IPv4 Address Rules:
- Consists of **four** octets separated by periods.
- Each octet must be a number from `0` to `255`.
- Leading zeros are allowed but only if the value is still within 0–255 (e.g., `001` is acceptable, but `256` is not).
- Each IP should match the full line (i.e., one IP address per line).

### Input Format
A text file (`input.txt`) containing one IP address per line.

### Your Task
Write a one-liner `egrep` command in `solution.sh` that filters out only valid IPv4 addresses from `input.txt`.

## Restrictions
- Use `egrep` (Extended grep), not Perl, sed, or other tools.
- You can assume the input file is correctly named and formatted with one potential IP per line.

## Example

**input.txt**
```
192.168.1.1
255.255.255.255
256.100.50.0
10.10.10
1.2.3.4.5
01.02.03.04
123.045.067.089
172.16.254.1
```

**Expected Output**
```
192.168.1.1
255.255.255.255
01.02.03.04
172.16.254.1
```
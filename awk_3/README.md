# Nested Group Aggregation

## 📝 Problem Statement

Given a CSV-like input file (comma-separated), perform the following tasks using **only `awk`**:

1. Group the records by the first column (`GroupID`).
2. Inside each group, further group by the second column (`SubID`).
3. For each (`GroupID`, `SubID`) pair:
   - Calculate the **sum** of the fourth column (numerical value).
   - Count the **number of distinct third-column** (`UserID`) entries.
4. Output format should be:

GroupID,SubID,Sum,UniqueUserCount

The output should be **sorted first by GroupID and then SubID (both lexicographically)**.

## Constraints

- Use **only `awk`** (no `sort`, no external tools).
- GroupID, SubID, and UserID are alphanumeric.
- Values are positive integers.
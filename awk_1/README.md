# Very Hard AWK Challenge

## Problem Statement

You are given a text file where each line contains information in the following format:

```
<timestamp> <user_id> <event_type> <event_value>
```

- `<timestamp>` is in the format `YYYY-MM-DD HH:MM:SS`
- `<user_id>` is an alphanumeric string
- `<event_type>` is one of `click`, `view`, `purchase`
- `<event_value>` is a numeric value associated with the event

**Task:**  
Write an `awk` command that processes such a file and produces a summary with the **total event_value per user per event_type**, sorted by user_id and event_type in lexicographical order.

### Example Input:

```
2023-07-21 12:00:00 user1 click 10
2023-07-21 12:00:05 user1 view 5
2023-07-21 12:01:00 user2 click 15
2023-07-21 12:02:00 user1 click 5
2023-07-21 12:03:00 user2 view 8
```

### Expected Output:

```
user1 click 15
user1 view 5
user2 click 15
user2 view 8
```

### Requirements:

- You must use only `awk` in your solution.
- Do not use `sort` or any external utilities other than `awk`.
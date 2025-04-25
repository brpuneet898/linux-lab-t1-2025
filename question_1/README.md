## Question: List All Files with Details

Write a shell command that lists **all files** (including hidden files) in the current directory in **long listing format**, sorted by **modification time**, most recent first.

Save the command in a file named `solution.sh`.

### Example
Suppose the directory contains:

- `.hidden.txt`
- `file1.txt`
- `file2.txt`

Then running your script should display:
-rw-r--r-- 1 user user 0 Apr 20 14:03 file2.txt
-rw-r--r-- 1 user user 0 Apr 20 14:00 file1.txt
-rw-r--r-- 1 user user 0 Apr 19 13:00 .hidden.txt
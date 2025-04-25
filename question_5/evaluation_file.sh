#!/bin/bash
echo "Log Start" > timestamps.txt
chmod +x solution.sh

echo "Running Public Test..."
./solution.sh
lines=$(wc -l < timestamps.txt)
if [ "$lines" -gt 1 ]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
./solution.sh
new_lines=$(wc -l < timestamps.txt)
if [ "$new_lines" -gt "$lines" ]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


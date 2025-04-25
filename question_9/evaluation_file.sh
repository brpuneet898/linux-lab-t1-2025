#!/bin/bash
echo "hello world test line" > f.txt
chmod +x solution.sh

echo "Running Public Test..."
out_pub=$(./solution.sh f.txt)
if [[ "$out_pub" == "4" ]]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
echo "one two three four five six seven" > f.txt
out_priv=$(./solution.sh f.txt)
if [[ "$out_priv" == "7" ]]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi
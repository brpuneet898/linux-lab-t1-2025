#!/bin/bash
chmod +x solution.sh

echo "Running Public Test..."
out_pub=$(./solution.sh 6)
expected_pub=$'2\n4\n6'
if [[ "$out_pub" == "$expected_pub" ]]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
out_priv=$(./solution.sh 10)
expected_priv=$'2\n4\n6\n8\n10'
if [[ "$out_priv" == "$expected_priv" ]]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


#!/bin/bash
chmod +x solution.sh

echo "Running Public Test..."
public_output=$(./solution.sh)
expected_public=$(ls -lat)

if [[ "$public_output" == "$expected_public" ]]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
private_output=$(./solution.sh)
expected_private=$(ls -lta)

if [[ "$private_output" == "$expected_private" ]]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi

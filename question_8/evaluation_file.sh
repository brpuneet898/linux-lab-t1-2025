#!/bin/bash
chmod +x solution.sh

echo "Running Public Test..."
out_pub=$(./solution.sh 5)
if [[ "$out_pub" == "15" ]]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
out_priv=$(./solution.sh 10)
if [[ "$out_priv" == "55" ]]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


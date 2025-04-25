#!/bin/bash
chmod +x solution.sh

echo -e "Line1\nLine2\nLine3" > f.txt
echo "Running Public Test..."
out_pub=$(./solution.sh f.txt)
expected_pub=$'Line3\nLine2\nLine1'
if [[ "$out_pub" == "$expected_pub" ]]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo -e "A\nB\nC\nD" > f.txt
echo "Running Private Test..."
out_priv=$(./solution.sh f.txt)
expected_priv=$'D\nC\nB\nA'
if [[ "$out_priv" == "$expected_priv" ]]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


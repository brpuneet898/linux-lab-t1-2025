#!/bin/bash
pass=true

check_case() {
    input=$1
    expected=$2
    output=$(./solution.sh "$input")
    correct=$(<"$expected")
    if [[ "$output" == "$correct" ]]; then
        echo "[PASS] $input"
    else
        echo "[FAIL] $input"
        echo "Expected:"
        echo "$correct"
        echo "Got:"
        echo "$output"
        pass=false
    fi
}

chmod +x solution.sh

echo "Running Public Test Cases..."
check_case testcases/public_input1.txt testcases/public_output1.txt

echo "Running Private Test Cases..."
check_case testcases/private_input1.txt testcases/private_output1.txt

if [ "$pass" = true ]; then
    echo "✅ All test cases passed!"
    exit 0
else
    echo "❌ Some test cases failed."
    exit 1
fi

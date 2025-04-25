
#!/bin/bash
check_output() {
    input_file="$1"
    expected_output_file="$2"
    result=$(./solution.sh "$input_file")
    expected=$(cat "$expected_output_file")
    if [ "$result" == "$expected" ]; then
        echo "PASS: $input_file"
    else
        echo "FAIL: $input_file"
        echo "Expected:"
        echo "$expected"
        echo "Got:"
        echo "$result"
        exit 1
    fi
}

chmod +x solution.sh

check_output public_input.txt public_output.txt
check_output private_input.txt private_output.txt

echo "All tests passed!"
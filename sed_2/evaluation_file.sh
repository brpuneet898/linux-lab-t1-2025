#!/bin/bash

set -e

run_test() {
  local input=$1
  local expected=$2

  local output
  output=$(mktemp)

  bash solution.sh "$input" > "$output"

  if diff -q "$output" "$expected" > /dev/null; then
    echo "[PASS] $(basename "$input")"
  else
    echo "[FAIL] $(basename "$input")"
    echo "Expected:"
    cat "$expected"
    echo "Got:"
    cat "$output"
  fi
}

echo "Running Public Test Cases..."
run_test testcases/public_input1.txt testcases/public_output1.txt

echo "Running Private Test Cases..."
run_test testcases/private_input1.txt testcases/private_output1.txt

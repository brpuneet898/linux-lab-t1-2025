#!/bin/bash

pass=true

echo "Running Public Test Cases..."
for input in testcases/public_input*.txt; do
  output="testcases/$(basename "$input" .txt)_output.txt"
  expected="testcases/$(basename "$input" .txt)_expected.txt"
  bash solution.sh "$input" > "$output"
  if diff -q "$output" "$expected" > /dev/null; then
    echo "[PASS] $(basename "$input")"
  else
    echo "[FAIL] $(basename "$input")"
    echo "Expected:"
    cat "$expected"
    echo "Got:"
    cat "$output"
    pass=false
  fi
done

echo "Running Private Test Cases..."
for input in testcases/private_input*.txt; do
  output="testcases/$(basename "$input" .txt)_output.txt"
  expected="testcases/$(basename "$input" .txt)_expected.txt"
  bash solution.sh "$input" > "$output"
  if diff -q "$output" "$expected" > /dev/null; then
    echo "[PASS] $(basename "$input")"
  else
    echo "[FAIL] $(basename "$input")"
    echo "Expected:"
    cat "$expected"
    echo "Got:"
    cat "$output"
    pass=false
  fi
done

if $pass; then
  echo "✅ All test cases passed!"
else
  echo "❌ Some test cases failed."
fi
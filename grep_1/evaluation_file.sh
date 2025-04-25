#!/bin/bash

check_case() {
  input_file=$1
  expected_output=$2
  tmp_output=$(mktemp)

  cp "$input_file" input.txt
  chmod +x solution.sh
  ./solution.sh > "$tmp_output"

  if diff -u "$expected_output" "$tmp_output" > /dev/null; then
    echo "[PASS] $input_file"
  else
    echo "[FAIL] $input_file"
    echo "--- Expected ---"
    cat "$expected_output"
    echo "--- Got ---"
    cat "$tmp_output"
    echo "--- Diff ---"
    diff -u "$expected_output" "$tmp_output"
  fi

  rm -f "$tmp_output" input.txt
}

echo "Evaluating public test case..."
check_case testcases/public/input.txt testcases/public/output.txt

echo
echo "Evaluating private test case..."
check_case testcases/private/input.txt testcases/private/output.txt
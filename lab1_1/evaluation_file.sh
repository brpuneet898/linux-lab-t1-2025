#!/bin/bash

echo "Evaluating pattern_filter.sh..."

for i in {1..4}; do
  echo "Test Case $i"

  cp test_case$i/input.txt input.txt
  cp /dev/null output.txt  

  pattern=$(cat test_case$i/pattern.txt)

  ./pattern_filter.sh "$pattern"

  if diff -q output.txt test_case$i/output.txt > /dev/null; then
    echo "✅ Passed"
  else
    echo "❌ Failed"
    echo "--- Expected ---"
    cat test_case$i/output.txt
    echo "--- Got ---"
    cat output.txt
  fi

  echo
done
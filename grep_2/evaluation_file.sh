#!/bin/bash

pass=true

for dir in public_testcases private_testcases; do
  echo "Running tests in $dir..."
  cp "$dir/data.txt" data.txt
  output=$(bash solution.sh)

  if diff <(echo "$output") "$dir/expected.txt"; then
    echo "$dir: ✅ Passed"
  else
    echo "$dir: ❌ Failed"
    pass=false
  fi
done

if $pass; then
  echo "All tests passed! 🎉"
  exit 0
else
  echo "Some tests failed."
  exit 1
fi
#!/bin/bash
echo -e "line1\nline2\nline3" > sample.txt
chmod +x solution.sh

echo "Running Public Test..."
./solution.sh > output_public.txt
if grep -q '^3' output_public.txt; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo -e "one\ntwo\nthree\nfour\nfive" > sample.txt
./solution.sh > output_private.txt
if grep -q '^5' output_private.txt; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi

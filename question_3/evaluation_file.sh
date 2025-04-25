#!/bin/bash
touch a.txt b.txt
chmod +x solution.sh

echo "Running Public Test..."
./solution.sh
if grep -q "a.txt" file_list.txt && grep -q "b.txt" file_list.txt; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
touch x.txt y.txt
./solution.sh
if grep -q "x.txt" file_list.txt && grep -q "y.txt" file_list.txt; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


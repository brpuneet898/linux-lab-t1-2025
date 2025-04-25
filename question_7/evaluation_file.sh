#!/bin/bash
echo "hello" > test.txt
chmod +x solution.sh

echo "Running Public Test..."
out1=$(./solution.sh test.txt)
out2=$(./solution.sh missing.txt)
if [[ "$out1" == "File exists" && "$out2" == "File does not exist" ]]; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo "Running Private Test..."
touch data.log
out3=$(./solution.sh data.log)
rm data.log
out4=$(./solution.sh data.log)
if [[ "$out3" == "File exists" && "$out4" == "File does not exist" ]]; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


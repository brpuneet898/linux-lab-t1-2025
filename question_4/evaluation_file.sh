#!/bin/bash
echo -e "INFO OK\nERROR Disk full\nINFO OK\nERROR Timeout" > log.txt
chmod +x solution.sh

echo "Running Public Test..."
./solution.sh > out_pub.txt
if grep -q "ERROR Disk full" out_pub.txt && grep -q "ERROR Timeout" out_pub.txt; then
    echo "Public Test Passed"
else
    echo "Public Test Failed"
fi

echo -e "INFO Init\nERROR Boot fail\nWARNING CPU" > log.txt
./solution.sh > out_priv.txt
if grep -q "ERROR Boot fail" out_priv.txt && ! grep -q "INFO" out_priv.txt; then
    echo "Private Test Passed"
else
    echo "Private Test Failed"
fi


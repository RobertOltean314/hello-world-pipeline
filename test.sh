#!/bin/bash

# Check if the program runs without errors
./hello > output.txt
if [ $? -ne 0 ]; then
    echo "Test failed: Program exited with an error."
    exit 1
fi

# Check if the output matches the expected string
if grep -xq "Hello world!" output.txt; then
    echo "Test passed: Output is correct."
    exit 0
else
    echo "Test failed: Output does not match." >&2
    exit 1
fi

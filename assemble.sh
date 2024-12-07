#!/bin/bash

# Check if enough arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <source_file.asm> <output_binary>"
    exit 1
fi

# Capture arguments
SOURCE_FILE=$1
OUTPUT_FILE=$2

# Assemble the source file with nasm
nasm -f elf64 "$SOURCE_FILE" -o "${OUTPUT_FILE}.o"
if [ $? -ne 0 ]; then
    echo "Assembly failed. Please check the errors above."
    exit 1
fi

# Link the object file
ld "${OUTPUT_FILE}.o" -o "$OUTPUT_FILE"
if [ $? -ne 0 ]; then
    echo "Linking failed. Please check the errors above."
    exit 1
fi

echo "Assembly and linking successful! Output: ${OUTPUT_FILE}"
exit 0

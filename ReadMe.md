## Assembly Language "Hello, World!" Program for x86-64 on Linux
This project demonstrates how to set up and use assembly language to create a simple "Hello, World!" program in a 64-bit Linux environment. It includes scripts to compile, link, and test the assembly code.
### Table of Content
* Prerequisites
* Setup
* Usage
* Running Tests
* Files
### Prerequisites
* A Linux environment (preferably a Debian distribution ex: Ubuntu or Debian).
* NASM (Netwide Assembler) installed.
* ld (GNU linker) installed.
* Bash shell.
### Installation of Prerequisites
You can install nasm and ld via your package manager if they are not already installed:
    sudo apt update
    sudo apt install nasm
    sudo apt install binutils
### Notes
* Ensure the system’s nasm and ld tools are available in the PATH.
* This code assumes a 64-bit Linux environment.
* Adjust paths and commands in the scripts if necessary depending on your setup.
# Setup

#### Make the Scripts Executable:
    chmod +x assemble.sh
    chmod +x test.sh

### Build the Program
    ./assemble.sh hello.asm hello

#### This script:

* Assembles the "hello.asm" file into an object file (hello.o).
* Links the object file to produce an executable hello.
* Outputs messages to indicate successful assembly and linking.

### Run the Program
    ./hello
### Run the Test Script
    ./test.sh
This script:
* Executes the hello program.
* Captures its output to output.txt.
* Checks if the output matches the expected string ("Hello world!\n").
* Reports the test result: "Test passed" if the output is correct, otherwise, it fails and prints an error message.

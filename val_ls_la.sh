#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <shell_executable>"
	exit 1
fi

valgrind echo "ls -la" | ./$1
echo " "
echo "\"ls -la\"" $? "the result should be 0"

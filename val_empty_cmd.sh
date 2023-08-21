#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <shell_executable>"
	exit 1
fi

valgrind echo "       " | ./$1
echo " "
echo "\"       \"" $? "the result should be 0"

#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <shell_executable>"
	exit 1
fi

valgrind echo "gibberish" | ./$1
echo "\"gibberish\" $? the result should be 127"

#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <shell_executable>"
	exit 1
fi

echo "       " | ./$1
echo "\"       \"" $? "the result should be 0"

echo "ls" | ./$1
echo "\"ls\"" $? "the result should be 0"

echo "ls /aaaaaa" | ./$1
echo "\"ls /aaaaaaa\"" $? "the result should be 2"

echo "thiscommanddoesntexist" | ./$1
echo "\"thiscommanddoesntexist\"" $? "the result should be 127"

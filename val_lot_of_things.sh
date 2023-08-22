#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <shell_executable>"
	exit 1
fi

valgrind -s echo "ls

ls
ls /aaaaaa
ls
thiscommanddoesntexist
/bin/ls /var
a a a a a a a a a a a a
ls
exit" | ./$1

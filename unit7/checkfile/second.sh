#!/bin/bash

if [ $# -ne 1 ]; then
echo "Usage: $0 <filename>"
exit 1
fi

file="$1"

if [ -e "$file" ]; then
echo "File exists: $file"
echo "----- contents -----"
cat -- "$file"
else
echo "File '$file' does not exist."
read -p "Create it now? (y/n):" ans
case "$ans" in
[Yy]*) touch "$file"; echo "created $file" ;;
*) echo "file not created."
esac
fi
#!/bin/bash
read -p "Enter the value:" a
test $a -eq 0 >/dev/null 2>&1
if [ $? -eq 2 ]; then
echo "the value you have entered is not a integer"
else
echo "the value you have entered is a integer"
fi

#!/bin/bash
var=$1
MYFUNC() {
service $1 status
}
MYFUNC
if [ $? == 0 ]; then
echo "package is allready installed"
service $1 status
service $1 restart
else 
yum install -y $1
service $1 status
service $1 start
echo "package successfully installed"
fi



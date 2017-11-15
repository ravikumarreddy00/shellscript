#!/bin/bash
MYFUNC(){
service finger status
}
MYFUNC
if [ $? = 0 ]; then
echo "My Function is allready installed"
exit
elif [ $? != 0 ]; then
yum install finger -y
else
echo "My Function success"
fi


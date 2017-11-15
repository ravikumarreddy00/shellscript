#!/bin/bash
var=$1
rpm -qa |grep $1
if [ $? == 0 ]; then
echo "package is all ready installed"
else
yum install $1 -y
echo "package success fully installed" 
fi

        
  

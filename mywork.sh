#!/bin/bash
rpm -qa |grep httpd
if [ "$?" = "0" ]; then
echo " service exicuted succesfully"
exit 
elif [ "$?" ne "0" ]; then
echo "we need to install the service"
yum install httpd -y
rpm -qa |grep httpd
else "service is installed"
fi


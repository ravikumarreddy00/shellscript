#!/bin/bash
for packages in httpd,vsftpd
do
rpm -qa | grep $packages
if [ $? == 0 ]; then
echo "package allready installed"
else
yum install -y $packages
fi 
done

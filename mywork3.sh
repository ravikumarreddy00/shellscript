#!/bin/bash
rpm -qa |grep httpd
service httpd status
if [ "$?" = "0" ]; then
watch service httpd status
exit
elif [ "$?" != "0" ]; then
yum install httpd -y
service httpd restart
chkconfig httpd on
watch service httpd status
else
echo "non need to do anything"
fi

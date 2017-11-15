#!/bin/bash
rpm -qa |grep vsftpd
while [ "$!" != "0" ]
do
echo "service not installed successfully"
if [ "$!" != "0" ]; then
yum install vsftpd -y
service vsftpd status
exit
fi
done

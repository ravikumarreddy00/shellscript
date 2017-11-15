#!/bin/bash
for packages in httpd vsftpd
do
rpm -qa |grep $packages
service $packages status
service $packages start
netstat -plant|grep $packages
ps aux|grep $packages
done

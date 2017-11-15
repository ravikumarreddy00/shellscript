#!/bin/bash
select var in linux unix
do 
case $var in 
linux) cat /etc/issue; break;;
unix) uname -a; break;;
esac
done

#!/bin/bash
select servers in `cat server`
do 
ssh -qT $servers
done

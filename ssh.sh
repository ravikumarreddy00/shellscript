#!/bin/bash
read -p "which server do you want to connect to: " server_name
read -p "which username do you want to use: " user_name
ssh $user_name@$server_name 

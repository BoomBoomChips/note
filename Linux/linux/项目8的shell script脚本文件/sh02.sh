#!/bin/bash
# Program:
#	User inputs his first name and last name.  Program shows his full name.
# History:
# 2012/08/23	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname  # ��ʾʹ��������J
read -p "Please input your last name:  " lastname   # ��ʾʹ��������J
echo -e "\nYour full name is: $firstname $lastname" # �������Ļ���
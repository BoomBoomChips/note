#!/bin/bash
# Program:
#	This script only accepts the flowing parameter: one, two or three.
# History:
# 2012/08/29	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will print your selection !"
# read -p "Input your choice: " choice # ��ʱȡ���������滻����10�С�
# case $choice in                      # ��ʱȡ���������滻����11�С�
case $1 in                             # ����ʹ�ã����������������滻����12�С�
  "one")
	echo "Your choice is ONE"
	;;
  "two")
	echo "Your choice is TWO"
	;;
  "three")
	echo "Your choice is THREE"
	;;
  *)
	echo "Usage $0 {one|two|three}"
	;;
esac

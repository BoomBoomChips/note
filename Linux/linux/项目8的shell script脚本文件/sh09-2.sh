#!/bin/bash
# Program:
# 	Show "Hello" from $1.... by using case .... esac
# History:
# 2012/08/29	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case $1 in
  "hello")
	echo "Hello, how are you ?"
	;;
  "")
	echo "You MUST input parameters, ex> {$0 someword}"
	;;
  *)   # ��ʵ���൱��ͨ�����0~�����������ַ�֮�⣡
	echo "Usage $0 {hello}"
	;;
esac

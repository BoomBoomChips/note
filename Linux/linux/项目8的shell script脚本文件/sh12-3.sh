#!/bin/bash
# Program:
#	Use function to repeate information.
# History:
# 2012/08/29	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit(){
	echo "Your choice is $1"   # 这个 $1 必须参考下面命令的执行
}

echo "This program will print your selection !"
case $1 in
  "one")
	printit 1  # 请注意， printit 命令后面还有参数！
	;;
  "two")
	printit 2
	;;
  "three")
	printit 3
	;;
  *)
	echo "Usage $0 {one|two|three}"
	;;
esac

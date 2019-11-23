#!/bin/bash
# Program:
# 	Using netstat and grep to detect WWW,SSH,FTP and Mail services.
# History:
# 2012/08/28	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#  1. 先作一些告诉的动作
echo "Now, I will detect your Linux server's services!"
echo -e "The www, ftp, ssh, and mail will be detect! \n"

#  2. 开始进行一些测试的工作，并且也输出一些信息！
testing=$(netstat -tuln | grep ":80 ")   # 检测看 port 80存在否？ 
if [ "$testing" != "" ]; then
	echo "WWW is running in your system."
fi
testing=$(netstat -tuln | grep ":22 ")   # 检测看 port  22 存在否？
if [ "$testing" != "" ]; then
	echo "SSH is running in your system."
fi
testing=$(netstat -tuln | grep ":21 ")   # 检测看 port 21 存在否？
if [ "$testing" != "" ]; then
	echo "FTP is running in your system."
fi
testing=$(netstat -tuln | grep ":25 ")   # 侦测看 port 25 存在否？
if [ "$testing" != "" ]; then
	echo "Mail is running in your system."
fi

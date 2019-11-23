#!/bin/bash
# Program:
# 	Using netstat and grep to detect WWW,SSH,FTP and Mail services.
# History:
# 2012/08/28	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#  1. ����һЩ���ߵĶ���
echo "Now, I will detect your Linux server's services!"
echo -e "The www, ftp, ssh, and mail will be detect! \n"

#  2. ��ʼ����һЩ���ԵĹ���������Ҳ���һЩ��Ϣ��
testing=$(netstat -tuln | grep ":80 ")   # ��⿴ port 80���ڷ� �b�_�H
if [ "$testing" != "" ]; then
	echo "WWW is running in your system."
fi
testing=$(netstat -tuln | grep ":22 ")   # ��⿴ port  22 ���ڷ�
if [ "$testing" != "" ]; then
	echo "SSH is running in your system."
fi
testing=$(netstat -tuln | grep ":21 ")   # ��⿴ port 21 ���ڷ�
if [ "$testing" != "" ]; then
	echo "FTP is running in your system."
fi
testing=$(netstat -tuln | grep ":25 ")   # ��⿴ port 25 ���ڷ�
if [ "$testing" != "" ]; then
	echo "Mail is running in your system."
fi

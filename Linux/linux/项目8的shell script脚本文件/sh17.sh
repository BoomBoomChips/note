#!/bin/bash
# Program
#       Use ping command to check the network's PC state.
# History
# 2013/02/18    Bobby   first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
network="192.168.1"              # �ȶ���һ������ţ�����ID����
for sitenu in $(seq 1 100)       # seq Ϊ sequence(����) ����д֮��
do
	# ��������ȡ�� ping �Ļش�ֵ����ȷ�Ļ���ʧ�ܵģ�
        ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
        if [ "$result" == 0 ]; then
                echo "Server ${network}.${sitenu} is UP."
        else
                echo "Server ${network}.${sitenu} is DOWN."
        fi
done

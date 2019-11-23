#!/bin/bash
# Program
#       Use ping command to check the network's PC state.
# History
# 2013/02/18    Bobby   first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
network="192.168.1"              # 先定义一个网络号（网络ID）！
for sitenu in $(seq 1 100)       # seq 为 sequence(连续) 的缩写之意
do
	# 下面的语句取得 ping 的回传值是正确的还是失败的！
        ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
        if [ "$result" == 0 ]; then
                echo "Server ${network}.${sitenu} is UP."
        else
                echo "Server ${network}.${sitenu} is DOWN."
        fi
done

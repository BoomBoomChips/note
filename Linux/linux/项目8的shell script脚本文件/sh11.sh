#!/bin/bash
# Program:
#	You input your demobilization date, I calculate how many days
#	before you demobilize.
# History:
# 2012/08/29	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. ����ʹ��������������;�����Ҹ���Ӧ������������ڸ�ʽ��
echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20090401): " date2

#  2. ����һ�£��������������Ƿ���ȷ������������ʽ
date_d=$(echo $date2 |grep '[0-9]\{8\}')   # �ݬݬO�_���K�ӼƦr
if [ "$date_d" == "" ]; then
	echo "You input the wrong date format...."
	exit 1
fi

# 3. ��ʼ��������
declare -i date_dem=`date --date="$date2" +%s`    # ��������������ע��+ǰ��Ŀո�
declare -i date_now=`date +%s`                    # ��������������ע��+ǰ��Ŀո�
declare -i date_total_s=$(($date_dem-$date_now))  # ʣ������ͳ��
declare -i date_d=$(($date_total_s/60/60/24))     # תΪ�������ó�������һ��=24*60*60���룩��
if [ "$date_total_s" -lt "0" ]; then              # �ж��Ƿ�������
	echo "You had been demobilization before: " $((-1*$date_d)) " ago"
else
	declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
	echo "You will demobilize after $date_d days and $date_h hours."
fi

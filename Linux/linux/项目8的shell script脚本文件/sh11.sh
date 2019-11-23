#!/bin/bash
# Program:
#	You input your demobilization date, I calculate how many days
#	before you demobilize.
# History:
# 2012/08/29	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 告诉使用者这个程序的用途，并且告诉应该如何输入日期格式？
echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20090401): " date2

#  2. 测试一下，这个输入的内容是否正确？利用正则表达式
date_d=$(echo $date2 |grep '[0-9]\{8\}')   # 琌Τ计
if [ "$date_d" == "" ]; then
	echo "You input the wrong date format...."
	exit 1
fi

# 3. 开始计算日期
declare -i date_dem=`date --date="$date2" +%s`    # 退伍日期秒数，注意+前面的空格
declare -i date_now=`date +%s`                    # 现在日期秒数，注意+前面的空格
declare -i date_total_s=$(($date_dem-$date_now))  # 剩余秒数统计
declare -i date_d=$(($date_total_s/60/60/24))     # 转为日数，用除法。（一天=24*60*60（秒））
if [ "$date_total_s" -lt "0" ]; then              # 判断是否已退伍
	echo "You had been demobilization before: " $((-1*$date_d)) " ago"
else
	declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
	echo "You will demobilize after $date_d days and $date_h hours."
fi

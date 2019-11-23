#!/bin/bash
# Program:
#	Program creates three files, which named by user's input 
#	and date command.
# History:
# 2012/08/23	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 让使用者输入文件名称，并取得 fileuser 这个变量；
echo -e "I will use 'touch' command to create 3 files." #纯粹显示信息 
read -p "Please input your filename: " fileuser         # 提示用户输入

#2. 为了避免用户随意按 Enter ，利用变量功能分析文件名是否设置？
filename=${fileuser:-"filename"}           # 开始判断是否设置了文件名

#  3. 开始利用 date 命令来取得所需要的文件名了；
date1=$(date --date='2 days ago' +%Y%m%d)  #前两天的日期，注意+号前面有个空格 
date2=$(date --date='1 days ago' +%Y%m%d)  # 前一天的日期，注意+号前面有个空格 
date3=$(date +%Y%m%d)                      # 今天的日期 
file1=${filename}${date1}                  # 底下三行在设置文件名
file2=${filename}${date2}
file3=${filename}${date3}

# 4. 创建文件
touch "$file1"                             # 底下三行在创建文件
touch "$file2"
touch "$file3"

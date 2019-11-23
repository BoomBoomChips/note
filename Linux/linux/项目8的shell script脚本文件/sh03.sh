#!/bin/bash
# Program:
#	Program creates three files, which named by user's input 
#	and date command.
# History:
# 2012/08/23	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. ��ʹ���������ļ����ƣ���ȡ�� fileuser ����������F
echo -e "I will use 'touch' command to create 3 files." #������ʾ��Ϣ 
read -p "Please input your filename: " fileuser         # ��ʾ�û�����J

#2. Ϊ�˱����û����ⰴ Enter �����ñ������ܷ����ļ����Ƿ����ã��H
filename=${fileuser:-"filename"}           # ��ʼ�ж��Ƿ��������ļ����W

#  3. ��ʼ���� date ������ȡ������Ҫ���ļ����ˣ��W�F�F
date1=$(date --date='2 days ago' +%Y%m%d)  #ǰ��������ڣ�ע��+��ǰ���и��ո� 
date2=$(date --date='1 days ago' +%Y%m%d)  # ǰһ������ڣ�ע��+��ǰ���и��ո� 
date3=$(date +%Y%m%d)                      # ��������� 
file1=${filename}${date1}                  # ���������������ļ����W
file2=${filename}${date2}
file3=${filename}${date3}

# 4. �����ļ��a�I
touch "$file1"                             # ���������ڴ����ļ���
touch "$file2"
touch "$file3"

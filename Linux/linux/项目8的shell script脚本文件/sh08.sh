#!/bin/bash
# Program:
#	Program shows the effect of shift function.
# History:
# 2013/02/17	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Total parameter number is ==> $#"
echo "Your whole parameter is   ==> '$@'"
shift   #  ���е�һ�Ρ�һ�������� shift ��
echo "Total parameter number is ==> $#"
echo "Your whole parameter is   ==> '$@'"
shift 3 # ���еڶ��Ρ����������� shift ��
echo "Total parameter number is ==> $#"
echo "Your whole parameter is   ==> '$@'"

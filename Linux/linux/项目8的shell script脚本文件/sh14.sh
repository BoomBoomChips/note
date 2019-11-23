#!/bin/bash
# Program:
#	Use loop to calculate "1+2+3+...+100" result.
# History:
# 2012/08/29	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

s=0  # �����ۼӵ���ֵ����
i=0  # �����ۼƵ���ֵ���༴�� 1, 2, 3....
while [ "$i" != "100" ]
do
	i=$(($i+1))   # ÿ�� i ������� 1 
	s=$(($s+$i))  # ÿ�ζ����ۼ�һ�Σ�
done
echo "The result of '1+2+3+...+100' is ==> $s"

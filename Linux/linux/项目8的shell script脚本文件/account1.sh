#!/bin/bash
# 这支程序用来创建新增账号，功能有：
# 1. 检查 account1.txt 是否存在，并将该文件内的账号取出；
# 2. 创建上述文件的账号；
# 3. 将上述账号的口令修订成为『强制第一次进入需要修改口令』的格式。
# 2013/12/30    Bobby.
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

# 检查 account1.txt 是否存在
if [ ! -f account1.txt ]; then
        echo "所需要的账号文件不存在，请创建 account1.txt ，每行一个账号名称"
        exit 1
fi

usernames=$(cat account1.txt)

for username in $usernames
do
        useradd $username                         #<==新增账号
        echo $username | passwd --stdin $username #<==与账号相同的口令
        chage -d 0 $username                      #<==强制登陆修改口令
done


# Name: CentOS base configure on click execute
# Author: Lattie
# Build Time: 2021-06-21 20: 56
# Last Modify Time: 2021-06-21 20:57
#!/bin/bash

# modify yum repo
echo -e "Modify yum repo.\n"

mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

echo ""

echo -ne "Choose CentOS version："

read version_number

echo " \
1. CentOS 5 \
2. CentOS 6 \
3. CentOS 7"

if [ $version_number == "2" ]
then
    wget http://mirrors.163.com/.help/CentOS6-Base-163.repo -O /etc/yum.repos.d/CentOS-Base.repo
    yum clean all
    yum makecache
    yum repolist
else [ $version_number == "3" ]
then
    wget http://mirrors.163.com/.help/CentOS7-Base-163.repo -O /etc/yum.repos.d/CentOS-Base.repo
    yum clean all
    yum makecache
    yum repolist
else [ $version_number == "1" ]
then
    wget http://mirrors.163.com/.help/CentOS5-Base-163.repo -O /etc/yum.repos.d/CentOS-Base.repo
    yum clean all
    yum makecache
    yum repolist
# install soft
yum_soft_base=("iptables-services" "vim" "wget")
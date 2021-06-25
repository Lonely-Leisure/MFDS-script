# Name: CentOS base configure on click execute
# Author: Lonely Leisure
# Build Time: 2021-06-21 20: 56
# Last Modify Time: 2021-06-25 09:22
#!/bin/bash

# modify yum repo

# variable
yum_site_list=("163" "aliyun" "tsinghua")
yum_soft_base=("iptables-services" "vim" "wget")
yum_repo_aliyun=("http://mirrors.aliyun.com/repo/Centos-5.repo" "http://mirrors.aliyun.com/repo/Centos-6.repo" "http://mirrors.aliyun.com/repo/Centos-7.repo")
yum_repo_163=("http://mirrors.163.com/.help/CentOS5-Base-163.repo" "http://mirrors.163.com/.help/CentOS6-Base-163.repo" "http://mirrors.163.com/.help/CentOS7-Base-163.repo")

# function
ChooseYumSite(){
    if [ $1 == "aliyun" ]
    then
        ChooseSystemVersion
        DownloadYumFile $choose
    else [ $1 == "163" ]
    then
        ChooseSystemVersion
        DownloadYumFile $choose
    if [$1 == "tsinghua" ]
    then
        ChooseSystemVersion
        DownloadYumFile $choose
    fi 
}

ChooseSystemVersion(){
    read -p "Choose system version: \
    1. CentOS7 \
    2. CentOS6 \
    3. CentOS5" $choose
}

DownloadYumFile(){
    if [ $1 == "1" ]
    then
        wget $2 -O /etc/yum.repos.d/CentOS-Base.repo
        yum clean all
        yum makecache
        yum repolist
    else [ $1 == "2" ]
    then
        wget $2 -O /etc/yum.repos.d/CentOS-Base.repo
        yum clean all
        yum makecache
        yum repolist
    else [ $1 == "3" ]
    then
        wget $2 -O /etc/yum.repos.d/CentOS-Base.repo
        yum clean all
        yum makecache
        yum repolist
    fi
}

read -p "Choose yum site: \
1. Aliyun \
2. 163 \
3. Tsinghua" $choose

ChooseYumSite $choose
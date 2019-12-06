#!/bin/bash
while :
do 
uptime | awk -F: '{print "CPU平均负载是"$5}'
ifconfig eth0 | awk '/RX p/{print "网卡接收流量是　"$5}'
ifconfig eth0 | awk '/TX p/{print "网卡发送流量是　"$5}'
free -h | awk '/Mem/{print "内存剩余流量是"$4}'
df -h | awk '/vda1/{print "磁盘剩余容量"$4}'
awk -F: 'END{print "计算机账户数量是　"NR}' /etc/passwd
a=`who | wc -l`
echo "当前登录账户数量是$a个"
ps aux | awk 'END{print "计算机当前开启的进程数"NR}'
rpm -qa | awk 'END{print "本机已安装的软件包数量"NR}'
sleep 2
clear
done

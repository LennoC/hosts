#!/bin/sh

#创建文件夹
mkdir -p /etc/storage/dnsmasq/dns/conf
##下载hosts规则 /20171214 去掉hosts文件，有需要者自行去掉注释，建议先去了解vokins/yhosts项目后再决定
#cd /etc/storage/dnsmasq/dns
#wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/hosts -O hosts
#sed -i -e '/gay\|uvwxyz\|XiaoQiang\|alfredapp\|dxomark/d' -i -e "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" hosts

#下载dnsmasq规则
cd /etc/storage/dnsmasq/dns/conf
wget --no-check-certificate https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/dnsmasq.conf -O dnsfq;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" dnsfq
wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/ip.conf -O ip.conf;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" ip.conf
wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/union.conf -O union.conf;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" union.conf
#重启dnsmasq
restart_dhcpd



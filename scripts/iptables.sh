#!/bin/sh

/sbin/iptables -F
/sbin/iptables -X

/sbin/iptables -P INPUT DROP
/sbin/iptables -P OUTPUT ACCEPT
/sbin/iptables -P FORWARD DROP

/sbin/iptables -A INPUT -i lo -j ACCEPT
/sbin/iptables -A OUTPUT -o lo -j ACCEPT

/sbin/iptables -A INPUT -s 10.0.0.0/8 -j DROP
/sbin/iptables -A INPUT -s 172.16.0.0/12 -j ACCEPT
/sbin/iptables -A INPUT -s 192.168.0.0/16 -j ACCEPT

/sbin/iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT

/sbin/iptables -A INPUT -s 203.143.96.11,157.14.210.204,203.143.99.206 -p tcp --dport 22345 -j ACCEPT
/sbin/iptables -A INPUT -p tcp --dport 80 -j ACCEPT
/sbin/iptables -A INPUT -p tcp --dport 443 -j ACCEPT
/sbin/iptables -A INPUT -s 203.143.96.11,157.14.210.204,203.143.99.206 -p tcp --dport 40000:40010 -j ACCEPT
/sbin/iptables -A INPUT -s 203.143.96.11,157.14.210.204,203.143.99.206 -p tcp --dport 21 -j ACCEPT

/sbin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

/etc/rc.d/init.d/iptables save

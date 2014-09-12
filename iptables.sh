#!/usr/bin/env bash

SERVERIPADDR="172.16.0.254"
#flush
/usr/sbin/iptables -F
/usr/sbin/iptables -X

#block all
/usr/sbin/iptables -P INPUT DROP
/usr/sbin/iptables -P OUTPUT DROP
/usr/sbin/iptables -P FORWARD DROP

#Allow traffic on loopback interface
/usr/sbin/iptables -A INPUT -i lo -j ACCEPT
/usr/sbin/iptables -A OUTPUT -i lo -j ACCEPT

#Allow SSH
/usr/sbin/iptables -A INPUT -p tcp -s 172.16.0.0/16 -d $SERVERIPADDR --dport 22 -j ACCEPT
/usr/sbin/iptables -A OUTPUT -p tcp -s $SERVERIPADDR -d 172.16.0.0/16 --sport 22 -j ACCEPT

#Allow http traffic
/usr/sbin/iptables -A INPUT -p tcp -s 0/0 -d $SERVERIPADDR --dport 80  -j ACCEPT
/usr/sbin/iptables -A OUTPUT -p tcp -s $SERVERIPADDR -d 0/0 -sport 80  -j ACCEPT

#Allow https traffic
/usr/sbin/iptables -A INPUT -p tcp -s 0/0 -d $SERVERIPADDR --dport 443  -j ACCEPT
/usr/sbin/iptables -A OUTPUT -p tcp -s $SERVERIPADDR -d 0/0 -sport 443  -j ACCEPT


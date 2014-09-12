#!/usr/bin/env bash

yum -y install htop   #we can see per processor utilization
yum -y install iptraf-ng #we can see ip traffic on every interfaces
yum -y install monit #monit is near realtime monitoring (process, load, applications, etc), that also can be viewed for its webserver. for near realtime monitoring we can decrease the checking interval to 5 seconds. 
 

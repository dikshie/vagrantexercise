#!/usr/bin/env bash
#install monitoringtools
/bin/sh installmonitoringtools.sh

#set hostname
/bin/sh sethostname.sh

#set prompt
#not done for changing colour (for root)
/bin/sh setprompt.sh

#set motd
/bin/sh disablemotdssh.sh 

#disable selinux
/bin/sh disableselinux.sh 

#sysctl
#not done, since i dont have any experience for high performance linux.

#set firewall
#i use to use openbsd's pf, so iptabels quite confusing for me. 
/bin/sh iptables.sh

#check fstab
#added noatime, so filesystem does not care for timestamp. 
/bin/sh fstab.sh 
 



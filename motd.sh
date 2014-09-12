#!/usr/bin/env bash

#edit login session for pam
echo 'session    optional     pam_motd.so' >> /etc/pam.d/login

#below commands will be execute by /etc/profile
#so put those on /etc/profile.d/
echo 'USERSCOUNT=`users | wc -l`' >> /etc/profile.d/motd.sh
echo "USEDROOTSPACE=`df -h /  |  sed -n 2p | awk '{print $3}'` " >> /etc/profile.d/motd.sh
echo "AVAIROOTSPACE=`df -h /  |  sed -n 2p | awk '{print $4}'` "  >> /etc/profile.d/motd.sh
echo "FREEMEM=`free -m | sed -n 2p | awk '{print $4}'` "  >> /etc/profile.d/motd.sh
echo "echo 'USERCOUNT :' $USERSCOUNT"  >> /etc/profile.d/motd.sh
echo "echo 'AVAILABLE ROOT SPACE :' $AVAIROOTSPACE" >> /etc/profile.d/motd.sh
echo "echo 'USED ROOT SPACE :' $USEDROOTSPACE" >> /etc/profile.d/motd.sh
echo "echo 'FREE MEMORY ': $FREEMEM" >> /etc/profile.d/motd.sh


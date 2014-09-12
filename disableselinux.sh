#!/usr/bin/env bash
#copy first for backup
/usr/bin/cp /etc/sysconfig/selinux /etc/sysconfig/selinux.old
#then change the value for disabling selinux
/usr/bin/sed 's/SELINUX=permissive/SELINUX=disabled/g' /etc/sysconfig/selinux.old > /etc/sysconfig/selinux 

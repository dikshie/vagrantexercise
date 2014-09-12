#!/usr/bin/env bash
#copy first for backup
/usr/bin/cp /etc/fstab /etc/fstab.old
#then added noatime statement.  
#noatime makes filesystem does not care about timestamp
/usr/bin/sed '8,/defaults/s/defaults/defaults,noatime/g' /etc/fstab.old > /etc/fstab

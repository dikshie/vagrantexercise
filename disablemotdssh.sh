#!/usr/bin/env bash
#copy for backup first
/usr/bin/cp /etc/ssh/sshd_config /etc/ssh/sshd_config.old
#then change the config in sshd_config
/usr/bin/sed 's/#PrintMotd no/PrintMotd no/g' /etc/ssh/sshd_config.old > /etc/ssh/sshd_config



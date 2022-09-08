#!/bin/bash

cd /home/sena/projects/autoware_new/autoware/
modprobe msr
setfacl -m u:volt_sm:r /dev/cpu/*/msr 
setcap 'cap_sys_rawio=ep cap_sys_admin=ep' build/system_monitor/msr_reader
usermod -a -G disk sena
setcap 'cap_sys_rawio=ep cap_sys_admin=ep' build/system_monitor/hdd_reader 
setcap 'cap_sys_rawio=ep cap_sys_admin=ep' build/system_monitor/traffic_reader 
setcap "cap_net_admin,cap_net_raw=ep" /usr/sbin/nethogs


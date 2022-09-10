#!/bin/bash

cd /home/volt/projects/autoware/
modprobe msr
setfacl -m u:volt_sm:r /dev/cpu/*/msr 
setcap 'cap_sys_rawio=ep cap_sys_admin=ep' build/system_monitor/msr_reader
usermod -a -G disk volt_sm
setcap 'cap_sys_rawio=ep cap_sys_admin=ep' build/system_monitor/hdd_reader 
setcap 'cap_sys_rawio=ep cap_sys_admin=ep' build/system_monitor/traffic_reader 
setcap "cap_net_admin,cap_net_raw=ep" /usr/sbin/nethogs


#!/bin/bash

source /opt/ros/humble/setup.bash
source ~/projects/autoware/install/setup.bash

sleep 10

/home/nuc/projects/autoware/install/ui_process_manager/lib/ui_process_manager/ui_process_manager_second_node --ros-args --params-file /home/nuc/projects/autoware/install/ui_process_manager/share/ui_process_manager/config/ui_process_manager.param.yaml -r in/process_command:=~/ui_process_command -r out/process_result:=~/ui_process_diagnostic -r __ns:=/ui


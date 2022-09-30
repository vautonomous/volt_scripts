#!/bin/bash

source /opt/ros/galactic/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 run rviz2 rviz2 -d ~/projects/volt_scripts/config/autoware.rviz --name rviz_volt -s "IHateTheWorld"

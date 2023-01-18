#!/bin/bash

source /opt/ros/humble/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 run rviz2 rviz2 -d ~/projects/autoware/src/launcher/autoware_launch/autoware_launch/rviz/autoware.rviz --name rviz_volt

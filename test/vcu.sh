#!/usr/bin/env bash

source /opt/ros/humble/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 launch leo_vcu_driver leo_vcu_driver.launch.xml

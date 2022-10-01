#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 launch leo_vcu_driver leo_vcu_driver.launch.xml

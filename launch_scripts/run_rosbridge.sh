#!/bin/bash

source /opt/ros/galactic/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 launch rosbridge_server rosbridge_websocket_launch.xml

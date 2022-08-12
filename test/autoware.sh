#!/usr/bin/env bash

source ~/projects/autoware/install/setup.bash &&
ros2 launch autoware_launch isuzu.launch.xml map_path:=/home/volt/projects/gebze_map vehicle_model:=isuzu_vehicle sensor_model:=isuzu_sensor

#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash && 
source ~/projects/autoware/install/setup.bash &&
cd /home/volt/bags/planning/ &&

ros2 bag record \
/planning/scenario_planning/trajectory \
/planning/scenario_planning/lane_driving/trajectory \
/planning/scenario_planning/lane_driving/behavior_planning/path_with_lane_id \
/planning/scenario_planning/lane_driving/behavior_planning/path

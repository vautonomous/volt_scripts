#!/usr/bin/env bash

source /opt/ros/humble/setup.bash &&
source ~/projects/autoware/install/setup.bash &&
cd /home/volt/bags/planning/ &&

ros2 bag record \
/tf \
/localization/kinematic_state \
/map/vector_map \
/perception/object_recognition/objects \
/perception/obstacle_segmentation/pointcloud \
/perception/occupancy_grid_map/map \
/perception/object_recognition/detection/traffic_signals \
/planning/mission_planning/goal \
/planning/mission_planning/check_point

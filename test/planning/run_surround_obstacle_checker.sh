#!/usr/bin/env bash

source ~/projects/autoware/install/setup.bash &&
ros2 run surround_obstacle_checker surround_obstacle_checker_node \
--ros-args \
-r __ns:=/planning/scenario_planning/lane_driving/motion_planning \
-r __node:=surround_obstacle_checker \
-r surround_obstacle_checker/output/no_start_reason:=/planning/scenario_planning/status/no_start_reason \
-r surround_obstacle_checker/output/stop_reasons:=/planning/scenario_planning/status/stop_reasons \
-r surround_obstacle_checker/output/max_velocity:=/planning/scenario_planning/max_velocity_candidates \
-r surround_obstacle_checker/output/velocity_limit_clear_command:=/planning/scenario_planning/clear_velocity_limit \
-r surround_obstacle_checker/input/pointcloud:=/perception/obstacle_segmentation/pointcloud \
-r surround_obstacle_checker/input/objects:=/perception/object_recognition/objects \
-r surround_obstacle_checker/input/odometry:=/localization/kinematic_state \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/launch/tier4_planning_launch/config/scenario_planning/lane_driving/motion_planning/surround_obstacle_checker/surround_obstacle_checker.param.yaml \
--params-file $HOME/projects/autoware/src/universe/autoware.universe/vehicle/vehicle_info_util/config/vehicle_info.param.yaml

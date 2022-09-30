#!/usr/bin/env bash

dir_main="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
dir_launch_scripts=${dir_main}"/launch_scripts"
#echo ${dir_launch_scripts}

array_path_scripts=()
array_path_scripts+=("/dir_launch_scripts/run_rosbridge.sh")
array_path_scripts+=("/dir_launch_scripts/run_ui_process_manager.sh") # can run autoware
array_path_scripts+=("/dir_launch_scripts/run_navbar_i3.sh") # runs top navbar_i3
array_path_scripts+=("/dir_launch_scripts/run_rviz.sh")
array_path_scripts+=("/dir_launch_scripts/run_mission_observation.sh") # runs mission_observation
array_path_scripts+=("/dir_launch_scripts/run_mission_control.sh") # runs mission_control (goal selection)


function run_in_tab() {
cmd1="bash -c $1"
mate-terminal --tab --command="bash -ic 'echo $cmd1 >> $HOME/.bash_history; trap bash SIGINT; $cmd1 ; bash'"
}

for path_script in "${array_path_scripts[@]}"; do
    run_in_tab "${path_script}"
done

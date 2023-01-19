#!/usr/bin/env bash

DIR_MAIN="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
DIR_LAUNCH_SCRIPTS=${DIR_MAIN}"/launch_scripts"
#echo ${DIR_LAUNCH_SCRIPTS}

array_path_scripts=()
#array_path_scripts+=("/$DIR_LAUNCH_SCRIPTS/run_rosbridge.sh")
array_path_scripts+=("/$DIR_LAUNCH_SCRIPTS/run_ui_process_manager.sh") # can run autoware
array_path_scripts+=("/$DIR_LAUNCH_SCRIPTS/run_navbar_i3.sh") # runs top navbar_i3
array_path_scripts+=("/$DIR_LAUNCH_SCRIPTS/run_rviz.sh")
array_path_scripts+=("/$DIR_LAUNCH_SCRIPTS/run_mission_observation.sh") # runs mission_observation
array_path_scripts+=("/$DIR_LAUNCH_SCRIPTS/run_mission_control.sh") # runs mission_control (goal selection)


function run_in_tab() {
cmd1="bash -c $1"
mate-terminal --tab --command="bash -ic 'echo $cmd1 >> $HOME/.bash_history; trap bash SIGINT; $cmd1 ; bash'"
}

for path_script in "${array_path_scripts[@]}"; do
    run_in_tab "${path_script}"
done

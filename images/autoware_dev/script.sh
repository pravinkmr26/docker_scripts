#!/bin/bash

export PATH="$PATH:/root/.local/bin"

source /opt/ros/humble/setup.bash

export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

alias bashrc='gedit ~/.bashrc'
alias reloadrc='source ~/.bashrc'
export _home=/home/pravinkumar

alias roscd='cd $_home/com/autoware_ext'

alias _export_autoware='source $_home/com/autoware/install/setup.bash'

export ROS_LOCALHOST_ONLY=1
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# source $_home/.dlr-complete.bash
# source $_home/.dlr-analyzer-complete.bash

alias sim_1='$_home/com/awsim/sim_ex/build/1/awsim.x86_64'
alias sim_2='$_home/com/awsim/sim_ex/build/2/awsim.x86_64'

export AUTOWARE_MAP=/home/pravinkumar/autoware_map
export AUTOWARE_PATH=/home/pravinkumar/com/autoware


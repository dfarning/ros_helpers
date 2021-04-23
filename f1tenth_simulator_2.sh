#!/bin/bash
# Apache License 2.0
# Copyright (c) 2018, ROBOTIS CO., LTD.
# Modifications copyright (C) 2021 dfarning@gmail.com

echo ""
echo "[Note] Target OS version  >>> Ubuntu 18.04.x (Bionic Beaver)"
echo "[Note] Target ROS version >>> ROS Melodic Morenia"
echo "[Note] Catkin workspace   >>> $HOME/autosim_ws"
echo ""
echo "PRESS [ENTER] TO CONTINUE THE INSTALLATION"
echo "IF YOU WANT TO CANCEL, PRESS [CTRL] + [C]"
read

echo "[Set the target OS, ROS version and name of catkin workspace]"
name_os_version=${name_os_version:="bionic"}
name_ros_version=${name_ros_version:="melodic"}
name_catkin_workspace=${name_catkin_workspace:="autosim_ws"}

cd $HOME/$name_catkin_workspace
source $HOME/$name_catkin_workspace/devel/setup.bash

cd $HOME/$name_catkin_workspace/src/range_libc/pywrapper
./compile.sh

cd $HOME/$name_catkin_workspace
catkin_make install

mkdir -p $HOME/.gazebo/models/
cp -r $HOME/$name_catkin_workspace/simulator/world/ $HOME/.gazebo/models/

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

sudo apt-get install -y ros-melodic-navigation ros-melodic-teb-local-planner* ros-melodic-ros-control \
    ros-melodic-ros-controllers ros-melodic-gazebo-ros-control ros-melodic-ackermann-msgs ros-melodic-serial qt4-default

echo "[Make the catkin workspace and test the catkin_make]"
mkdir -p $HOME/$name_catkin_workspace/src
cd $HOME/$name_catkin_workspace/src
catkin_init_workspace
cd $HOME/$name_catkin_workspace
catkin_make

cd $HOME/$name_catkin_workspace/src
git clone https://github.com/f1tenth-dev/simulator
git clone https://github.com/mit-racecar/particle_filter
git clone https://github.com/kctess5/range_libc
git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam

#sudo apt install -y python-pip
#sudo -H pip install cython

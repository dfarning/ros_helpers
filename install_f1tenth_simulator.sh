#!/bin/sh

sudo apt-get install -y ros-melodic-navigation ros-melodic-teb-local-planner* ros-melodic-ros-control \
    ros-melodic-ros-controllers ros-melodic-gazebo-ros-control ros-melodic-ackermann-msgs ros-melodic-serial qt4-default

mkdir -p ~/autosim_ws/src
cd ~/autosim_ws/src
catkin_init_workspace

git clone https://github.com/f1tenth-dev/simulator
git clone https://github.com/mit-racecar/particle_filter
git clone https://github.com/kctess5/range_libc
git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam

sudo apt install -y python-pip
sudo -H pip install cython

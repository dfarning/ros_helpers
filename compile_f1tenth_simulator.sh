#!/bin/sh

cd ~/autosim_ws/src/range_libc/pywrapper

./compile.sh

cd ~/autosim_ws
catkin_make install

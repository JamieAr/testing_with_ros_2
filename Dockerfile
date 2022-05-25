from osrf/ros:foxy-desktop

ENV DEBIAN_FRONTEND noninteractive

# USE BASH
SHELL ["/bin/bash", "-c"]
WORKDIR /cramim_ws/src

RUN sudo apt-get update -y
RUN sudo apt-get install -y libtins-dev
RUN sudo apt-get install ros-foxy-tf2-geometry-msgs

RUN source /opt/ros/foxy/setup.bash

COPY ros2_ouster_drivers cramim/ros2_ouster_drivers/

# RUN colcon build
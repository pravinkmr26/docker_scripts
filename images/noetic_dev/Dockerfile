FROM osrf/ros:noetic-desktop-full

WORKDIR /home/pravinkumar

RUN apt-get update 

RUN apt-get install python3-pip ros-noetic-carla-msgs ros-noetic-derived-object-msgs ros-noetic-ackermann-msgs -y

RUN pip3 install -U transforms3d networkx

ENV CARLA_ROOT=/home/pravinkumar/com/carla_root

ENV PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.15-py3.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla:/opt/ros/noetic/local/lib/python3/dist-packages

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 5

RUN apt-get update && apt-get install nano vim git -y

COPY scripts/startup.sh /home/pravinkumar/startup.sh

ENTRYPOINT [ "sh", "/home/pravinkumar/startup.sh" ] 

FROM osrf/ros:humble-desktop-full

# ARG DOCKER_USER=pravinkumar

# WORKDIR /home/$DOCKER_USER

# RUN apt-get update && apt-get install -y libcudnn8=8.9.5.29-1+cuda12.2

# RUN apt-get update && apt-get install -y libnvinfer=8.6.1.6-1+cuda12.0 \ 
#  libnvinfer-plugin=8.6.1.6-1+cuda12.0 libnvparsers=8.6.1.6-1+cuda12.0 libnvonnxparsers=8.6.1.6-1+cuda12.0

# RUN apt-get update && apt-get install -y libcudnn8-dev=8.9.5.29-1+cuda12.2 \
#  libnvinfer-dev=8.6.1.6-1+cuda12.0 \
#  libnvinfer-plugin-dev=8.6.1.6-1+cuda12.0 libnvparsers-dev=8.6.1.6-1+cuda12.0 libnvonnxparsers-dev=8.6.1.6-1+cuda12.0

# RUN apt-get update  && apt-get install python3-pip  ros-humble-ackermann-msgs -y

#ros-humble-carla-msgs ros-humble-derived-object-msgs

# RUN rosdep init && rosdep update && rosdep install ros-foxy-carla-msgs && ros

# RUN pip3 install -U transforms3d networkx

# ENV CARLA_ROOT=/home/pravinkumar/com/carla_root

# ENV PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.15-py3.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.15-cp37-cp37m-manylinux_2_27_x86_64.whl:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla:/opt/ros/humble/local/lib/python3/dist-packages

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 5

RUN apt-get update && apt-get install nano vim git -y

#COPY scripts/startup.sh /home/pravinkumar/startup.sh

#ENTRYPOINT [ "sh", "/home/pravinkumar/startup.sh" ] 
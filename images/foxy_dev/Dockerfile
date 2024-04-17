FROM osrf/ros:foxy-desktop-focal

ARG DOCKER_USER=pravinkumar

WORKDIR /home/$DOCKER_USER

RUN apt-get update  && apt-get install python3-pip ros-foxy-carla-msgs ros-foxy-derived-object-msgs ros-foxy-ackermann-msgs -y

RUN pip3 install -U transforms3d networkx pygame

ENV CARLA_ROOT=/home/pravinkumar/com/carla_root

ENV PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.15-py3.7-linux-x86_64.egg:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.15-cp37-cp37m-manylinux_2_27_x86_64.whl:${CARLA_ROOT}/PythonAPI/carla/agents:${CARLA_ROOT}/PythonAPI/carla:/opt/ros/foxy/local/lib/python3/dist-packages

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 5

RUN apt-get update && apt-get install nano vim git -y

COPY scripts/startup.sh /home/pravinkumar/startup.sh

RUN useradd -rm -d /home/${DOCKER_USER} -s /bin/bash -g root -G sudo ${DOCKER_USER}

#RUN adduser --disabled-password --disabled-login --gecos '' ${DOCKER_USER} sudo

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

#USER $DOCKER_USER

ENTRYPOINT [ "sh", "/home/pravinkumar/startup.sh" ] 




#Try the following lines in Dockerfile:

# RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
# USER ubuntu
# WORKDIR /home/ubuntu
# useradd options (see: man useradd):

# -r, --system Create a system account. see: Implications creating system accounts
# -m, --create-home Create the user's home directory.
# -d, --home-dir HOME_DIR Home directory of the new account.
# -s, --shell SHELL Login shell of the new account.
# -g, --gid GROUP Name or ID of the primary group.
# -G, --groups GROUPS List of supplementary groups.
# -u, --uid UID Specify user ID. see: Understanding how uid and gid work in Docker containers
# -p, --password PASSWORD Encrypted password of the new account (e.g. ubuntu).

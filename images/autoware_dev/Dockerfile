# #FROM amadeuszsz/autoware-universe:humble-latest-cuda-amd64-dev
# FROM anjia0532/ghcr.autowarefoundation.autoware-universe:humble-20230623-cuda

# RUN apt-get update && apt-get install -y ros-humble-velodyne-msgs \
#     libgoogle-glog-dev \
#     ros-humble-sophus \
#     ros-humble-grid-map-costmap-2d \
#     ros-humble-aruco \
#     ros-humble-udp-msgs \
#     ros-humble-velodyne-driver \
#     ros-humble-velodyne-pointcloud \
#     ros-humble-ament-cmake-clang-format \
#     libembree-dev \
#     ros-humble-quaternion-operation \
#     libprotobuf-dev \
#     protobuf-compiler \
#     libprotoc-dev \
#     ros-humble-zmqpp-vendor \ 
#     ros-humble-generate-parameter-library \
#     ros-humble-color-names \
#     ros-humble-lanelet2-matching \
#     libomp-dev \
#     ros-humble-zmqpp-vendor

FROM ghcr.io/autowarefoundation/autoware-universe:humble-latest-cuda

RUN apt-get update && apt-get install -y ros-humble-generate-parameter-library \ 
    ros-humble-ament-cmake-clang-format \ 
    ros-humble-quaternion-operation \
    libembree-dev \
    ros-humble-color-names \
    ros-humble-lanelet2-matching \
    libomp-dev \
    ros-humble-behaviortree-cpp-v3 \
    ros-humble-zmqpp-vendor \
    python3-tqdm \
    python3-transforms3d \
    ros-humble-ament-cmake-nose \
    python3-nose \
    ros-humble-launch-pytest \
    python3-termcolor

RUN pip3 install -U xmlschema yamale transforms3d nuscenes-devkit

RUN apt-get update && apt-get install -y gedit

RUN wget https://github.com/autowarefoundation/autoware-launch-gui/releases/download/v1.0.3/autoware-launch-gui_1.0.3_amd64.deb -O ~/autoware-launch-gui.deb 
RUN sudo apt-get update && sudo apt-get install -y libwebkit2gtk-4.1-0 && dpkg -i ~/autoware-launch-gui.deb

image_name="osrf/ros"
tag="noetic-desktop-full"
#image_name=nvidia_ros
#tag=latest
image_name="noetic"
tag="dev"

container_name="cont-rosnoetic"

if [ "$(docker ps -a --filter name=${container_name} --filter status=running --format {{.Names}})" = ${container_name} ]; then
    echo "Container already running! attaching"
    docker exec -it ${container_name} bash
elif [ "$(docker ps -a --filter name=${container_name} --format {{.Names}})" = ${container_name} ]; then
    echo "Starting container!"
    docker start ${container_name}
    docker exec -it ${container_name} bash
else
    echo "Creating container!"
    docker run --name ${container_name} \
    --rm \
    --privileged \
    --runtime=nvidia \
    -e NVIDIA_DRIVER_CAPABILITIES=compute,utility \
    -e NVIDIA_VISIBLE_DEVICES=all \
    -e SDL_VIDEODRIVER=x11 \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -e QT_X11_NO_MITSHM=1 \
    --net=host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --shm-size=1gb \
    -v $XAUTHORITY:$XAUTHORITY \
    -v $HOME/com:$HOME/com \
    -v $HOME/standalone_apps:$HOME/standalone_apps \
    -v home_drive_noetic:/root \
    -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
    -p 2000-2002:2000-2002 ${image_name}:${tag} bash
fi

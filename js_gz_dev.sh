image_name="gaz"
tag=dev
container_name="cont-${image_name}-${tag}"

if [ "$(docker ps -a --filter name=${container_name} --filter status=running --format {{.Names}})" = ${container_name} ]; then
    echo "Container already running! attaching"
    docker exec -it ${container_name} bash
elif [ "$(docker ps -a --filter name=${container_name} --format {{.Names}})" = ${container_name} ]; then
    echo "Starting container!"
    docker start ${container_name}
    docker exec -it ${container_name} bash
else
    echo "Creating container! ${container_name}"
    docker run --name ${container_name} \
    --rm \
    --privileged \
    --runtime=nvidia \
    -e NVIDIA_DRIVER_CAPABILITIES=compute,utility \
    -e NVIDIA_VISIBLE_DEVICES=all \
    -e SDL_VIDEODRIVER=x11 \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -e TERM  \
    -e QT_X11_NO_MITSHM=1 \
    --net=host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --shm-size=1gb \
    -v $XAUTHORITY:$XAUTHORITY \
    -v /etc/localtime:/etc/localtime:ro \
    -v /home/pravinkumar/com/gz_repo:/home/pravinkumar/com/gz_repo \
    -v /home/pravinkumar/com/gz_repo:/ws \
    -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
    $image_name:$tag bash
fi


# -v home_drive_humble:/root \

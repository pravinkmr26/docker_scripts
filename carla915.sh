image_name="carlasim/carla"
tag="0.9.15"
container_name="cont-carla915"

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
    -e SDL_VIDEODRIVER=x11 \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -e QT_X11_NO_MITSHM=1 \
    --net=host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --shm-size=1gb \
    -v $XAUTHORITY:$XAUTHORITY \
    -v $HOME/com:/home/carla/com \
    -it --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
    -p 2000-2002:2000-2002 ${image_name}:${tag} bash 
fi

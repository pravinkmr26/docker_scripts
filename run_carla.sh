docker run --name carla --privileged --gpus all -it --net=host -e DISPLAY=$DISPLAY -v $HOME/com:/home/carla/com carla_img:latest bash

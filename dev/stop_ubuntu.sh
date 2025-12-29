#!/bin/bash


# we commit container to image, individual image can not be commit
# this will create new image so not work well if we use same name
docker commit ubuntu_container ubuntu_container:working

# docker compose -f ubuntu.yml down
docker compose -f ubuntu.yml down -v

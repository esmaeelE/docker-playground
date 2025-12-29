#!/bin/bash

# first run
# init
docker pull ubuntu:latest
docker run -it -d --name ubuntu_container ubuntu:latest bash
docker commit ubuntu_container ubuntu_container:working
docker rm ubuntu_container -f
####

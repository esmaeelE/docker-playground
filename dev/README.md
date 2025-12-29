# Use docker as development environment

debian images
stable:latest
unstable:slim
debian:armv7

## Old and good way

This is good for running a containerize OS.
So we can have multiple clean os environment to test and use daily.
Our main machine remains clean always.

all shit works done inside isolate contianerize envs.

example for ubuntu

Start

```
docker run -it -d --name ubuntu_container ubuntu:latest  bash

docker attach debian_x86
ctrP, ctrQ
```

Remove

```
docker rm -f container_name
```

add this to bashrc to make works faster

---

```
docker run -it -d --name container_name image bash

example
docker run -it -d --name ubuntu_container ubuntu:latest  bash

docker attach debian_x86
ctrP, ctrQ

remove

docker stop container_name
docker rm container_name

one command
docker rm -f container_name

```

explain
create and run a container under the name of container_name
based on specific image then execute insdie a bash shell.
and detach from.

attach to runnig container with docker attach
hint: for exit: press C p C q
if run C d or type exit all container will shutdown

## Run

### Initilize

```
docker pull ubuntu:latest

docker run -it -d --name ubuntu_container ubuntu:latest  bash
docker commit ubuntu_container ubuntu_container:working

docker rm ubuntu_container -f
```

```
docker compose -f file.yml up -d
```

## Stop

```
docker compose -f file.yml down -v
docker commit ubuntu_container ubuntu_container:working
```

---

docker run -it -d --name debian_container debian:latest  bash

---

Run ssh
/usr/sbin/sshd -D $SSHD_OPTS

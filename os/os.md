# Dockerize OS to build development environment

Use default official image from dockerhub

## Debian
```
docker run -it -d --name debian_os  bash

# Other architecture
docker run -it -d --name debian_arm --platform linux/arm/v7 debian:armv7  bash
```
[other arch](https://github.com/esmaeelE/embedded/blob/main/docker.md)

```
docker pull debian:unstable-slim
docker run -it -d --name debian_unstable debian:unstable-slim  bash
```


## Rocky

```
docker run -it -d --name rucky rockylinux:9.3.20231119-minimal  bash
```

## GUIX

```
docker run -it -d --name guix metacall/guix
```
Use `guix` package manger inside container

## RHEL

```
docker run -it -d --name redhat redhat/ubi9 bash
```

Run command on running container
```
docker exec -it redhat bash
```

## Alpine

```
docker run -it -d --name alpine alpine bash
```

## busybox
```
docker run -it -d --name busybux busybox
```

## kalilinux
```
docker run -it -d --name kali kalilinux/kali-rolling
```

## Attach/Detach
```
docker attach debian_x86
ctrP, ctrQ
```

Consider adding `--rm` to above comamnds remove container after exit.


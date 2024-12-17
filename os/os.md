# Dockerize OS to build development environment

## Debian
```
docker run -it -d --name debian_os  bash

# Other architecture
docker run -it -d --name debian_arm --platform linux/arm/v7 debian:armv7  bash
```
[other arch](https://github.com/esmaeelE/embedded/blob/main/docker.md)

## Rocky

```
docker run -it -d --name rucky rockylinux:9.3.20231119-minimal  bash
```

## RHEL

```
docker run -it -d --name rucky redhat/ubi9 bash
```

## Attach/Detach
```
docker attach debian_x86
ctrP, ctrQ
```

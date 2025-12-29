# Dockerize OS to build development environment

Use default official image from dockerhub

## Detach, Attach

    podman run -it -d --name debian_unstable debian:unstable-slim bash
    podman attach --detach-keys="ctrl-d" debian_unstable

## Debian

Sid debian Unstable to test latest version of programs.

    docker pull debian:unstable-slim
    docker run -it -d --name debian_unstable debian:unstable-slim  bash

    docker run -it -d --name debian_os  bash

    # Other architecture
    docker run -it -d --name debian_arm --platform linux/arm/v7 debian:armv7  bash

[other arch](https://github.com/esmaeelE/embedded/blob/main/docker.md)

## Rocky

    docker run -it -d --name rucky rockylinux:9.3.20231119-minimal  bash

## GUIX

    docker run -it -d --name guix metacall/guix

Use `guix` package manger inside container

## RHEL

    docker run -it -d --name redhat redhat/ubi9 bash
    docker run -it -d --name redhat redhat/ubi10-minimal bash

### Run command on running container

    docker exec -it redhat bash

## Alpine

    docker run -it -d --name alpine alpine bash

## busybox

    docker run -it -d --name busybux busybox

## Arch linux

    docker run -it -d --name archlinux archlinux:latest

## kalilinux

    docker run -it -d --name kali kalilinux/kali-rolling

## Attach/Detach

    docker attach debian_x86
    ctrP, ctrQ

Consider adding `--rm` to above comamnds remove container after exit.
Sid debian Unstable to test latest version of programs.

    docker pull debian:unstable-slim
    docker run -it -d --name debian_unstable debian:unstable-slim  bash

    docker run -it -d --name debian_os  bash

    # Other architecture
    docker run -it -d --name debian_arm --platform linux/arm/v7 debian:armv7  bash

[other arch](https://github.com/esmaeelE/embedded/blob/main/docker.md)

## Rocky

    docker run -it -d --name rucky rockylinux:9.3.20231119-minimal  bash

## GUIX

    docker run -it -d --name guix metacall/guix

Use `guix` package manger inside container

## RHEL

    docker run -it -d --name redhat redhat/ubi9 bash
    docker run -it -d --name redhat redhat/ubi10-minimal bash

Run command on running container

    docker exec -it redhat bash

## Alpine

    docker run -it -d --name alpine alpine bash

## busybox

    docker run -it -d --name busybux busybox

## kalilinux

    docker run -it -d --name kali kalilinux/kali-rolling

## Attach/Detach

    docker attach debian_x86
    ctrP, ctrQ

Consider adding `--rm` to above comamnds remove container after exit.

# Debian image for development

- Use debian stable slim image as base.
- Install packages and configure to make a Development environment.

## Run

    podman build -f Dockerfile -t debian:stable

We cant set image tag inside Dockerfile so use docker-compose

Attach to running container

    podman compose run -d debian
    podman attach --detach-keys=ctrl-d

How to build and run separately with compose

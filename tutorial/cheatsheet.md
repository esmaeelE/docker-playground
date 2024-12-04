# Docker cheatsheet
```
docker ps 
docker ps -a
docker image ls
docker images
docker rmi 
```

## run
```
docker run --name linux -it debian:stable-slim bash
```

## list all commands
Use bash completion write docker then press enter to see docker commands
Tab to see all commands

```
attach     config     create     export     images     kill       logs       pause      pull       rm         search     start      system     unpause    wait
build      container  diff       help       import     load       manifest   plugin     push       rmi        secret     stats      tag        update     
builder    context    events     history    info       login      network    port       rename     run        service    stop       top        version    
commit     cp         exec       image      inspect    logout     node       ps         restart    save       stack      swarm      trust      volume
```

## Get information

### General
```
# General
docker info
docker version

docker system info 
docker system df
docker system prune

docker ps
docker ps -a

# docker htop
docker stats
```

### container
```
docker container ls
docker container inspect container_name or container_id
docker stop
docker start
docker restart
docker ps
docker ps -a
docker logs
docker run
docker exec
docker pause
docker wait
docker export
docker rename
# Clean UP
docker rm
docker rmi
docker kill
docker prune
```

### registry
```
docker search
docker pull
docker push
docker tag
docker login
docker logout
```

### image
```
docker history image_name
docker image ls
docker image rm
docker image build
docker image commit
docker import
```

### network
```
docker network ls
docker network create
docker network rm
docker network connect
docker network disconnect
docker network inspect
docker network network_name or network_id
# port, get port mapping for containers
docker port container_name or container_ip
```

### volume
```
docker volume ls 
docker volume inspect volume_name
docker volume create
docker volume rm
docker kill 
```

### Service
```
docker service ls
docker service ps
docker service crate
docker service update
docker service scale
docker service scale
docker service logs
docker stack services
```

## Daily usage commands

Run an interactive shell inside specific container_name
```
$ docker exec -it container_name bash
```


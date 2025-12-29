# Install

## RHEL

## Debian
```
apt install docker.io docker-compose
```

## Ubuntu
```
apt install docker.io
```


Add current user to docker group
```
sudo usermod -aG docker ${USER}
```

## Test
```
docker ps

docker pull hello-world

docker run -it hello-world
```


## FreeBSD equivalent
jail, run on debootstrap

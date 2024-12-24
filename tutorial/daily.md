## Daily usage commands

Run an interactive shell inside specific container_name
```
$ docker exec -it container_name bash
```


## run docker on server restart 

update running docker container 

`$ docker update --restart=always 84e3c304cdfd`

or on create container

`docker run -v jiraVolume:/var/atlassian/application-data/jira --restart=always --name="jira2" -d -p 8090:8080 atlassian/jira-software`

```
--restart=always not at last
```

## inspect image
```
docker inspect debian:stable-20241202  --format '{{ .Os }}/{{ .Architecture }}'
```

## import export docker image

```
docker save containername | gzip > container.tar.gz
docker load -i container.tar.gz 
```

## Compose
```
docker compose build
docker compose up -d 
docker compose down -v
```

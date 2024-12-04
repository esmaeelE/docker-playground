
## Multistage images for docker


## Docker gui

### portainer as docker UI

* https://github.com/portainer/portainer-compose/blob/master/docker-stack.yml
* https://earthly.dev/blog/portainer-for-docker-container-management/

## projects

* [docker-hello](https://github.com/esmaeelE/docker-hello)
* [docker-example](https://github.com/esmaeelE/docker-examples)

### install run jira on docker 

https://hub.docker.com/r/atlassian/jira-software

find docker latest image version

## Some good project to work on docker

* https://github.com/docker/awesome-compose

## Download docker images 

## Find good alternative

* PODMAN
* [dokcer vs. podman](https://www.knowledgehut.com/blog/devops/docker-vs-podman)

 Left hand side is HOST

[Docker wiki](https://en.wikipedia.org/wiki/Docker_(software))
https://www.ibm.com/topics/docker
https://docs.docker.com/guides/get-started/

Entry
Run process inside container 

CMD
pass argument to Entry

RUN npm run build
?


---

# Containers

container idea use two main feature of linux kernel to implement abstraction to specific process.
by cost of adding extra layer to process running on OS we achive to some isolated platform

Global system characteristic(features)
Namespaces
	PID
	NET
	IPS
	MNT
	
Restrict system resources 
cgroup
	cpu
	mem
	swap
	pid


cadvisor 
	monitor container 

docker volume 
prune       Remove all unused local volumes

https://docker-curriculum.com

---

Docker lets your applications quickly 
	
	build: All steps need to done to create a executable instanse of program.
		example: A C program compile, link required binary or library and genarate ELF executable.
		
	test: ensure binary well doing.
		Running blackbox test, mocking and more.
		
	deploy: transfrom program to destination and ready to run.
		move executable to destination server and run

Docker packages software into standardized units
called containers
that have everything the software needs to run including 
	libraries, 
	system tools, 
	code, 
	and runtime.

Docker use container concepts 
	to provide an isolated environment for process.

process is a runnig state of program.
A program runs by OS or environment runtime on a machine called process.
process meaning in OS books.




---


health check


swarm kuber	




A container only sees 
	a network interface 
		with an IP address, 
		a gateway, 
		a routing table, 
		DNS services, and other networking details 
		unless the container uses the none network driver.


Docker manipulates iptables rules



Driver	Description

bridge	The default network driver.
host		Remove network isolation between the container and the Docker host.
none	Completely isolate a container from the host and other containers.

overlay	Overlay networks connect multiple Docker daemons together.
ipvlan	IPvlan networks provide full control over both IPv4 and IPv6 addressing.
macvlan	Assign a MAC address to a container.



docker notes
https://en.wikipedia.org/wiki/Cloud_computing#Service_models

multiple containers with docker compose
build our image with docker file 

Deploy our containerize application to docker repository.

persist data in docker image with volume.


application
passive      active
source --> process

A running version of program source is called process in OS.

docker
passive    active
image --> container 

A running version of image  is called container in OS.

Container is a combination of program and its config.

Docker is abstract Host as process.

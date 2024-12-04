# Note
Docker use iptables rules to implement Network isolation for containers.

## OS
  * Program: code, passive mode
  * Process: Running state of program, active mode

## Docker

Platform and Implementation for container concept.

  * Image: Program
  * Cointainer: Process

Container implement isolation from OS
A Container have no idea about infrastructure

* Runtime
* Resources: 200MB RAM


cgroup: constrain on storage, CPU, I/O
namespace: 

ACL lpic

---

## Docker Network(6) types

* none: without network, standalone
* Host: Remove network isolation between host and container
* Bridge: Default
* MacVlan: assign a MAC Address to container
* IPVlan: 
* Overlay
---



# Kubernetes

Container Orchestration
* Docker swarm 
* Kubernetes
Minikube: Single node Kuber Cluster, Run on local machine.



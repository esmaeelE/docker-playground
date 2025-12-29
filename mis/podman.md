**Podman**  (Pod Manager) is a fully featured container engine that is a simple daemonless tool.
```
alias docker=podman
```

Podman uses `Buildah`(1) internally to create container images.
Both tools share image (not container) storage, hence each can use or manipulate images (but not containers) created by the other.


podman default location to save images
```
/home/user/.local/share/containers
```

## Install debian
```
$ sudo apt install podman-compose podman podman-toolbox
```

## Rootless podman run on port 80 the dirty way

```
echo "net.ipv4.ip_unprivileged_port_start=80" >> /etc/sysctl.conf
sysctl -p
```

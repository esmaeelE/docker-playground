# Podman
Better docker

## Links

* [docs](https://docs.podman.io/en/latest/Introduction.html)
* [Get started](https://podman.io/get-started)


# Podman containerization

## Install

Just run below commands
```
$ sudo apt install podman podman-compose
$ mkdir -p ~/.config/containers/
$ cat ~/.config/containers/registries.conf
unqualified-search-registries = ["docker.io"]
```

## Test
```
$ podman version 
Client:       Podman Engine
Version:      4.3.1
API Version:  4.3.1
Go Version:   go1.19.8
Built:        Thu Jan  1 01:00:00 1970
OS/Arch:      linux/amd64


$ podman run hello-world:latest

```
Time is wrong, why?

## Set registry and Iran mirros.
```
```


# Info
```
$ podman info 
host:
  arch: amd64
  buildahVersion: 1.28.2
  cgroupControllers:
  - cpu
  - memory
  - pids
  cgroupManager: systemd
  cgroupVersion: v2
  conmon:
    package: conmon_2.1.6+ds1-1_amd64
    path: /usr/bin/conmon
    version: 'conmon version 2.1.6, commit: unknown'
  cpuUtilization:
    idlePercent: 99.48
    systemPercent: 0.24
    userPercent: 0.28
  cpus: 2
  distribution:
    codename: bookworm
    distribution: debian
    version: "12"
  eventLogger: journald
  hostname: gui
  idMappings:
    gidmap:
    - container_id: 0
      host_id: 1000
      size: 1
    - container_id: 1
      host_id: 100000
      size: 65536
    uidmap:
    - container_id: 0
      host_id: 1000
      size: 1
    - container_id: 1
      host_id: 100000
      size: 65536
  kernel: 6.1.0-21-amd64
  linkmode: dynamic
  logDriver: journald
  memFree: 13556690944
  memTotal: 14656192512
  networkBackend: netavark
  ociRuntime:
    name: crun
    package: crun_1.8.1-1+deb12u1_amd64
    path: /usr/bin/crun
    version: |-
      crun version 1.8.1
      commit: f8a096be060b22ccd3d5f3ebe44108517fbf6c30
      rundir: /run/user/1000/crun
      spec: 1.0.0
      +SYSTEMD +SELINUX +APPARMOR +CAP +SECCOMP +EBPF +YAJL
  os: linux
  remoteSocket:
    path: /run/user/1000/podman/podman.sock
  security:
    apparmorEnabled: false
    capabilities: CAP_CHOWN,CAP_DAC_OVERRIDE,CAP_FOWNER,CAP_FSETID,CAP_KILL,CAP_NET_BIND_SERVICE,CAP_SETFCAP,CAP_SETGID,CAP_SETPCAP,CAP_SETUID,CAP_SYS_CHROOT
    rootless: true
    seccompEnabled: true
    seccompProfilePath: /usr/share/containers/seccomp.json
    selinuxEnabled: false
  serviceIsRemote: false
  slirp4netns:
    executable: /usr/bin/slirp4netns
    package: slirp4netns_1.2.0-1_amd64
    version: |-
      slirp4netns version 1.2.0
      commit: 656041d45cfca7a4176f6b7eed9e4fe6c11e8383
      libslirp: 4.7.0
      SLIRP_CONFIG_VERSION_MAX: 4
      libseccomp: 2.5.4
  swapFree: 1023406080
  swapTotal: 1023406080
  uptime: 0h 59m 40.00s
plugins:
  authorization: null
  log:
  - k8s-file
  - none
  - passthrough
  - journald
  network:
  - bridge
  - macvlan
  volume:
  - local
registries:
  search:
  - docker.io
  - quay.io
store:
  configFile: /home/user/.config/containers/storage.conf
  containerStore:
    number: 0
    paused: 0
    running: 0
    stopped: 0
  graphDriverName: overlay
  graphOptions:
    overlay.mount_program:
      Executable: /usr/bin/fuse-overlayfs
      Package: fuse-overlayfs_1.10-1_amd64
      Version: |-
        fusermount3 version: 3.14.0
        fuse-overlayfs: version 1.10
        FUSE library version 3.14.0
        using FUSE kernel interface version 7.31
  graphRoot: /var/container/storage
  graphRootAllocated: 42515750912
  graphRootUsed: 4892471296
  graphStatus:
    Backing Filesystem: extfs
    Native Overlay Diff: "false"
    Supports d_type: "true"
    Using metacopy: "false"
  imageCopyTmpDir: /var/tmp
  imageStore:
    number: 0
  runRoot: /run/user/1000
  volumePath: /var/container/storage/volumes
version:
  APIVersion: 4.3.1
  Built: 0
  BuiltTime: Thu Jan  1 01:00:00 1970
  GitCommit: ""
  GoVersion: go1.19.8
  Os: linux
  OsArch: linux/amd64
  Version: 4.3.1

```
# add new registery
```
$ cat /etc/containers/registries.conf
unqualified-search-registries = ["docker.io"]
```



## change default storage location
podman save containers images and volume in $HOME of running user. we can change it.
for example I placed them in `/var/container/`

```
$ sudo mkdir -p /var/container
$ sudo chown -R user /var/container/

$ cat ~/.config/containers/storage.conf
[storage]
  driver = "overlay"
  runroot = "/run/user/1000"
  graphroot = "/var/container/storage"
  [storage.options]
    size = ""
    remap-uids = ""
    remap-gids = ""
    ignore_chown_errors = ""
    remap-user = ""
    remap-group = ""
    mount_program = "/usr/bin/fuse-overlayfs"
    mountopt = ""
    [storage.options.thinpool]
      autoextend_percent = ""
      autoextend_threshold = ""
      basesize = ""
      blocksize = ""
      directlvm_device = ""
      directlvm_device_force = ""
      fs = ""
      log_level = ""
      min_free_space = ""
      mkfsarg = ""
      mountopt = ""
      use_deferred_deletion = ""
      use_deferred_removal = ""
      xfs_nospace_max_retries = ""
```


# Systemd Service auto run on startup
```
Automate with systemd service

podman generate systemd --new --name deploy_mariadb_server_1 > mariadb.service
mkdir -p ~/.config/systemd/user/
cp mariadb.service ~/.config/systemd/user/

systemctl --user daemon-reload
systemctl --user enable mariadb.service
systemctl --user start mariadb.service
systemctl --user status mariadb.service 
```

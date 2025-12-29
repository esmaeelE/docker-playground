# Download docker image locally

## Install
```
wget https://raw.githubusercontent.com/moby/moby/master/contrib/download-frozen-image-v2.sh
chmod +x download-frozen-image-v2.sh; mv download-frozen-image-v2.sh /usr/local/bin/dn_docker
```

---

## Usage
```dn_docker hello hello-world:latest```

### load image
```tar -cvC hello . | docker load```

## Load image to local docker

load directly
```
tar -cvC dir_name . | docker load
```

# save to zip archive file
```
tar -cvC dir_name . | gzip -c -9 > image_name.tar.gz
```

# load compressed file
```
docker load -i image_name.tar.gz
```

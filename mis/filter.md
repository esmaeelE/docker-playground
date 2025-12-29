If you are lived in restricted locations like IRAN, docker not work and throw below message.

> Since Docker is a US company, we must comply with US export control regulations. In an effort to comply with these, we now block all IP addresses that are located in Cuba, Iran, North Korea, Regions of Ukraine (Crimea, Donetsk, and Luhansk), Sudan, Syria, and Russia. If you are not in one of these cities, countries, or regions and are blocked, please reach out to https://hub.docker.com/support/contact/
</body></html>

As fucking docker company restricted IRAN we have two options.

## Use Mirror registry

Using mirror instead of default docker registry

    $ cat /etc/docker/daemon.json
    {
            "registry-mirrors": ["https://registry.docker.ir"]
    }

    sudo systemctl daemon-reload
    sudo systemctl restart docker


## Write directly to config file
```
cat << EOF | sudo tee /etc/docker/daemon.json
{
    "registry-mirrors": ["https://registry.docker.ir"]
}
EOF
```

If its not work use proxy for docker

## Set proxy


    $ cat /etc/systemd/system/docker.service.d/https-proxy.conf
    [Service]
    Environment="HTTP_PROXY=http://192.168.5.35:8119"
    Environment="HTTPS_PROXY=http://192.168.5.35:8119"
    Environment="NO_PROXY=localhost,127.0.0.1,docker-registry.example.com,.corp"


    $ sudo systemctl daemon-reload
    $ sudo systemctl restart docker

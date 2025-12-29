FROM ubuntu:latest

# WORKDIR /root
COPY packages.txt .

#####################################################################################
# RUN apt-get update
# if we dont separate install openssh-server install it not work
# actually set password after user cration not work
#####################################################################################

RUN apt-get update && apt-get install -qq -y openssh-server && xargs apt-get install -qq -y --no-install-recommends < packages.txt

# RUN apt-get update && xargs apt-get install -qq -y --no-install-recommends < packages.txt

# this must be after install openssh-server package
RUN mkdir /var/run/sshd && useradd -rm -d /home/myuser -s /bin/bash -g root -G sudo -u 1001 myuser -p "$(openssl passwd -1 mypassword)"

#USER user
#WORKDIR /home/user
# CMD ["bash",  "-c", "/usr/sbin/sshd -D && bash"]

CMD ["bash",  "-c", "/usr/sbin/sshd -D"]

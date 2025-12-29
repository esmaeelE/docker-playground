##################################################
# This is base image
FROM debian:stable-slim
##################################################

##################################################
# Add some extra packages on debian minimal image
# Install default tools
##################################################

# Supress apt-utils recommend
ENV DEBCONF_NOWARNINGS="yes"

# Its better to have one RUN command
## Read package list from file

WORKDIR /root
COPY packages.txt .
# Check package list inside container
# RUN cat packages.txt

#each one generate lighter image?

#RUN apt-get update && xargs apt-get install -qq -y < packages.txt

# This works
# RUN apt-get update && xargs apt-get install -qq -y --no-install-recommends < packages.txt

RUN apt-get update && xargs -a packages.txt apt-get install --no-install-recommends -qq -y


##################################################


##################################################
#RUN apt-get -qq update && \
#    apt-get install -qq -y \
#    curl \
#    tar unzip rsync procps \
#    vim tmux \
#    > /dev/null
#
##################################################



# cd to /root
WORKDIR /root

# Run bash as entry point
CMD ["bash"]

### Dockerfile ###
# Create a base stage
FROM ubuntu:20.04 as builder
RUN apt-get update && apt-get install -y gcc

# Create stage1
FROM builder as stage1
CMD gcc --version

# Create stage2
FROM builder as stage2
CMD gcc --version




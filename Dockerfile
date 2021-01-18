FROM node:12.6-buster-slim

# Install docker
RUN apt update
RUN apt -y install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"
RUN apt update
RUN curl -O https://download.docker.com/linux/debian/dists/buster/pool/stable/amd64/containerd.io_1.4.3-1_amd64.deb
RUN apt install ./containerd.io_1.4.3-1_amd64.deb
RUN apt -y install docker-ce

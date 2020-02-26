FROM ubuntu:18.04

ENV DOCKER_COMPOSE_VERSION=1.24.*

RUN apt-get update && \
    apt-get install -y apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    python3-pip && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" && \
   apt-get update -y && \
   apt-get install docker-ce -y && \
    pip3 install --no-cache-dir docker-compose==$DOCKER_COMPOSE_VERSION && \
    rm /var/cache/apt/archives/* -r


FROM docker:latest

ENV DOCKER_COMPOSE_VERSION=1.27.4

RUN apk add python3 && \
    apk add --no-cache --virtual .build-deps py3-pip python3-dev build-base libffi-dev openssl-dev && \
    pip3 install --no-cache-dir docker-compose==$DOCKER_COMPOSE_VERSION && \
    apk del .build-deps

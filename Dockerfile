FROM docker:latest

ENV DOCKER_COMPOSE_VERSION=1.24.*

RUN apk add python && \
    apk add --no-cache --virtual .build-deps py-pip python-dev build-base libffi-dev openssl-dev && \
    pip install --no-cache-dir docker-compose==$DOCKER_COMPOSE_VERSION && \
    apk del .build-deps


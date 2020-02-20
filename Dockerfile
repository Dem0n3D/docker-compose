FROM docker:latest

ENV DOCKER_COMPOSE_VERSION=1.25.4

RUN apk add python && \
    apk add --no-cache docker-compose=${DOCKER_COMPOSE_VERSION} git

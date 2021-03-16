# Stubby4j - Docker

Inspired by https://hub.docker.com/r/sandokandias/stubby4j-docker

Stubby4j manual: https://github.com/azagniotov/stubby4j

docker-compose sample:

```yml
version: '3'
services:
    stubby4j:
        image: bbranquinho/stubby4j-docker
        ports:
            - "8882:8882"
        environment:
            STUBBY_PORT: 8882
        volumes:
            - ./stubby.yml:/usr/local/stubby.yml
```
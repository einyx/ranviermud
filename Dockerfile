FROM node:alpine

LABEL Name=ranvier \
    Version=edge

RUN mkdir -p /opt/mud && \
    apk add git bash
ADD . /opt/mud/

WORKDIR /opt/mud

EXPOSE 4000
EXPOSE 4001
HEALTHCHECK NONE

RUN npm ci && \
    echo Y | npm run init


CMD ["./ranvier"]

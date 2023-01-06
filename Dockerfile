# syntax=docker/dockerfile:1
FROM azul/zulu-openjdk-alpine:17

RUN mkdir -p /app/

RUN apk add --no-cache ttf-dejavu msttcorefonts-installer unifont fontconfig  && \
    update-ms-fonts && \
    fc-cache -f

RUN ln -s /lib/libc.musl-x86_64.so.1 /usr/lib/libc.musl-x86_64.so.1

ENV LD_LIBRARY_PATH /usr/lib

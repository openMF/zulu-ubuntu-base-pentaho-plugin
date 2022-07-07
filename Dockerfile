# syntax=docker/dockerfile:1
FROM azul/zulu-openjdk-alpine:17

RUN mkdir -p /app/

RUN ls -lrt /app/

RUN cd /app/ && wget https://fintecheando.mx/mifos/1.0.0-dist-fineract-pentaho.zip && \
    unzip 1.0.0-dist-fineract-pentaho.zip 

RUN ls -lrt /app/pentahoReports/

RUN apk add --no-cache fontconfig ttf-dejavu

RUN ln -s /lib/libc.musl-x86_64.so.1 /usr/lib/libc.musl-x86_64.so.1

ENV LD_LIBRARY_PATH /usr/lib

# syntax=docker/dockerfile:1
FROM azul/zulu-openjdk-alpine:17

RUN mkdir -p /app/

RUN cd /app/ && wget https://fintecheando.mx/mifos/1.0.0-dist-fineract-pentaho.zip && \
    unzip 1.0.0-dist-fineract-pentaho.zip 

RUN ls -lrt /app/pentahoReports/

# syntax=docker/dockerfile:1
FROM azul/zulu-openjdk-alpine:17

RUN mkdir /app/ && cd /app/ && wget https://fintecheando.mx/mifos/1.0.0-dist-fineract-pentaho.zip && unzip 1.0.0-dist-fineract-pentaho.zip


# syntax=docker/dockerfile:1
FROM azul/zulu-openjdk-alpine:17

RUN mkdir -p /home/fineract/.mifosx/pentahoReports/

RUN mkdir -p /app/libs

RUN mkdir -p /app/resources

RUN cd /app/ && wget https://fintecheando.mx/mifos/1.0.0-dist-fineract-pentaho.zip && \
    unzip 1.0.0-dist-fineract-pentaho.zip && cp ./pentahoReports/* /home/fineract/.mifosx/pentahoReports/ 

RUN ls -lrt /app/libs/ 

RUN ls -lrt /app/resources/ 

RUN ls -lrt /home/fineract/.mifosx/pentahoReports/

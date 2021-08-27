#!/bin/sh
mvn clean package && docker build -t com.mycompany/Labo .
docker rm -f Labo || true && docker run -d -p 9080:9080 -p 9443:9443 --name Labo com.mycompany/Labo
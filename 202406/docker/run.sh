#!/bin/bash
docker rm -f web1-perez 2>/dev/null

docker run -d --name web1-perez -p 8080:80 web1-perez:v1


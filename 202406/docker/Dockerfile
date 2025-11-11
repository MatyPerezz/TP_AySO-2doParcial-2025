FROM nginx:stable-alpine
LABEL maintainer="Matias Perez <perezabrahammatias@gmail.com>"

RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80


FROM debian:stable-slim

RUN apt-get update \
&& apt-get install -y rsync \
           inotify-tools

COPY ./sync.sh /root/sync.sh

WORKDIR /root

RUN chmod +x ./sync.sh

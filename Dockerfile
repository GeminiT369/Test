FROM ubuntu:20.04
MAINTAINER geminit369

ENV LANG="C.UTF-8" \
	PORT=8080
	
RUN apt update &&\
    apt install -y wget curl unzip screen gzip vim lsof &&\
    mkdir -p /tmp

ADD install.sh .

EXPOSE $PORT
CMD bash install.sh

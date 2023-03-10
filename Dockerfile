FROM ubuntu:20.04

ENV LANG="C.UTF-8" \
	PORT=8080
	
RUN apt-get update && apt-get install -y wget curl unzip tar gzip

ADD install.sh .

EXPOSE $PORT
CMD bash install.sh

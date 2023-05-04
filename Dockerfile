FROM ubuntu:latest

ENV LANG="C.UTF-8" \
	PORT=8080
	
RUN apt-get update && apt-get install -y wget curl unzip tar

ADD install.sh .

EXPOSE $PORT
CMD bash install.sh

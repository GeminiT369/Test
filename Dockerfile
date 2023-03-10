FROM alpine:latest

ENV LANG="C.UTF-8" \
	PORT=8080
	
RUN apk add --update --no-cache wget curl unzip tar gzip

ADD install.sh .

EXPOSE $PORT
CMD bash install.sh

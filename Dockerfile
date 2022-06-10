FROM ubuntu:20.04
MAINTAINER geminit369

ENV LANG="C.UTF-8" \
	PORT=8080
	
RUN apt update &&\
    apt install ssh wget unzip screen gzip vim -y &&\
    mkdir -p /run/sshd /tmp &&\
    echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config &&\
    echo root:wuzhubest|chpasswd &&\
ADD "https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64" brook
RUN chmod +x brook

EXPOSE $PORT
CMD ./brook wsserver --listen :$PORT --password fuck_gfw_ccp

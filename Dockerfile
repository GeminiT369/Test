FROM ubuntu:20.04
MAINTAINER geminit369

ENV LANG="C.UTF-8" \
	PORT=8080
	
RUN apt update &&\
    apt install -y ssh wget curl unzip screen gzip vim lsof &&\
    mkdir -p /run/sshd /tmp &&\
    echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config &&\
    echo root:wuzhubest|chpasswd

ADD install.sh .

EXPOSE $PORT
CMD /usr/sbin/sshd -D & bash install.sh

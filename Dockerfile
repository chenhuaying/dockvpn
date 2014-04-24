FROM ubuntu:trusty
RUN echo "deb http://ftp.sjtu.edu.cn/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp
CMD run

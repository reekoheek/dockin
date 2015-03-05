FROM debian:wheezy

ADD root/etc/apt /etc/apt

RUN apt-get update -y
RUN apt-get install -y \
    curl \
    procps \
    net-tools

#    ca-certificates
#    apt-transport-http \
#    iptables

RUN curl -sSL https://get.docker.com/ubuntu/ | sh

ADD root/ /

RUN chmod +x /dockin

EXPOSE 2376

CMD ["/dockin"]
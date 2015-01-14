FROM debian:7.6
MAINTAINER jia.huang@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

# Install Basic Packages
RUN apt-get update && apt-get install -y curl apt-utils

# Install ZeroMQ
RUN curl -sLo /usr/local/lib/libzmq.so.4.0.0 http://d.genee.cn/packages/zeromq-4/libzmq.so.4.0.0 && \
    ldconfig && \
    curl -sLo /usr/local/include/zmq.h http://d.genee.cn/packages/zeromq-4/zmq.h && \
    curl -sLo /usr/local/include/zmq_utils.h http://d.genee.cn/packages/zeromq-4/zmq_utils.h

# Install NodeJS
RUN (curl -sL https://deb.nodesource.com/setup | bash -) && \
    apt-get install -y nodejs


RUN npm install -g debade-trigger && mkdir -p /etc/debade
ADD trigger.yml /etc/debade/trigger.yml

CMD ["/usr/bin/debade-trigger", "-c", "/etc/debade/agent.yml"]
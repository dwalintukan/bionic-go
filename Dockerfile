FROM ubuntu:18.04
LABEL maintainer="deric.walintukan@gmail.com"

RUN apt-get update -y && apt-get install -y build-essential wget
RUN cd /tmp && \
    wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz && \
    tar -xvf go1.11.linux-amd64.tar.gz && \
    mv go /usr/local && \
    export GOROOT=/usr/local/go && \
    export GOPATH=$HOME/go && \
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

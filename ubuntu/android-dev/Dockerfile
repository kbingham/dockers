# Install ST Linux ARM distribution

FROM ubuntu/14.04-dev
MAINTAINER Kieran Bingham, kieran@bingham.xyz

ENV DEBIAN_FRONTEND noninteractive

RUN sudo add-apt-repository -y ppa:webupd8team/java
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN sudo apt-get update && \
    sudo apt-get install -y oracle-java6-installer

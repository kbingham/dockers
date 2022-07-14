FROM ubuntu:18.04
MAINTAINER Kieran Bingham, kieran.bingham@ideasonboard.com

ENV DEBIAN_FRONTEND noninteractive

# Create the docker default user
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get update && apt-get install -y \
	gawk wget git-core diffstat unzip texinfo gcc-multilib g++-multilib \
	build-essential chrpath socat bison curl cpio python3 python3-pip \
	python3-pexpect xz-utils debianutils iputils-ping python3-git \
	python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm \
	locales vim bash-completion screen time

RUN apt-get update && apt-get install -y \
	bc

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

USER docker

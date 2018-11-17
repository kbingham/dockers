# Install ST Linux ARM distribution

FROM ubuntu:18.04
MAINTAINER Kieran Bingham, kieran@bingham.xyz

ENV DEBIAN_FRONTEND noninteractive

# Create the docker default user
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get update && apt-get install -y \
	bison \
	bc \
	build-essential \
	cpio \
	flex \
	git-core \
	kmod \
	libncurses5-dev \
	libelf-dev \
	libssl-dev \
	time
	# End of Packages

USER docker

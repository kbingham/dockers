# Install ST Linux ARM distribution

FROM ubuntu:14.04
MAINTAINER Kieran Bingham, kieran@bingham.xyz

ENV DEBIAN_FRONTEND noninteractive

# Create the docker default user
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get update && apt-get install -y \
	bison \
	build-essential \
	chrpath \
	cryptsetup-bin \
	curl \
	diffstat \
	flex \
	gawk \
	gcc-multilib \
	git-core \
	gitk \
	g++-multilib \
	gnupg \
	gperf \
	imagemagick \
	lib32ncurses5-dev \
	lib32readline-gplv2-dev \
	lib32z1-dev \
	libc6-dev \
	libesd0-dev \
	libncurses5-dev \
	libsdl1.2-dev \
	libssl1.0.0 \
	libssl-dev \
	libswitch-perl \
	libwxgtk2.8-dev \
	libxml2 \
	libxml2-utils \
	lzop \
	pngcrush \
	schedtool \
	screen \
	software-properties-common \
	squashfs-tools \
	texinfo \
	time \
	vim \
	wget \
	xsltproc \
	zip \
	zlib1g-dev
	# End of Packages

USER docker

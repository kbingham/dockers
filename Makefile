.SUFFIXES:

DOCKER=$(shell which docker)
NSENTER=$(shell which nsenter)
SUDO=sudo

TARGETS		:= $(shell find  * -name Dockerfile)
TARGETS_BUILD	:= $(TARGETS:/Dockerfile=.build)
TARGETS_RUN	:= $(TARGETS:/Dockerfile=.run)

all: $(TARGETS_BUILD)

ubuntu/android-dev.build: ubuntu/14.04-dev.build

$(TARGETS_BUILD): 
%.build:
	$(DOCKER) build -t $* $*

%.run:
	$(DOCKER) run -P $*

%.shell:
	@echo "Entering $* with a shell"
	$(DOCKER) run -it $* /bin/bash -l

%.enter:
	@echo "Attempting to enter container $*"
	$(SUDO) $(NSENTER) --target $(shell $(DOCKER) inspect --format {{.State.Pid}}  $* ) --mount --uts --ipc --net --pid

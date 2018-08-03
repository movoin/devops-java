MAKEFLAGS += --silent

DOCKER_REPO="movoin/devops-java"

all: java

publish: push

#
# image: movoin/devops-java
#
java:
	bash build.sh "${DOCKER_REPO}"

test:
	docker run -it --rm ${DOCKER_REPO}

run:
	docker run -it --rm ${DOCKER_REPO} bash

push:
	docker push ${DOCKER_REPO}

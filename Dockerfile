#
# Docker Image      movoin/devops-java
#
# MAINTAINER        Allen Luo <movoin@gmail.com>
# DOCKER-VERSION    18.09.0
#

FROM movoin/devops-centos

ENV JAVA_HOME /usr/local/java/jdk1.8.0_191

COPY conf/ $DOCKER_CONF_PATH

RUN set -x \
    # Bootstrap
    && $DOCKER_CONF_PATH/bin/bootstrap.sh

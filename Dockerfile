#
# Docker Image      movoin/devops-java
#
# MAINTAINER        Allen Luo <movoin@gmail.com>
# DOCKER-VERSION    1.12.3
#

FROM        movoin/devops-centos
MAINTAINER  Allen Luo <movoin@gmail.com>

ENV JAVA_HOME /usr/local/java/jdk1.8.0_181

COPY conf/ /opt/docker/

RUN set -x \
    # Install
    && /opt/docker/bin/install.sh \
    # Bootstrap
    && /opt/docker/bin/bootstrap.sh \
    # Clean
    && yum clean all \
    && rm -rf /var/cache/yum

FROM manycoding/robotframework:selenium_2.53.6
MAINTAINER Valery M <vamukhs@gmail.com>

RUN apk add --update --no-cache \
    bash \
    wget \
    curl \
    git \
    xvfb \
    dbus \
    firefox-esr \
    ttf-freefont

RUN git config --global http.sslVerify false

ENV JENKINS_SWARM_VERSION 2.2
WORKDIR /usr/share/jenkins
RUN wget -q "https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/${JENKINS_SWARM_VERSION}/swarm-client-${JENKINS_SWARM_VERSION}-jar-with-dependencies.jar" && \
    chmod 755 /usr/share/jenkins

RUN pip install -U \
    unittest-xml-reporting \
    requests

ADD xvfb-run /usr/bin/
RUN chmod +x /usr/bin/xvfb-run

ADD jenkins-slave.sh /jenkins-slave.sh
ENTRYPOINT ["/jenkins-slave.sh"]
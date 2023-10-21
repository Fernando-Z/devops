FROM jenkins/jenkins:lts

USER root

RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

RUN apt-get update  -qq \
    && apt-get -y install docker-ce

RUN usermod -aG docker jenkins

RUN wget https://get.helm.sh/helm-v3.13.1-linux-amd64.tar.gz \
        && tar -zxvf helm-v3.13.1-linux-amd64.tar.gz \
        && mv linux-amd64/helm /usr/local/bin/helm \
        && rm -rf linux-amd64/

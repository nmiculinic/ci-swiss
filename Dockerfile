FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:rmescandon/yq
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    curl \
    gcc \
    git \
    jq \
    python3 \
    python3-pip \
    unp \
    wget \
    yq
RUN wget https://storage.googleapis.com/kubernetes-helm/helm-v2.13.0-linux-amd64.tar.gz && unp helm-v2.13.0-linux-amd64.tar.gz && mv linux-amd64/helm /usr/bin && rm -Rf linux-amd64 && rm -Rf helm-v2.13.0-linux-amd64.tar.gz
RUN pip3 install pre-commit

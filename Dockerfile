FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:rmescandon/yq
RUN apt-get update
RUN apt-get install -y curl wget gcc yq

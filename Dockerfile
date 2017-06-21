FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
 && apt-get install -qq software-properties-common python-software-properties \
 && apt-add-repository -y 'deb http://mirrors.digitalocean.com/ubuntu/ xenial main restricted' \
 && apt-add-repository -y 'deb http://mirrors.digitalocean.com/ubuntu/ xenial-updates main restricted' \
 && apt-add-repository -y 'deb http://mirrors.digitalocean.com/ubuntu/ xenial universe' \
 && apt-add-repository -y 'deb http://mirrors.digitalocean.com/ubuntu/ xenial-updates universe' \
 && apt-add-repository -y 'ppa:maxmind/ppa' \
 && apt-get update -qq \
 && apt-get install -qq -y --no-install-recommends \
      geoipupdate \
 && rm -rf /var/lib/apt/lists/* \
 && true

COPY . /

ENTRYPOINT [ "/bin/bash" ]
CMD [ "entrypoint.sh" ]

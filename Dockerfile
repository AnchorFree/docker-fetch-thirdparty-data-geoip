FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
 && apt-get install -qq software-properties-common python-software-properties \
 && apt-add-repository ppa:maxmind/ppa \
 && apt-get update -qq \
 && apt-get install -qq -y --no-install-recommends \
      geoip-bin \
      geoip-database \
      geoipupdate \
 && rm -rf /var/lib/apt/lists/* \
 && true

COPY . /

ENTRYPOINT [ "/bin/bash" ]
CMD [ "entrypoint.sh" ]

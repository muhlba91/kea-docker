# basic container
FROM alpine:3.13

# labels
LABEL maintainer "Daniel Muehlbachler-Pietrzykowski daniel.muehlbachler@niftyside.com"
LABEL name "Kea DHCP"

# config
ENV KEA_VERSION "1.8.2-r1"

# install kea
RUN apk update \
  && apk add --no-cache \
    wget  \
    git \
    make \
    bash \
    kea=$KEA_VERSION \
  && rm -rf /var/cache/apk/*

# assets
ADD assets/entrypoint.sh /bin/kea

# expose and entrypoint
EXPOSE 67/UDP 547/TCP 547/UDP
ENTRYPOINT ["kea"]

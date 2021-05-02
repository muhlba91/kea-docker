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
    kea-admin=$KEA_VERSION \
    kea-common=$KEA_VERSION \
    kea-ctrl-agent=$KEA_VERSION \
    kea-dhcp-ddns=$KEA_VERSION \
    kea-dhcp4=$KEA_VERSION \
    kea-dhcp6=$KEA_VERSION \
    kea-doc=$KEA_VERSION \
    kea-http=$KEA_VERSION \
    kea-shell=$KEA_VERSION \
    kea-static=$KEA_VERSION \
  && rm -rf /var/cache/apk/*

# assets
ADD assets/entrypoint.sh /bin/kea
ADD assets/keactrl /usr/local/sbin/keactrl

# expose and entrypoint
EXPOSE 67/UDP 547/TCP 547/UDP
ENTRYPOINT ["kea"]

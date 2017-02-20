FROM alpine:3.5

MAINTAINER We ahead <docker@weahead.se>

RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl

WORKDIR /usr/bin/

ENV RANCHER_CLI=0.4.1
RUN wget  \
      https://releases.rancher.com/cli/v${RANCHER_CLI}/rancher-linux-amd64-v${RANCHER_CLI}.tar.gz \
      && tar --strip-components=1 -xvzf rancher-linux-amd64-v${RANCHER_CLI}.tar.gz \
      && mv ./rancher-v${RANCHER_CLI}/rancher . \
      && rm rancher-linux-amd64-v${RANCHER_CLI}.tar.gz \
      && rm -r ./rancher-v${RANCHER_CLI}

RUN mkdir /data

WORKDIR /data

ENTRYPOINT [ "/usr/bin/rancher" ]

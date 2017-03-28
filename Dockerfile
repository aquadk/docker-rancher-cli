FROM alpine:3.5

LABEL maintainer "We ahead <docker@weahead.se>"

ENV RANCHER_CLI_VERSION="0.4.1"

RUN apk --no-cache add --virtual build-deps curl \
  && curl -L "https://releases.rancher.com/cli/v${RANCHER_CLI_VERSION}/binaries/linux-amd64/rancher.xz" | xzcat - > /usr/local/bin/rancher \
  && chmod +x /usr/local/bin/rancher \
  && apk del build-deps

WORKDIR /data

ENTRYPOINT [ "/usr/local/bin/rancher" ]

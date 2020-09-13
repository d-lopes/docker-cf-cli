FROM alpine:3.12

ENV CF_VERSION=7.0.2

RUN apk add --update curl bash openssl jq tar gzip; \
    wget "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=${CF_VERSION}&source=github-rel" -O /tmp/cf-cli.tgz; \
    tar xf /tmp/cf-cli.tgz -C /usr/local/bin; \
    mkdir /tmp/artifacts/; \
    mkdir /tmp/vars/

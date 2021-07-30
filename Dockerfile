# this is just a test

FROM golang:alpine3.10

COPY get-hugo /usr/local/bin

ENV INSTALL_ME="curl jq bash"
RUN    true \
    && apk add --no-cache $INSTALL_ME

# see here: https://gitlab.com/gitlab-org/gitlab-runner/issues/2109
ENTRYPOINT ["/bin/bash", "-l", "-c"]

FROM golang:1-alpine3.15

COPY get-hugo       /usr/local/bin/
COPY set-path.sh    /etc/profile.d/


ENV INSTALL_ME="curl jq bash git"
RUN    true \
    && apk add --no-cache $INSTALL_ME \
    && mkdir /work

WORKDIR /work

# see here: https://gitlab.com/gitlab-org/gitlab-runner/issues/2109
ENTRYPOINT ["/bin/bash", "-l", "-c"]

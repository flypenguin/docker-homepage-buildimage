# this is just a test

FROM alpine

ENV INSTALL_ME="curl git python2 py2-pip jq bash"

COPY get-hugo /usr/local/bin

RUN    true \
    && apk add --no-cache $INSTALL_ME \
    && pip install s3cmd

# see here: https://gitlab.com/gitlab-org/gitlab-runner/issues/2109
ENTRYPOINT ["/bin/bash", "-l", "-c"]

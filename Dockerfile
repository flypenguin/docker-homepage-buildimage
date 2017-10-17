# this is just a test

FROM alpine

ENV INSTALL_ME="curl git python2 py2-pip jq bash"

RUN    true \
    && apk add --no-cache $INSTALL_ME \
    && pip install s3cmd

ENTRYPOINT ["/bin/bash"]

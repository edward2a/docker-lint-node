FROM node:carbon-alpine

LABEL description='Alpine/Node/JSHint' \
      maintainer='edward2a@gmail.com'

ADD scripts/scan.sh /usr/local/bin/scan
ADD config/jshintrc.json /root/.jshintrc
RUN chmod 755 /usr/local/bin/scan && \
    npm install --no-cache --no-save --production --global jshint

ENTRYPOINT ["/usr/local/bin/scan"]

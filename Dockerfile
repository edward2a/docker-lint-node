FROM node:carbon-alpine

LABEL description='Alpine/Node/JSHint' \
      maintainer='edward2a@gmail.com'

ADD scripts/scan.sh /usr/local/bin/scan
ADD config/jshintrc.json /root/.jshintrc
RUN chmod 755 /usr/local/bin/scan && \
    mkdir -p /app/source && \
    npm install --no-cache --no-save --production --global jshint

WORKDIR /app
CMD ["/usr/local/bin/scan", "source"]

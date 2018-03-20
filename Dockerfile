FROM node:alpine

RUN apk add --update git && \
  rm -rf /tmp/* /var/cache/apk/*

CMD [ "/bin/ash" ]

FROM node:8.11-alpine

RUN apk add --update git openssh gawk tzdata && \
  rm -rf /tmp/* /var/cache/apk/*

#make sure we get fresh keys
RUN rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key

# Install Angular Tools
RUN npm install -g typescript tslint @angular/cli

CMD [ "/bin/ash" ]

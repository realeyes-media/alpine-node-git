FROM node:8.16-alpine

RUN apk add --update git openssh gawk tzdata bash && \
  rm -rf /tmp/* /var/cache/apk/*

#make sure we get fresh keys
RUN rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key

#Set Bash as default shell, because I give up
RUN rm -f /bin/sh && ln -s /bin/bash /bin/sh

# Update all NPM packages
RUN npm -g update && npm install -g npm

CMD [ "/bin/sh","--version" ]

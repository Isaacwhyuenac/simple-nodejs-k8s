FROM node:12.18.3

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD package.json ./package.json
RUN yarn --production
ADD server.js ./server.js

ENTRYPOINT ["node", "server.js"]
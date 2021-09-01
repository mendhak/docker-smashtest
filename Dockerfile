FROM node:16-alpine

RUN npm install -g smashtest

WORKDIR /code

RUN chown node:node /code

USER node

CMD smashtest 

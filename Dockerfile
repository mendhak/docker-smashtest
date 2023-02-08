FROM node:16-alpine

RUN npm install -g ts-node smashtest

WORKDIR /code

CMD smashtest 

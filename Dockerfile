FROM node:16-alpine

RUN npm install -g ts-node smashtest@1.8.1

WORKDIR /code

CMD smashtest 

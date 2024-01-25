FROM node:20-alpine

RUN npm install -g ts-node smashtest@1.9.2

WORKDIR /code

CMD smashtest 

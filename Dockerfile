FROM node:16-alpine

RUN npm install -g smashtest

WORKDIR /code

#RUN mkdir /code/smashtest

#RUN chmod -R a+w /code/smashtest && chown -R node:node /code

#USER node

CMD smashtest 

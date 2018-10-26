FROM node:8.12.0-alpine

WORKDIR /usr/app

COPY . /usr/app
RUN npm install --quiet

EXPOSE 3000

ENV APP http://app1:3000
CMD [ "npm", "start" ]

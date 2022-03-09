FROM node:12.16.3-slim

WORKDIR /api

COPY ./package*.json ./

RUN npm install

COPY ./ ./

RUN chmod +x wait-for-it.sh

CMD ./wait-for-it.sh db:3306 -- npm run test
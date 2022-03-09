FROM node:12.16.3-slim

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY ./ ./

CMD npm run start
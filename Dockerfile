FROM node:10.15.1-alpine

RUN mkdir -p /usr/node-app

WORKDIR /usr/node-app

COPY bin/ .
COPY public/ .
COPY routes/ .
COPY test/ .
COPY views/ .
COPY app.js .
COPY nodemon.json .
COPY package-lock.json/ .
COPY package.json/ .

RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
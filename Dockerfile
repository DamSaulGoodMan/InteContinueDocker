FROM node:10.15.1-alpine

RUN mkdir -p /usr/node-app

WORKDIR /usr/node-app

COPY bin/ ./bin
COPY public/ ./public
COPY routes/ ./routes
COPY test/ ./test
COPY views/ ./views
COPY app.js .
COPY nodemon.json .
COPY package-lock.json .
COPY package.json .

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]

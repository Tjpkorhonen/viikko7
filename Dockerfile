FROM node:8

WORKDIR /usr/src/vk7

COPY package*.json ./

RUN npm install
RUN npm install async
RUN npm install moment
RUN npm install express-validator

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]


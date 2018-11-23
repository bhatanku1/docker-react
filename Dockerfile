FROM node:alpine as builder

WORKDIR /app/usr

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "run", "start"]

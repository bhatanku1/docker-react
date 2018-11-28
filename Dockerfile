FROM node:alpine as builder

WORKDIR /app/usr

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

FROM nginx

COPY --from=builder /app/usr/build /usr/share/nginx/html

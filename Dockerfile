FROM node:17-alpine as builder
WORKDIR /backend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4000
ENTRYPOINT ["npm", "run", "start"]

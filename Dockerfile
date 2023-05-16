FROM node:lts-alpine as builder
WORKDIR /app
COPY package.json ./
RUN npm install -S 
COPY . .
RUN npm run build
EXPOSE 8080
CMD ["npm", "run", "start"]

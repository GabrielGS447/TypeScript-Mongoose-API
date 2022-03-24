FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
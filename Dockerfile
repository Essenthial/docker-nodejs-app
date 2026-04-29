FROM node:18

WORKDIR /app

RUN git clone https://github.com/DevOps2-Fundamentals/example-app-nodejs-backend-react-frontend .

RUN npm install

ENV NODE_OPTIONS=--openssl-legacy-provider

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

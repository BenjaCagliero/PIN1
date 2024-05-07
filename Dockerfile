FROM node:11.1.0-alpine

WORKDIR /app

ADD package.json package-lock.json /webapp/
RUN npm install

EXPOSE 3000

ADD . /app

CMD ["node", "index"]

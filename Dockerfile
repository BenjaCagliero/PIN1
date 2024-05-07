FROM node:11.1.0-alpine

WORKDIR /webapp

ADD package.json package-lock.json /webapp/
RUN npm install

EXPOSE 3000

ADD . /webapp

CMD ["node", "index"]

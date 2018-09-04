FROM node:8

COPY package.json /usr/local/src/package.json

WORKDIR /usr/local/src

RUN npm install

ADD . /usr/local/src

EXPOSE 8085

ENV ZOOKEEPER_CONNECT "master:2181/kafka"

CMD ["sh", "-c", "node server.js ${ZOOKEEPER_CONNECT}"]
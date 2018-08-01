FROM node:7

COPY package.json /usr/local/src/package.json

WORKDIR /usr/local/src

RUN npm install

ADD . /usr/local/src

EXPOSE 8085

ENV ZOOKEEPER_CONNECT "192.168.30.12:2181/kafka"

CMD ["sh", "-c", "node server.js ${ZOOKEEPER_CONNECT}"]
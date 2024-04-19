FROM node:14

WORKDIR /node-hello
COPY . .
RUN mv builder /usr/local/bin
RUN mkdir artifact
RUN builder -d -v

WORKDIR /node-hello/artifact
RUN unzip *

CMD ["npm", "start"]

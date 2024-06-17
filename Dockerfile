FROM node:14

WORKDIR /node-hello
COPY . .

CMD ["npm", "start"]

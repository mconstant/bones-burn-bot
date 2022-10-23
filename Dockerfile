FROM node:19-alpine3.15

RUN apk add git

ENV DISCORD_TOKEN=""
ENV INFURA_API_KEY=""

RUN mkdir /app

WORKDIR /app

RUN npm install web3 discord.js
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

COPY bot.js .

ENTRYPOINT ["/app/entrypoint.sh"]


FROM node:20-alpine
WORKDIR /app
COPY xinchao/package.json ./
COPY xinchao/src ./src
COPY xinchao/configs ./configs
RUN mkdir -p /app/state && chown -R node:node /app
USER node
ENV NODE_ENV=production
EXPOSE 18110
CMD ["node", "src/server.js"]

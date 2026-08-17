FROM node:20-alpine
WORKDIR /app
COPY xinchao/package.json xinchao/package-lock.json* ./
RUN npm install --omit=dev 2>/dev/null || npm install
COPY xinchao/ ./
RUN mkdir -p state memory-data
EXPOSE 18110
CMD ["node", "src/index.js"]

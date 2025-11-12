FROM node:alpine
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
CMD ["node", "index.js"]
EXPOSE 5000
RUN npm run start 
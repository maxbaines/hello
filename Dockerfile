FROM node:20-slim
LABEL faas.fn="true"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .
CMD ["npm", "start"]

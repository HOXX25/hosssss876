FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY . .

# Panel validation API (defaults to 8000); bind address controlled by app/env if needed
EXPOSE 8000

CMD ["node", "src/index.js"]

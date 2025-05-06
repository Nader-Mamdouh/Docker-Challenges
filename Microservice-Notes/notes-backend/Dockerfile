FROM node:22-alpine AS development
WORKDIR /app
COPY package*.json .
RUN npm ci
COPY . .
EXPOSE 3001
CMD ["npm", "run", "dev"]

FROM node:22-alpine AS prod-dependencies
WORKDIR /app
COPY package*.json .
RUN npm ci --only=production
COPY . .
EXPOSE 3001

FROM gcr.io/distroless/nodejs:22 AS production
WORKDIR /app
COPY --from=Prod-dependencies /app/node_modules node_modules
COPY src src
CMD ["src/server.js"]
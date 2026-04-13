# ===== STAGE 1 : BUILD =======
FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

RUN CI=false NODE_OPTIONS="--max-old-space-size=512" npm run build

# ===== STAGE 2 : PRODUCTION ====
FROM nginx:alpine

RUN rm /etc/nginx/conf.d/*

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

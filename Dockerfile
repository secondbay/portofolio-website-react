# ===== STAGE 1 : BUILD =======
FROM node:18-alpine AS builder

# set direktori ke /app
WORKDIR /app

# copy dan install depedensi
COPY package*.json ./
RUN npm ci

# copy source code
COPY . .

# build aplikasi react
RUN npm run build

# ===== STAGE 2 : PRODUCTION ====
FROM nginx:alpine 

# hapus config default nginx di vps
RUN rm /etc/nginx/conf.d/*

# pakai config nginx yang sudah di custom
COPY nginx.conf /etc/nginx/conf.d/default.conf

# copy hasil build dari stage 1
COPY --from=builder /app/build /usr/share/nginx/html

#expose port
EXPOSE 80

# jalankan nginx
CMD ["nginx", "-g", "daemon off;"]

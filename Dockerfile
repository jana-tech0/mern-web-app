FROM node:18-alpine AS build
WORKDIR /app
COPY src-client/package*.json ./
RUN npm install
COPY src-client/ ./
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

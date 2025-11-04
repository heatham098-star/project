FROM node:18-alpine as build-stage
WORKDIR /app
COPY todo/package*.json ./
RUN npm install
COPY todo/ ./
RUN npm run build

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
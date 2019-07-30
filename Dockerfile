FROM node:8.11.2-alpine as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

# Stage 2
FROM nginx
COPY dist/DevOpsDemo /usr/share/nginx/html
#COPY --from=node /app/dist/TestDocker /usr/share/nginx/html

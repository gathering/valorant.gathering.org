FROM node:latest

WORKDIR /app

RUN npm install -D tailwindcss

COPY . /app/

RUN npx tailwindcss -i ./src/main.css -o ./dist/main.css --minify

FROM nginx:latest

COPY --from=0 /app/dist/main.css /usr/share/nginx/html/dist/main.css
COPY --from=0 /app/static /usr/share/nginx/html/static
COPY --from=0 /app/src/index.html /usr/share/nginx/html/index.html
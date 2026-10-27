#pulling nginx image
FROM nginx:latest

COPY . /usr/share/nginx/html

EXPOSE 80

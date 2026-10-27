#pulling nginx image
FROM nginx:latest

#copying the code into the nginx path file
COPY . /usr/share/nginx/html

#exposing the port 
EXPOSE 80

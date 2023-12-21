FROM nginx:latest

RUN apt-get update -y
RUN apt-get install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html

COPY web/ /usr/share/nginx/html

CMD [ "nginx", "-g", "daemon off;"]
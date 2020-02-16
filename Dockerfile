FROM nginx

COPY ./build/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY ./vhost.nginx.conf /etc/nginx/conf.d/blog.conf

EXPOSE 80

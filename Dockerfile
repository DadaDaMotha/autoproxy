FROM jwilder/nginx-proxy:alpine

COPY proxy_wide/uploadsize.conf /etc/nginx/conf.d/uploadsize.conf

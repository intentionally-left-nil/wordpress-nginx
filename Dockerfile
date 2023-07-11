FROM nginx:1.25-alpine
RUN deluser nginx || true
RUN delgroup nginx || true
RUN adduser -D -u 1000 -s /bin/sh nginx
COPY php_common.conf /etc/nginx/snippets/php_common.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

FROM nginx:1.27-alpine
RUN deluser nginx || true
RUN delgroup nginx || true
RUN adduser -D -u 1000 -s /bin/sh nginx
COPY php_common.conf /etc/nginx/snippets/php_common.conf
COPY default.conf /etc/nginx/conf.d/default.conf

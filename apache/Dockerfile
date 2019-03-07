FROM httpd:2.4-alpine

RUN apk update; \
    apk upgrade; \
    apk add --no-cache acl; \
    apk add openrc --no-cache;

#RUN a2enmod vhost_alias

# Copy apache vhost file to proxy php requests to php-fpm container
COPY ./config/default.conf /usr/local/apache2/conf/default.conf
COPY permission_logs_cache.sh /permission_logs_cache.sh

RUN echo "IncludeOptional /usr/local/apache2/conf/default.conf" \
    >> /usr/local/apache2/conf/httpd.conf \
    && chmod +x /permission_logs_cache.sh

ENTRYPOINT [ "sh", "/permission_logs_cache.sh" ]
# kio network, gbm
FROM php:7.2.7-fpm-alpine3.7

RUN apk add --update --no-cache \
    curl libgcc libstdc++ libx11 glib libxrender libxext libintl ttf-liberation

RUN docker-php-ext-install mysqli \
    && wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
    && tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz wkhtmltox/bin/wkhtmltopdf \
    && mv wkhtmltox/bin/wkhtmltopdf /usr/bin \
    && rm -rf wkhtmltox \
    && rm wkhtmltox-0.12.4_linux-generic-amd64.tar.xz


RUN apk add --no-cache acl \
    && /usr/local/bin/php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && /usr/local/bin/php composer-setup.php --filename=composer \
    && /usr/local/bin/php -r "unlink('composer-setup.php');" \
    && mv composer /usr/local/bin/composer
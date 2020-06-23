FROM php:7.4.7-alpine3.12

RUN apk add --no-cache tini bash

RUN docker-php-ext-install bcmath pdo pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

STOPSIGNAL SIGTERM

WORKDIR /var/www/html

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]


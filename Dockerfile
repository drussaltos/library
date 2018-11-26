FROM spaceonfire/nginx-php-fpm:1.0.0

ENV SOF_PRESET=wordpress \
	PAGER=more

ARG APPLICATION_ENV

COPY ./database/ ./database/
COPY ./composer.json ./composer.lock ./
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist
COPY ./ ./

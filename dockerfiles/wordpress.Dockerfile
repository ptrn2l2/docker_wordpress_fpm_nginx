# docker build --build-arg TAG=4.9.8-php7.2-pfm-alpine
ARG TAG=do_not_exists_use_TAG_build-arg_please

FROM wordpress:${TAG} as wordpress_prod

# https://github.com/docker-library/wordpress/issues/244#issuecomment-337917033
# https://stackoverflow.com/a/46831699
FROM wordpress:${TAG} as wordpress_debug

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.6.1 \
    && docker-php-ext-enable xdebug
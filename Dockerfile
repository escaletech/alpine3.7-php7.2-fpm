FROM php:7.2-fpm-alpine3.7

WORKDIR /app

RUN apk upgrade && apk add --update --no-cache --virtual .ext-deps \
  autoconf \
  automake \
  libtool \
  nasm \
  g++ \
  make \
  freetype-dev \
  libjpeg-turbo-dev \
  libmcrypt-dev \
  libpng-dev \
  libwebp-dev \
  nodejs \
  yarn

RUN set -xe \
    && apk add --update --no-cache \
    ca-certificates \
    vim \
    curl \
    openssh-client \
    libmemcached-libs \
    libevent \
    libssl1.0 \
    musl \
    yaml \
    php7 \
    php7-apcu \
    php7-bcmath \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-fileinfo \
    php7-iconv \
    php7-intl \
    php7-json \
    php7-openssl \
    php7-opcache \
    php7-mbstring \
    php7-memcached \
    php7-mcrypt \
    php7-mysqlnd \
    php7-mysqli \
    php7-pcntl \
    php7-pgsql \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-pdo_sqlite \
    php7-phar \
    php7-posix \
    php7-redis \
    php7-session \
    php7-simplexml \
    php7-soap \
    php7-sockets \
    php7-tokenizer \
    php7-xml \
    php7-xmlreader \
    php7-xmlwriter \
    php7-zip \
    php7-zlib

RUN pecl install redis
RUN docker-php-ext-install mysqli && \
	docker-php-ext-install pdo_mysql && \
	docker-php-ext-install mbstring && \
	docker-php-ext-install opcache && \
        docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

EXPOSE 80

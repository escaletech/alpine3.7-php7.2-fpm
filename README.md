## alpine3.7-php7.2-fpm ##

Build Docker Image.

This image have PHP7, PHP lib's, and dependency manager's (composer php, npm)

## Dockerhub ##
https://hub.docker.com/r/escaletech/alpine3.7-php7.2-fpm-prod


## Build container ##

### Services ###
- alpine 3.7
- php 7.2
- php-fpm
- node
- npm
- php composer

### Packages ###
- ca-certificates
- curl
- openssh-client
- libmemcached-libs
- libevent
- libssl1.0
- musl
- yaml
- php7
- php7-apcu
- php7-bcmath
- php7-ctype
- php7-curl
- php7-dom
- php7-fileinfo
- php7-iconv
- php7-intl
- php7-json
- php7-openssl
- php7-opcache
- php7-mbstring
- php7-memcached
- php7-mcrypt
- php7-mysqlnd
- php7-mysqli
- php7-pcntl
- php7-pgsql
- php7-pdo_mysql
- php7-pdo_pgsql
- php7-pdo_sqlite
- php7-phar
- php7-posix
- php7-session
- php7-simplexml
- php7-soap
- php7-sockets
- php7-tokenizer
- php7-xml
- php7-xmlreader
- php7-xmlwriter
- php7-zip
- php7-zlib

- docker-php-ext-install mysqli
- docker-php-ext-install pdo_mysql
- docker-php-ext-install mbstring
- docker-php-ext-install opcache

### Expose Port ###
- 80

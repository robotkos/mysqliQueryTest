#docker build -t 0.0.1 . && docker run -p 3307:3306 --name mysqli-server 0.0.1
FROM php:7

RUN docker-php-ext-install mysqli
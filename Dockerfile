#docker build -t 0.0.1 . && docker run -p 3307:3306 --name mysqli-server 0.0.2
FROM php:7

RUN docker-php-ext-install mysqli

RUN	mkdir /usr/sql
RUN	chmod 644 /usr/sql

ADD ["sqlDump/Sample-SQL-File-1000000-Rows.sql", "/usr/sql/sources.sql"]


#docker build -t 0.0.1 . && docker run -p 3307:3306 --name mysqli-server 0.0.2
FROM mysql:5.7

RUN	mkdir /usr/sql
RUN	chmod 644 /usr/sql

# ROOT PASSWORD
ENV TIMEZONE Etc/UTC
ENV MYSQL_ROOT_PASSWORD=w2e3r4 \
    MYSQL_DATABASE=lba \
    MYSQL_USER=robot \
    MYSQL_PASSWORD=serhii

COPY sqlDump/Sample-SQL-File-1000000-Rows.sql /docker-entrypoint-initdb.d/lba.sql

RUN /etc/init.d/mysql start && \
        sleep 5 && \
        mysql -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE lba" && \
    	mysql -p${MYSQL_ROOT_PASSWORD} -D lba < /docker-entrypoint-initdb.d/lba.sql
#PORT
EXPOSE 3310
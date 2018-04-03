#docker build -t mysqlimage . && docker docker run -it -p 3307:3306 --name mysql-server mysqlimage
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
EXPOSE 3307:3306
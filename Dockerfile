#docker build -t 0.0.1 . && docker run -p 3307:3306 --name mysqli-server 0.0.2
FROM mysql:5.7

RUN	mkdir /usr/sql
RUN	chmod 644 /usr/sql

# ROOT PASSWORD
ENV MYSQL_ROOT_PASSWORD=w2e3r4

#ENV MYSQL_DATABASE=sampledb
ENV MYSQL_USER=sample-username
ENV MYSQL_PASSWORD=q1w2e3

ADD ["sqlDump/Sample-SQL-File-1000000-Rows.sql", "/usr/sql/sources.sql"]

RUN /etc/init.d/mysql start && \
        mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE lba;" && \
    	mysql -u root -p${MYSQL_ROOT_PASSWORD} -D lba < /usr/sql/sources.sql && \
    	rm -rd /usr/sql
#PORT
EXPOSE 3306
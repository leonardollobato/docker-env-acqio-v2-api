FROM mysql:latest
MAINTAINER Leonardo Lobato <leonardolobato@gmail.com>

# Manually set up the apache environment variables
ENV no_proxy *.local, 169.254/16
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV GOSU_VERSION 1.7
ENV MYSQL_MAJOR 5.7
ENV MYSQL_VERSION 5.7.13-1debian8
ENV MYSQL_ROOT_PASSWORD root

# Expose apache.
EXPOSE 3306

WORKDIR ~/

ADD data /var/lib/mysql
# COPY *.sql /tmp/
# ADD import_db.sh /tmp/import_db.sh

# RUN chmod -R 777 /tmp/*.sql
# RUN chmod -R 777 /tmp/import_db.sh
RUN chmod -R 755 /var/lib/mysql/




#RUN mysql -h 127.0.0.1 -p 3306 -u root -proot -e "create database acqiopay_dev;"
#RUN mysql -uroot -proot acqiopay_dev < /tmp/acqiopay_dev.sql
#RUN /tmp/import_db.sh

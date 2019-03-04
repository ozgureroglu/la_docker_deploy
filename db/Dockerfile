# Set the base image to use to Ubuntu
FROM mysql/mysql-server

# Set the file maintainer
MAINTAINER Ozgur Eroglu


# Asagida mysql icin bir root user, normal user bir db ve erisim ip adresi tanimlaniyor.
ENV MYSQL_ROOT_HOST 172.168.50.%
ENV MYSQL_ROOT_PASSWORD mysqladmin
ENV MYSQL_USER lider
ENV MYSQL_PASSWORD sifre
ENV MYSQL_DATABASE liderdb


ADD ./mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# Port to expose
EXPOSE 3306

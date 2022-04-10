FROM centos:latest
MAINTAINER sairamthota@gmail.com
RUN yum install httpd -y
RUN yum install zip
RUN yum install unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/pages247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rp markups-kindle/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

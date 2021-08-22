FROM centos:latest
MAINTAINER SUNIL GAHLOT
RUN yum install -y httpd \ 
zip \ 
unzip
ADD https://downloads.wordpress.org/theme/kadence.1.0.30.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip kadence.zip
RUN cp -rvf kadence/* .
RUN rm -rf kadence.1.0.30.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

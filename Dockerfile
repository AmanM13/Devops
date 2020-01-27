FROM centos:7
RUN yum install git
RUN git clone https://github.com/BhaleraoNiranjan/phpcalculator.git
RUN yum -y install httpd
RUN yum -y install php php-cli
COPY ./phpcalculator/index.php /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

FROM centos:8
RUN  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN  sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/bonativo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip bonativo.zip
RUN rm -rf bonativo.zip &&\
    cp -rf bonativo/* . &&\
    rm -rf bonativo &&\
    mkdir /var/www/html/secure &&\
    touch /var/www/html/secure/keshav
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

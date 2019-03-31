FROM centos:7

RUN yum -y update

# repo
RUN yum -y install epel-release
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# apache
RUN yum -y install httpd

# php
RUN yum -y install --enablerepo=remi,remi-php71 php php-intl php-devel php-mbstring php-pdo php-gd php-xml php-mysqlnd php-pgsql

# other
RUN yum -y install zip unzip

# composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html

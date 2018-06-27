FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt update && apt upgrade -y
RUN apt install -y wget \git \zip \unzip \vim \nginx \systemd
RUN apt update

RUN apt install -y php7.2 \php7.2-curl \php7.2-common \php7.2-cli \php7.2-mysql \php7.2-mbstring \php7.2-fpm \php7.2-xml \php7.2-zip

#COPY /etc/php/7.2/fpm/php.ini /etc/php/7.2/fpm/php.ini
COPY nginx-laravel /etc/nginx/sites-available/default

ENV COMPOSER_HOME /composer
ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /home/laravel


# Install composer
RUN apt install -y composer
RUN composer create-project laravel/laravel .

RUN systemctl start php7.2-fpm 
RUN systemctl start nginx 

RUN chown -R www-data:root /home/laravel
RUN chmod 755 /home/laravel/storage


EXPOSE 80

CMD ["/bin/bash"]


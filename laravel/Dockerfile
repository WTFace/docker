FROM ubuntu

# Remove sh
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install wget \git \zip \unzip \vim \nginx \php

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update

RUN apt-get -y install php7.2 \php7.2-mysql \php7.2-fpm \php7.2-mbstring \php7.2-xml \php7.2-curl

ENV COMPOSER_HOME /composer
ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /app


# Install composer
RUN apt-get -y install composer
#RUN mv composer.phar /usr/local/bin/composer


EXPOSE 80

CMD ["/bin/bash"]


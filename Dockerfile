FROM ubuntu:xenial

RUN apt update -yq\
&& apt upgrade -yq\
&& apt install apache2 -yq\
&& apt install php -yq\
&& apt install libapache2-mod-php7.0 -yq\
&& service apache2 restart \
&& apt install vim -yq

ADD ./data /var/www/html

VOLUME ./data:/var/www/html

CMD service apache2 start

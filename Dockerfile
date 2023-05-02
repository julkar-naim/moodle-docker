FROM php:7.4-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

RUN mkdir /var/www/moodle
RUN chown -R root /var/www/moodle
RUN chmod -R 0755 /var/www/moodle
RUN mkdir /var/moodledata
RUN chmod -R 0777 /var/moodledata

RUN curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s \
      mysqli gd zip intl xdebug

COPY docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d

EXPOSE 9000
EXPOSE 9001
EXPOSE 9002
EXPOSE 9003

CMD ["apache2-foreground"]
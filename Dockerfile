FROM php:8.1-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

RUN mkdir /var/www/moodle
RUN chown -R root /var/www/moodle
RUN chmod -R 0755 /var/www/moodle
RUN mkdir /var/moodledata
RUN chmod -R 0777 /var/moodledata

RUN curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s \
      mysqli gd zip intl xdebug sodium exif

COPY docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d

RUN echo "max_input_vars = 5000" >> /usr/local/etc/php/php.ini-development
RUN echo "max_input_vars = 5000" >> /usr/local/etc/php/php.ini-production
RUN mv /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

CMD ["apache2-foreground"]

FROM wiwatsrt/docker-laravel-composer

WORKDIR /tmp

# Run composer and phpunit installation.
RUN composer require "phpunit/phpunit:~6.5" --no-interaction \
&& ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit \
&& mkdir /var/www/app

WORKDIR /var/www/app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]
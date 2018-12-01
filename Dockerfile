FROM wiwatsrt/docker-laravel-composer

WORKDIR /tmp

RUN apk add --no-cache git

# Run composer and phpunit installation.
RUN composer require "phpunit/phpunit:^7.0" --no-interaction \
&& ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit \
&& mkdir /var/www/app

WORKDIR /var/www/app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]
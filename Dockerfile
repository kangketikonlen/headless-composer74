FROM php:7.4-cli
WORKDIR /app
RUN apt-get update && apt-get install -y git libzip-dev libcurl4-openssl-dev libicu-dev libxml2-dev libpng-dev libonig-dev \
    && docker-php-ext-install zip mysqli mbstring intl bcmath curl gd xml soap pcntl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN php -v && composer --version
CMD ["php", "-a"]
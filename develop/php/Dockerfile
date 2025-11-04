FROM php:7.4-fpm
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    autoconf \
    pkg-config \
    libmagickcore-dev \
    libmagickwand-dev \
    imagemagick \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libzip-dev \
    libgdbm-dev \
    ca-certificates \
    && docker-php-ext-configure gd --with-webp --with-jpeg --with-freetype \
    && docker-php-ext-configure dba --with-gdbm \
    && docker-php-ext-install -j$(nproc) gd iconv pdo_mysql mysqli bcmath calendar exif gettext sockets dba pcntl shmop sysvmsg sysvsem sysvshm \
    && pecl install redis-5.1.1 \
    && pecl install imagick \
    && docker-php-ext-enable redis imagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
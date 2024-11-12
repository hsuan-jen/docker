FROM php:7.4-fpm
RUN echo "deb https://mirrors.tencent.com/debian/ bookworm main non-free non-free-firmware contrib \n \
deb-src https://mirrors.tencent.com/debian/ bookworm main non-free non-free-firmware contrib \n \
deb https://mirrors.tencent.com/debian-security/ bookworm-security main deb-src https://mirrors.tencent.com/debian-security/ bookworm-security main \n \
deb https://mirrors.tencent.com/debian/ bookworm-updates main non-free non-free-firmware contrib \n \
deb-src https://mirrors.tencent.com/debian/ bookworm-updates main non-free non-free-firmware contrib \n \
deb https://mirrors.tencent.com/debian/ bookworm-backports main non-free non-free-firmware contrib \n \
deb-src https://mirrors.tencent.com/debian/ bookworm-backports main non-free non-free-firmware contrib" > /etc/apt/sources.list \
&& apt-get update \
    && apt-get install -y \
    build-essential \
    libmagickcore-dev \
    libmagickwand-dev \
    imagemagick \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libzip-dev \
    && docker-php-ext-configure gd  --with-webp=/usr/include/webp --with-jpeg=/usr/include --with-freetype=/usr/include/freetype2/ \
    && docker-php-ext-install -j$(nproc) gd iconv  pdo_mysql  mysqli bcmath calendar exif gettext sockets dba  pcntl  shmop sysvmsg sysvsem sysvshm \
    && pecl install redis-5.1.1 \
    && pecl install imagick \
    && pecl install mcrypt \
    && docker-php-ext-enable redis imagick mcrypt
#build this file into your local environment as local/bitbucket image to test dbitbucket-pipelines.yml
FROM php:7.1.13-cli

RUN apt-get update && \
    apt-get install -y \
    libz-dev \
    libbz2-dev \
    libxml2-dev \
    libpng-dev \
    libc-client-dev \
    libkrb5-dev \
    curl \
    && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install pdo_mysql mysqli zip bz2 dom gd imap \
    && apt-get clean
# Source the bash
RUN . ~/.bashrc

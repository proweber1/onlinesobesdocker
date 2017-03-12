FROM java

# Установка php, node.js, java уже установлена
RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list \
    && echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list \
    && cd /usr/local/src && wget https://www.dotdeb.org/dotdeb.gpg && apt-key add dotdeb.gpg \
    && apt-get update \
    && apt-get -y install nodejs php7.0-fpm

# Копируем скрипты запусков приложений в папку /runners
COPY ["./runners", "/runners"]

# Даем всем раннерам права на запуск
RUN chmod -R +x /runners

# Устанавливаем рабочую директорию в папку с проектом
WORKDIR /shared-code
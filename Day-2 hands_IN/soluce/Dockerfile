FROM debian:bullseye-slim
LABEL maintainer="Farid H. <info@yaba-consulting.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apache2 \
    php libapache2-mod-php php-mysql \
    mariadb-server \
    openssh-server \
    vsftpd \
    wget unzip vim && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/sshd /var/run/vsftpd/empty /var/ftp && \
    echo "root:root" | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN useradd -m ftpuser && echo "ftpuser:ftppass" | chpasswd && mkdir -p /home/ftpuser/ftp && chown nobody:nogroup /home/ftpuser/ftp && chmod a-w /home/ftpuser/ftp && mkdir /home/ftpuser/ftp/files && chown ftpuser:ftpuser /home/ftpuser/ftp/files

COPY vsftpd.conf /etc/vsftpd.conf

WORKDIR /var/www/html

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.zip && \
    unzip phpMyAdmin-5.2.1-all-languages.zip && \
    mv phpMyAdmin-5.2.1-all-languages phpmyadmin && \
    rm phpMyAdmin-5.2.1-all-languages.zip

COPY init.sh /init.sh
RUN chmod +x /init.sh

EXPOSE 22 21 20 80 3306

CMD ["/init.sh"]
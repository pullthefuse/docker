FROM pullthefuse/php:7.4-fpm-alpine

WORKDIR /data

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN echo 'export PS1="[docker-setup] $(PWD) > "' >> /root/.bashrc

COPY ./setup.sh /usr/local/bin/setup.sh
COPY ./load.sh /usr/local/bin/load.sh

RUN ["chmod", "+x", "/usr/local/bin/setup.sh"]
RUN ["chmod", "+x", "/usr/local/bin/load.sh"]

ENTRYPOINT ["/usr/local/bin/load.sh"]

CMD ["/bin/bash", "/usr/local/bin/setup.sh"]

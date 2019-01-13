ARG BASE=ubuntu
FROM $BASE

ARG arch=none
ENV ARCH=$arch

COPY qemu/qemu-$ARCH-static* /usr/bin/

RUN apt update \
    && apt-get install -y apache2 libapache2-mod-musicindex \
    && apt-get -y clean all \
    && mkdir -p /music /cache \
    && ln -sf ../mods-available/musicindex.load /etc/apache2/mods-enabled/ \
    && rm -rf /var/www/html \
    && ln -s /music /var/www/html


ADD *.conf /etc/apache2/conf-enabled/
ADD entrypoint.sh /

VOLUME /music /cache
EXPOSE 80 443

CMD ["/entrypoint.sh"]

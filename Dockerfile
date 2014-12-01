FROM yrpri/base
MAINTAINER Robert Vidar Bjarnason <robert@citizens.is>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update
RUN apt-get -yqq upgrade
RUN apt-get -yqq install ngircd

COPY assets/ngircd.conf /etc/ngircd/ngircd.conf
COPY assets/supervisor.conf /etc/supervisor/conf.d/ngircd.conf

COPY assets/init /app/init
RUN chmod 755 /app/init

# forward request
# RUN ln -sf /dev/stdout /var/log/syslog.log

EXPOSE 6667

ENTRYPOINT ["/app/init"]
CMD ["app:start"]

FROM haproxy:1.8

RUN apt-get update && \
  apt-get install -y busybox-syslogd nginx-light && \
  rm -rf /var/cache/apt /var/lib/apt/lists

RUN mv /docker-entrypoint.sh /entrypoint-haproxy.sh

RUN mkdir -p /etc/ssl/private

ADD ./docker-compose.yml /docker/
ADD ./Dockerfile /docker/
ADD ./docker-entrypoint.sh /

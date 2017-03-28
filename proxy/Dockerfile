FROM ubuntu:xenial
MAINTAINER nine.ch Development <development@nine.ch>

RUN apt-get -qq update && \
    apt-get -qq install -y apache2 ruby && \
    rm -rf /var/lib/apt/lists/*

RUN touch /docker/passwd && \
    chmod a+w /docker/passwd

COPY docker /docker/
WORKDIR /docker

EXPOSE 8080

CMD ["./start.sh"]

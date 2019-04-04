FROM ubuntu:xenial
LABEL maintainer="nine.ch <engineering@nine.ch>"

RUN apt-get -qq update && \
    apt-get -qq install -y apache2 ruby && \
    rm -rf /var/lib/apt/lists/*

COPY docker /docker/
WORKDIR /docker

RUN mkdir -p /docker && \
    touch /docker/passwd && \
    chmod a+w /docker/passwd

EXPOSE 8080

CMD ["./start.sh"]

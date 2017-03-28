FROM ruby:2.4-alpine
MAINTAINER nine.ch Development <development@nine.ch>

RUN mkdir -p /app /var/lib/gemstash && \
    chmod a+w /var/lib/gemstash
WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN apk add --no-cache build-base git sqlite-dev mariadb-dev \
    && bundle install -j2 --deployment \
    && apk del build-base git

COPY . /app/

VOLUME /var/lib/gemstash
EXPOSE 9292
CMD [ "/app/bin/start.sh" ]

#!/bin/sh

cd /app
exec /usr/local/bin/bundle exec gemstash start --no-daemonize --config-file /app/config.yml.erb

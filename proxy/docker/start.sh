#!/bin/bash

ruby render_template.rb

if [ -z ${BASIC_AUTH_TOKEN+x} ]; then
  echo "No basic auth token set."
else
  echo "Creating password file."
  echo "" | htpasswd -i -c /docker/passwd ${BASIC_AUTH_TOKEN}
fi

mkdir -p /tmp/lock
mkdir -p /tmp/cache

exec apache2ctl -f /tmp/httpd.conf -D FOREGROUND

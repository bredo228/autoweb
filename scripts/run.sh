#!/bin/sh

/scripts/autoupdate.sh &

echo "Running httpd"

httpd -f -v -p 3000 -h /srv

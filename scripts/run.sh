#!/bin/sh

/scripts/autoupdate.sh &

echo "Running lighttpd"

lighttpd -D -f /config/lighttpd.conf

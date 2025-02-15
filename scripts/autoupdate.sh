#!/bin/sh

while true; do
	/scripts/update.sh
	/bin/sleep ${UPDATE_INTERVAL}
done

#!/bin/sh

cd /srv/

if [ "${PRIVATE_REPOSITORY}" = "true" ]; then
	# Repository is private, treat it as such.	
	if [ -d ".git" ]; then
		git pull https://${GIT_USERNAME}:${GIT_TOKEN}@${GIT_REPOSITORY#https://} # thanks sveken
	else
		git clone https://${GIT_USERNAME}:${GIT_TOKEN}@${GIT_REPOSITORY#https://} .
	fi

else
	# we don't need creds, just send it.
	if [ -d ".git" ]; then
		git pull
	else
		git clone ${GIT_REPOSITORY} .
	fi
fi
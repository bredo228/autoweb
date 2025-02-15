#!/bin/sh

cd /srv/

if [ -d ".git" ]; then
	git pull
else
	git clone ${GIT_REPOSITORY} .
fi

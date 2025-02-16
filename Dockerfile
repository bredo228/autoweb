FROM	alpine:latest

RUN	apk add --no-cache git lighttpd

RUN	mkdir /srv/www \
	&& chown lighttpd:lighttpd /srv/www

COPY	./scripts /scripts
COPY	./config /config

RUN	chmod +x /scripts/*

USER	lighttpd

CMD	["/scripts/run.sh"]

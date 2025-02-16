FROM	alpine:latest

RUN	apk add --no-cache git lighttpd

COPY	./scripts /scripts
COPY	./config /config

RUN	chmod +x /scripts/*

CMD	["/scripts/run.sh"]

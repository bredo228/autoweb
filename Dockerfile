FROM	alpine:latest

RUN	apk add git busybox-extras \
	&& rm -rf /var/cache/apk/*

COPY	./scripts /scripts

RUN	chmod +x /scripts/*

CMD	["/scripts/run.sh"]

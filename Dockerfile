FROM fedora:latest

RUN dnf -y update && \
	mkdir -p /usr/local/bin

VOLUME /etc/otelcol-contrib
ADD otel-collector-image/otel-collector-image /usr/local/bin/otel-collector-sp

# Debug stuff...
#ENTRYPOINT /bin/bash
#ENTRYPOINT /usr/local/bin/otel-collector-sp

CMD ["/usr/local/bin/otel-collector-sp", "--config", "/etc/otelcol-contrib/config.yaml"]


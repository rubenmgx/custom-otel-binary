FROM fedora:latest

RUN dnf -y update && \
	mkdir -p /usr/local/bin

ADD builder.sh /usr/local/bin/builder.sh

RUN chmod +x /usr/local/bin/start.sh

#ENTRYPOINT /bin/bash
ENTRYPOINT /bin/bash -l /usr/local/bin/builder.sh

FROM ubuntu:22.04
COPY bin/* /tmp/
RUN bash /tmp/init.sh
WORKDIR /workspace

ENTRYPOINT /entry.sh

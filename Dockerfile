FROM ubuntu:22.04

ARG INIT_JDK_VERSION=22
ENV JDK_VERSION=$INIT_JDK_VERSION
COPY bin/* /tmp/
RUN bash /tmp/init.sh
WORKDIR /workspace

CMD [ "/entry.sh" ]

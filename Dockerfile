FROM ubuntu:14.10

MAINTAINER Erick Cantwell <ecantwell@mirantis.com>

COPY . /tmp/hello-world
RUN cp /tmp/hello-world/test/entrypoint.sh /tmp/hello-world/entrypoint.sh
WORKDIR /tmp/hello-world

ENTRYPOINT ["./entrypoint.sh"]

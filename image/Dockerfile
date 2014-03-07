FROM ubuntu:12.04
MAINTAINER lxfontes "lxfontes+hockeykit@gmail.com"

EXPOSE 8088

ENV HOME /root
RUN mkdir /build
ADD . /build

RUN /build/prepare.sh

CMD ["/boot_apache.sh"]

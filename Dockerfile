FROM mwaeckerlin/ubuntu-base
MAINTAINER mwaeckerlin

EXPOSE 11371

ENV SKS_OPTIONS "-disable_mailsync"

RUN apt-get update && apt-get install -y sks telnet
RUN sks build
RUN mkdir /var/run/sks
RUN chown -Rc debian-sks:debian-sks /var/run/sks /var/lib/sks/DB

USER debian-sks

VOLUME /var/lib/sks
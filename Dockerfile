FROM debian:latest

RUN apt-get update -yq && apt-get install fio -yq

RUN mkdir /data

RUN mkdir /config

ADD job.fio /config/

ADD script.sh /script.sh

ENTRYPOINT ["/script.sh"]

FROM debian:latest

RUN apt-get update -yq && apt-get install fio -yq

RUN mkdir /data1

RUN mkdir /data2

RUN mkdir /data3

RUN mkdir /data4

RUN mkdir /data5

RUN mkdir /data6

RUN mkdir /config

ADD job.fio /config/

ADD script.sh /script.sh

ENTRYPOINT ["/script.sh"]

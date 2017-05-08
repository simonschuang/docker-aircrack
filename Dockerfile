FROM ubuntu:xenial

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y vim gcc gmake sqlite3 pkg-config

ADD run.sh /run.sh
ADD aircrack-ng-1.2-rc4.tar.gz  /aircrack-ng-1.2-rc4.tar.gz 

CMD ["/run.sh"]

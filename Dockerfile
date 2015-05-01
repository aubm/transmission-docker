FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y transmission-daemon transmission-remote-cli transmission-cli
RUN service transmission-daemon stop

ENV RPC_PASSWORD transmission
ENV RPC_USERNAME transmission

RUN mkdir -p /home/transmission-daemon
RUN mkdir /download_dir
RUN mkdir /incomplete_dir

ADD templates/settings.json.tpl /home/transmission-daemon/settings.json
ADD start.sh /start.sh

RUN chmod +x /start.sh

VOLUME ["/download_dir", "/incomplete_dir"]

CMD ["sh", "/start.sh"]

EXPOSE 9091

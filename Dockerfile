FROM ubuntu:xenial

RUN apt-get update && apt-get install -y tor tor-geoipdb

EXPOSE 9001

COPY tor_config_relay.conf /etc/tor/torrc

ENTRYPOINT [ "tor" ]

FROM ubuntu:xenial

RUN apt-get update && apt-get install -y tor

EXPOSE 9001

COPY tor_config_relay.conf /etc/tor/torrc

USER debian-tor

ENTRYPOINT [ "tor" ]
FROM ubuntu:xenial

RUN apt-get update && apt-get install -y tor

EXPOSE 9001

COPY tor_config_relay.conf /etc/tor/torrc

RUN chown -R debian-tor /var/lib/tor

USER debian-tor

ENTRYPOINT [ "tor" ]
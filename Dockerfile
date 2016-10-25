FROM ubuntu:xenial

EXPOSE 9001

RUN echo 'deb http://deb.torproject.org/torproject.org xenial main' > /etc/apt/sources.list.d/tor.list && \
    gpg --keyserver keys.gnupg.net --recv 886DDD89 && \
    gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

RUN apt-get update && apt-get install -y deb.torproject.org-keyring tor tor-geoipdb openssl

COPY tor_config_relay.conf /etc/tor/torrc

RUN echo "Nickname dockertor$(head -c 16 /dev/urandom  | sha1sum | cut -c1-6)" >> /etc/tor/torrc

ENTRYPOINT [ "tor" ]

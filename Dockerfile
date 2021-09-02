FROM debian:buster-slim

RUN apt update && \
	apt install -y shadowsocks-libev openconnect ocproxy privoxy openssh-client openvpn curl

COPY config /etc/privoxy/config
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 9250 8118

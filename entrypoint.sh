#!/bin/bash


if [ -d "/tmp/ssh" ] 
then
    cp -a /tmp/ssh/ ~/.ssh
    chown -R root:root ~/.ssh
    chmod 600 -R ~/.ssh
    chmod 700 ~/.ssh
fi

privoxy --no-daemon --pidfile /tmp/privoxy.pid  /etc/privoxy/config &

exec "$@"

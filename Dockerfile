FROM alpine:3.3

RUN apk add --update curl ca-certificates \
    && curl -L -o /usr/bin/confd https://github.com/kelseyhightower/confd/releases/download/v0.12.0-alpha3/confd-0.12.0-alpha3-linux-amd64 \
    && chmod +x /usr/bin/confd \
    && mkdir -p /etc/confd

ONBUILD ADD ./templates ./conf.d /etc/confd/

ENTRYPOINT ["confd"]

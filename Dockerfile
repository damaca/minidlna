FROM alpine:latest

EXPOSE 8200 1900/udp

VOLUME ["/media"]

RUN apk update && apk add minidlna

CMD [ "/usr/sbin/minidlnad", "-S" ]

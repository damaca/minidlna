FROM alpine:latest

EXPOSE 8200 1900/udp

VOLUME ["/media"]

VOLUME ["/etc/minidlna"]

RUN apk update && apk add minidlna py-pip

RUN pip install --upgrade pip && pip install BeautifulSoup && pip install periscope

CMD [ "/usr/sbin/minidlnad", "-S", "-f", "/etc/minidlna/minidlna.conf" ]

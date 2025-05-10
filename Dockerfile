FROM ubuntu:22.04

WORKDIR /app

COPY wucde .
COPY config.json .

RUN chmod +x wucde
RUN chmod 666 config.json

CMD ["./wucde"]

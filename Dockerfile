FROM ubuntu:22.04

RUN apt-get update && apt-get install -y unzip

WORKDIR /app

COPY wucde.zip .
COPY config.json .

RUN unzip wucde.zip
RUN rm wucde.zip

RUN chmod +x wucde
RUN chmod 666 config.json

CMD ["./wucde"]

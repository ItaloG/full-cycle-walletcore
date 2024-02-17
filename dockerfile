FROM golang:latest

WORKDIR /app/

RUN curl -L https://packagecloud.io/golang-migrate/migrate/gpgkey | apt-key add - && \
    echo "deb https://packagecloud.io/golang-migrate/migrate/ubuntu/ jammy main" > /etc/apt/sources.list.d/migrate.list && \
    apt-get update && \
    apt-get install -y migrate

RUN apt-get update && apt-get install -y librdkafka-dev

CMD ["tail", "-f", "/dev/null"]
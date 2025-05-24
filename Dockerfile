FROM alpine:latest AS builder

RUN mkdir -p /_data/tmp && \
    rm -rf /_tmp && \
    ln -s /_data/tmp /_tmp

FROM ghcr.io/xz3dev/quacklytics/amd64:latest

COPY application.conf /app/application.conf

COPY --from=builder /_data /_data
COPY --from=builder /_tmp /_tmp

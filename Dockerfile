FROM ghcr.io/xz3dev/quacklytics/amd64:latest

# Copy your empty configuration file
COPY application.conf /app/application.conf

USER root
RUN mkdir -p /_data/tmp && \
    rm -rf /_tmp && \
    ln -s /_data/tmp /_tmp

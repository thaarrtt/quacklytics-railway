# Use the AMD64 version of the Quacklytics image
FROM ghcr.io/xz3dev/quacklytics/amd64:latest

COPY application.conf /app/application.conf

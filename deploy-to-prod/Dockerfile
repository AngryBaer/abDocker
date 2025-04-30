FROM alpine:latest

RUN apk add --no-cache git bash

COPY start.sh /start.sh

RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]

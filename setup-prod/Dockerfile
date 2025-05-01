FROM alpine:latest

RUN apk add --no-cache git bash

COPY start.sh /start.sh
COPY repos.txt /repos.txt

RUN ls -l /start.sh
RUN ls -l /repos.txt
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

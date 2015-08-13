FROM alpine:3.2

RUN apk update && \
    apk add nodejs-dev python make g++ && \
    rm -rf /var/cache/apk/*

RUN npm install -g debade-trigger
ADD trigger.yml /etc/debade/trigger.yml

CMD ["/usr/bin/debade-trigger", "-c", "/etc/debade/trigger.yml"]

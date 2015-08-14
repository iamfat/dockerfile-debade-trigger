FROM genee/node:0.12

RUN npm install -g debade-trigger
ADD trigger.yml /etc/debade/trigger.yml

CMD ["/usr/bin/debade-trigger", "-c", "/etc/debade/trigger.yml"]

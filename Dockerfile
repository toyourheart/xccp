FROM v2fly/v2fly-core:latest

RUN apk add --no-cache gettext jq
COPY config.json.tp /root/
ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh

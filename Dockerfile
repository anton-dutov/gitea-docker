FROM gitea/gitea:1.23.4

RUN apk --no-cache add fail2ban \
    && rm -rf /var/cache/apk/*

ENV USER=git
ENV GITEA_CUSTOM=/data/gitea

VOLUME ["/data"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/usr/bin/s6-svscan", "/etc/s6"]


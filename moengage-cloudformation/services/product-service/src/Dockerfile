FROM scratch

ADD users /etc/passwd
USER nobody

EXPOSE 8001

ADD app /app

ENTRYPOINT [ "/app" ]

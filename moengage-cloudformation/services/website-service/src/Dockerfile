FROM scratch

ADD users /etc/passwd
USER nobody

EXPOSE 8000

ADD app /app

ENTRYPOINT [ "/app" ]

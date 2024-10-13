FROM gcr.io/distroless/static-debian12:debug-nonroot

COPY dist/blocky /app/blocky
COPY blocklists /blocklists

ENV BLOCKY_CONFIG_FILE=/app/config.yml
WORKDIR /app

HEALTHCHECK --start-period=1m --timeout=3s CMD ["/app/blocky", "healthcheck"]

ENTRYPOINT ["/app/blocky"]

FROM typesense/typesense:26.0

RUN mkdir -p /data

EXPOSE 8108

CMD ["typesense-server",
     "--data-dir", "/data",
     "--api-key", "shopsphereSearchKey",
     "--enable-cors", "true"]

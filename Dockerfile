FROM typesense/typesense:27.0

# Expose Typesense port
EXPOSE 8108

# Typesense requires a persistent data directory
RUN mkdir -p /data

# ENTRYPOINT is provided by the base image automatically:
#   ENTRYPOINT ["/opt/typesense-server"]
#
# So here we ONLY override CMD.

CMD ["/opt/typesense-server","--data-dir=/data","--api-key=shopsphereSearchKey","--listen-address=0.0.0.0","--listen-port=8108","--enable-cors=true"]

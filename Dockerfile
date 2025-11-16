FROM typesense/typesense:27.0

# Create data directory (optional, base image might do it)
RUN mkdir -p /data

# Expose the HTTP port for Typesense
EXPOSE 8108

# Set the command to run the Typesense server with required arguments
CMD ["typesense-server", "--data-dir=/data", "--api-key=shopsphereSearchKey", "--listen-port=8108", "--api-address=0.0.0.0", "--enable-cors=true"]
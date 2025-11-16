FROM typesense/typesense:27.0

# Create data directory
RUN mkdir -p /data

# Expose Typesense Port
EXPOSE 8108

# Start Typesense with arguments
CMD ["typesense-server",
     "--data-dir", "/data",
     "--api-key", "shopsphereSearchKey",
     "--enable-cors", "true"]

FROM postgres:16

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=bandboxdb

# Copy custom entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Expose the PostgreSQL port
EXPOSE 5432

# Use a volume for persistent storage
VOLUME ["/data"]

# Start PostgreSQL when the container starts
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["postgres"]
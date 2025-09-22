FROM postgres:16

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=bandboxdb

# Expose the PostgreSQL port
EXPOSE 5432

# Use a volume for persistent storage
VOLUME ["/var/lib/postgresql/data"]

# Start PostgreSQL when the container starts
CMD ["postgres"]
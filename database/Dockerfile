# PostgreSQL image as the base image
#The base image is official PostgreSQL image
FROM postgres:latest

# Set environment variables for PostgreSQL
# These variables configure the database name, user, and password
ENV POSTGRES_DB=cloud_db
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
# Copy the initialization script into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5432


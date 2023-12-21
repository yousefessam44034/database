# Use an official MySQL image as a parent image
FROM mysql:8.0

# Set the environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=yousef
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_PASSWORD=yousef

# Copy the SQL scripts to initialize the database schema
COPY soo.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306

# Define the command to run MySQL when the container starts
CMD ["mysqld"]

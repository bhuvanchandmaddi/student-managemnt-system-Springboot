# Use the eclipse-temurin:17-jdk as the base image
FROM eclipse-temurin:17-jdk

# Install ping and curl utilities
RUN apt-get update && apt-get install -y iputils-ping curl

# Install MySQL client library
RUN apt-get update && apt-get install -y default-mysql-client

# Set the working directory
WORKDIR /app

# Copy the executable JAR from the build stage
COPY target/* .

# Copy Thymeleaf templates from the source code
COPY src/main/resources/templates /app/templates

# Sleep indefinitely to keep the container running
CMD ["java", "-jar","student-management-system-0.0.1-SNAPSHOT.jar"]

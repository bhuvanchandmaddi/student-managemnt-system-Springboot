# Use an official Maven image as the build environment
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the source code to the container
COPY . .

# Build the application using Maven
RUN mvn clean install -DskipTests

# Use an official OpenJDK runtime as the application environment
FROM openjdk:17-jre-slim

# Set the working directory
WORKDIR /app

# Copy the executable JAR from the build stage
COPY --from=build /app/target/your-spring-boot-app.jar app.jar

# Copy Thymeleaf templates from the source code
COPY src/main/resources/templates /app/templates

# Run the application
CMD ["java", "-jar", "app.jar"]

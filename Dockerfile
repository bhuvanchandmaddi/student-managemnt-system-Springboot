# Use an official OpenJDK runtime as the application environment
FROM openjdk:17-jdk

# Set the working directory
WORKDIR /app

# Copy the executable JAR from the build stage
COPY target/* . 
# Copy Thymeleaf templates from the source code
COPY src/main/resources/templates /app/templates

# Run the application
CMD ["java", "-jar", "*.jar"]

# Use a lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Add metadata
LABEL maintainer="SRIKANT"

# Copy the Spring Boot jar into the container
COPY target/*.jar app.jar

# Expose port Spring Boot runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Use a lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Add metadata
LABEL maintainer="SRIKANT"

# Copy the Spring Boot jar into the container
COPY target/*.jar InsuranceManagementSystem-0.0.1-SNAPSHOT.jar


# Expose port Spring Boot runs on
EXPOSE 8091

# Run the application
ENTRYPOINT ["java", "-jar", "InsuranceManagementSystem-0.0.1-SNAPSHOT.jar"]

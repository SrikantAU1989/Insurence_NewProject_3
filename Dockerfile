# Use a minimal Java image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR into the image
COPY target/InsuranceManagementSystem-0.0.1-SNAPSHOT.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "InsuranceManagementSystem-0.0.1-SNAPSHOT.jar"]

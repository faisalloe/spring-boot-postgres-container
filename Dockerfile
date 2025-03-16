# Use official Eclipse Temurin JDK 17 image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the built jar into the container
COPY target/spring-boot-postgres-container-0.0.1-SNAPSHOT.jar app.jar

# Expose port Spring Boot runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]

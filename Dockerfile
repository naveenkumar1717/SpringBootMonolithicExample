FROM openjdk:17-alpine

# Set the working directory
WORKDIR /app

# Copy the JAR file(s) from the build context into the container's /app directory
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/app.jar
EXPOSE 8080 8081
# Specify the entrypoint command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

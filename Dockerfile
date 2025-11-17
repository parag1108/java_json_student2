# Use AWS Public ECR mirror for OpenJDK 17 slim
FROM public.ecr.aws/docker/library/openjdk:17-slim

WORKDIR /app

# Copy the Maven-built JAR
COPY target/*-jar-with-dependencies.jar app.jar

# Expose the app port
EXPOSE 8082

# Run the Java app
CMD ["java", "-jar", "app.jar"]

FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/java_json_student2-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

EXPOSE 8082

CMD ["java", "-jar", "app.jar"]

FROM bellsoft/liberica-openjdk-alpine:17
COPY build/libs/*.jar app.jar
COPY springboot.p12 /springboot.p12
ENTRYPOINT ["java", "-jar", "./app.jar"]
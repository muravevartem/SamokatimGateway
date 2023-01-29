FROM bellsoft/liberica-openjdk-alpine:17
COPY build/libs/*.jar app.jar
COPY http/keystore.p12 /keystore.p12
ENTRYPOINT ["java", "-jar", "./app.jar"]
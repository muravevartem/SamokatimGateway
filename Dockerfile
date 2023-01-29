FROM bellsoft/liberica-openjdk-alpine:17
COPY build/libs/*.jar app.jar
COPY http/cert.crt cert.crt
RUN keytool -import -alias springboot -file cert.crt -keystore springboot.p12 -storepass password
ENTRYPOINT ["java", "-jar", "./app.jar"]
FROM eclipse-temurin:21-jdk-alpine
RUN mkdir /opt/app
COPY application/target/application-0.5.0.jar /opt/app
WORKDIR /opt/app
ENTRYPOINT ["java", "-jar", "application-0.5.0.jar"]

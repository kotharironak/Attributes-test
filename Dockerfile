FROM adoptopenjdk/openjdk13:x86_64-alpine-jdk-13.0.2_8-slim
COPY target/netty-example-1.0-SNAPSHOT.jar /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]

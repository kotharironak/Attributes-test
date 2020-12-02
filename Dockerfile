FROM adoptopenjdk/13.0.2_8-jdk-openj9-0.18.0
COPY target/netty-example-1.0-SNAPSHOT.jar /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]

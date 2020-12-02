FROM openzipkin/java:15.0.1-15.28.13-jre
COPY target/netty-example-1.0-SNAPSHOT.jar /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]

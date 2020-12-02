FROM ghcr.io/openzipkin/java:15.0.1_p9
COPY target/netty-example-1.0-SNAPSHOT.jar /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]

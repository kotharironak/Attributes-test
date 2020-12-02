FROM aadoptopenjdk/openjdk13
COPY target/netty-example-1.0-SNAPSHOT.jar /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]

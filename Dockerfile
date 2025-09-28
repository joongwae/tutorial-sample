FROM eclipse-temurin:21
EXPOSE 8080
LABEL maintainer="joongwae@gmail.com"
ENV TZ=Africa/Nairobi
COPY target/*.jar app.jar
ENTRYPOINT ["java","-Xmx256m", "-XX:+UseG1GC", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


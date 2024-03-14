
FROM amazoncorretto:21.0.1-alpine
ADD target/*.jar team_up
ENTRYPOINT ["java", "-jar", "team_up"]
EXPOSE 8080

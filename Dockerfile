FROM gradle:8.5-jdk17 AS build
WORKDIR /home/app
COPY --chown=gradle:gradle . .
RUN gradle bootJar
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /home/app/build/libs/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]

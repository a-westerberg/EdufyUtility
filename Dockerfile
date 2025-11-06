# ED-162-SJ

FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn -B -DskipTests clean package

FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar

# TODO change to prod
ENV SPRING_PROFILES_ACTIVE=dev

EXPOSE 8888
ENTRYPOINT ["java","-jar","/app/app.jar"]
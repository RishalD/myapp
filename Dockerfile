FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY --from=build /home/myapp/target/war_name.war myapp.war
ENTRYPOINT ["java","-jar","/myapp.war"]

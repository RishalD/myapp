FROM openjdk:8
ARG JAR_FILE=target/*.jar
RUN echo ${JAR_FILE}
COPY ${JAR_FILE} myapp.jar
ENTRYPOINT ["java","-jar","/myapp.jar"]

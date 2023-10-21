FROM openjdk:8
ARG JAR_FILE=myapp/target/myapp*.jar
RUN echo ${JAR_FILE}
COPY ${JAR_FILE} myapp.jar
ENTRYPOINT ["java","-jar","/myapp.jar"]

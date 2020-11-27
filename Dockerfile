FROM openjdk:8-alpine
COPY . /usr/local/app
WORKDIR /usr/local/app
#RUN javac ./src/main/java/com/example/demo/DemoApplication.java
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "./target/demo-0.0.1-SNAPSHOT.jar"]

#  $ docker build -t my-java-app .
#  $ docker run --rm -p 8080:8080 --name my-running-app my-java-app
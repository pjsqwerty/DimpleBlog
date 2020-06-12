#FROM maven:3-jdk-8-alpine

#运行此项目基于openjdk镜像
FROM openjdk:8-jre-alpine
WORKDIR /blog
COPY . /blog
RUN mvn package

CMD [ "sh", "-c", "mvn spring-boot:run -Dserver.port=8888" ]

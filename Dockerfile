#FROM maven:3-jdk-8-alpine

#运行此项目基于openjdk镜像
FROM java:8
WORKDIR /blog
COPY . /blog
RUN mvn package

CMD [ "sh", "-c", "mvn spring-boot:run -Dserver.port=8888" ]

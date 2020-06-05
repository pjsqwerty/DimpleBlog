FROM maven:3-jdk-8-alpine
WORKDIR /blog
COPY . /blog
RUN mvn package

CMD [ "sh", "-c", "mvn spring-boot:run -Dserver.port=8888 " ]

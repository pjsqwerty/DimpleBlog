#FROM maven:3-jdk-8-alpine

#运行此项目镜像(带字体)
FROM registry.cn-shenzhen.aliyuncs.com/freds_docker/images:latest
WORKDIR /blog
COPY . /blog
RUN mvn package
# && apk add --update font-adobe-100dpi ttf-dejavu fontconfig

CMD [ "sh", "-c", "mvn spring-boot:run -Dserver.port=8888" ]


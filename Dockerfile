#FROM maven:3-jdk-8-alpine

#运行此项目基于openjdk镜像
#FROM myimage/alpine_glibc_jdk:8
#WORKDIR /blog
##COPY . /blog
#RUN mvn package

#CMD [ "sh", "-c", "mvn spring-boot:run -Dserver.port=8888" ]
# First stage - Compiling application
FROM maven:3-jdk-8-alpine
WORKDIR /blog
COPY . /blog
RUN mvn package && apk add --update font-adobe-100dpi ttf-dejavu fontconfig
CMD [ "sh", "-c", "mvn spring-boot:run -Dserver.port=8888" ]


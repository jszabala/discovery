FROM openjdk:11

EXPOSE 8762

RUN mkdir /app

COPY build/libs/*.jar /app/spring-boot-application.jar

CMD ["java","-XshowSettings:vm","-XX:+UnlockExperimentalVMOptions","-jar", "/app/spring-boot-application.jar"]
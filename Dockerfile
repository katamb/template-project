FROM openjdk:11

EXPOSE 7551

COPY build/libs/template-0.0.1.jar template-0.0.1.jar

ENTRYPOINT ["java","-jar","template-0.0.1.jar"]

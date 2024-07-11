#Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

#Information around who maintains the image
MAINTAINER toharifqi

#Add the application's jar to the image
COPY build/libs/eurekaserver-0.0.1-SNAPSHOT.jar eurekaserver-0.0.1-SNAPSHOT.jar

#Execute the application
ENTRYPOINT ["java", "-jar", "cards-0.0.1-SNAPSHOT.jar"]

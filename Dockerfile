# Start with a base image containing Java runtime
FROM openjdk:11

# Add Maintainer Info
LABEL maintainer="shohaibxshaikh@gmail.com"

RUN mkdir -p /opt/project
ADD target/api-gateway.jar /opt/vocare
WORKDIR /opt/project

# Make port 8081 available to the world outside this container
EXPOSE 9091

ENTRYPOINT java -jar api-gateway.jar
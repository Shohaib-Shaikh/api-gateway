# Start with a base image containing Java runtime
FROM openjdk:11

# Add Maintainer Info
LABEL maintainer="shohaibxshaikh@gmail.com"

RUN mkdir -p /opt/project
ADD target/api-gateway.jar /opt/project
WORKDIR /opt/project

# Make port 9091 available to the world outside this container
EXPOSE 9091

ENTRYPOINT java -jar api-gateway.jar
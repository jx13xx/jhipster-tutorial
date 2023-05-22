FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
# Set enviroment variables
ENV NODE_VERSION=14
ENV JAVA_VERSION=11

RUN apt-get update

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y openjdk-11-jdk

# Install JHipster
RUN npm install -g generator-jhipster

RUN node -v
RUN java -version



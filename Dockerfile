FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
# Set enviroment variables
ENV NODE_VERSION=14
ENV JAVA_VERSION=11
# Setting the work directiory
WORKDIR /usr/local/src/jhipster-projects
ENV PROJECT_PATH = /usr/local/src/jhipster-projects

RUN apt-get update

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y openjdk-11-jdk

# Install JHipste
RUN npm install -g generator-jhipster

# Executing the script changes
RUN mkdir -p /usr/local/src/jhipster-projects

COPY simple-transaction/builder-jhipster.sh /usr/local/src/jhipster-projects
RUN chmod +x /usr/local/src/jhipster-projects/builder-jhipster.sh
COPY simple-transaction/simeple-transasction-vdl.jh /usr/local/src/jhipster-projects
COPY simple-transaction/banner.txt /usr/local/src/jhipster-projects
COPY simple-transaction/jhipster-postgresql.json /usr/local/src/jhipster-projects/
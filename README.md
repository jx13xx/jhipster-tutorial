# JHipster Tutorial Setup

This repository contains a JHipster project with Docker image. JHipster is a development platform for generating, developing, and deploying Spring Boot + Angular/React/Vue web applications and Spring microservices.

## Jhipster Tutorial 

![Logo](https://github.com/jx13xx/jhipster-tutorial/blob/main/docs/nosql-erd.png)

In this tutorial, we will create a Spring Boot project for a simple transaction entity. We'll accomplish this by utilizing the JHipster plugin and creating a custom JDL (JHipster Domain Language) file. The image displayed above serves as an illustrative example of the project we'll be building.

## Prerequisites

JHipster currently requires the following prerequisite to run succesful project: 
- Java Development Kit (JDK) 11 or later
- Node.js with npm
- Git

Before getting started with this tutorial, ensure that you have the following prerequisites installed on your local machine:
- **Docker**

## Getting Started

Follow these steps to set up the JHipster project locally:

1. Clone the repository:

   ```shell
   git clone https://github.com/jx13xx/jhipster-tutorial.git
   
2. Change into the project directory:
 ```shell
 cd jhipster-tutorial
```

3. Build the Dockerfile:
 ```shell
 docker build -t jhipster-image .
```
4. Run the docker file:
 ```shell
 docker run -it jhipster-image
```
5. Once you're inside the docker container execute the script by **default** will use the simeple-transasction-vdl.jh
 ```shell
./builder-jhipster.sh 
```
  
You can also set up your own JDL file using the JDL studio which is available at https://start.jhipster.tech/jdl-studio/
Create your custom entity diagram and download the jdl to file to execute it in the script




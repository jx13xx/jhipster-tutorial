#!/bin/bash

# Default JDL file name
JDL_FILE="${1:-simeple-transasction-vdl.jh}"

# Run jhipster import-jdl command with specified options
jhipster import-jdl "$JDL_FILE" --skip-client --skip-git
# jhipster import-jdl "$JDL_FILE" \
#     --skip-prompts \
#     --skip-client \
#     --skip-git \
#     --skip-fake-data \
#     --prettier-java


rm -rf node_modules/
mv -f banner.txt /usr/local/src/jhipster-projects/src/main/resources/banner.txt

echo "Execute all the tests" 
./mvnw test

echo "Running the Spring Boot Project"
./mvnw



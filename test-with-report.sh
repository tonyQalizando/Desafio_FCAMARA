#!/bin/sh

docker rm -f cucumber-test
docker rmi -f cucumber/cucumber
docker build -t cucumber/cucumber -f Dockerfile.withReport .
docker run --name cucumber-test cucumber/cucumber $@
docker rm -f cucumber-test
docker rmi -f cucumber/cucumber
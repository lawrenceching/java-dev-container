#!/bin/bash

docker buildx build --build-arg INIT_JDK_VERSION=17.0.2 -t lawrenceching/java-dev-container:tmp .
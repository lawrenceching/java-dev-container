#!/bin/bash

JAVA_SDK_HOME=/sdks/java
mkdir -p $JAVA_SDK_HOME

URL='https://download.java.net/java/GA/jdk22/830ec9fcccef480bb3e73fb7ecafe059/36/GPL/openjdk-22_linux-x64_bin.tar.gz'

wget "$URL" -P /tmp

tar -zxf /tmp/openjdk-22_linux-x64_bin.tar.gz -C /tmp

mv /tmp/jdk-22 $JAVA_SDK_HOME/22
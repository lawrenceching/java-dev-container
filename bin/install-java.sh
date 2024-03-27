#!/bin/bash

JDK_VERSION=$1

if [[ "$JDK_VERSION" == "" ]]; then
  JDK_VERSION=22
fi

URL='https://download.java.net/java/GA/jdk22/830ec9fcccef480bb3e73fb7ecafe059/36/GPL/openjdk-22_linux-x64_bin.tar.gz'

if [[ "$JDK_VERSION" == "17.0.2" ]]; then
  URL='https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz'
fi

TAR_FILE_NAME=$(echo "$URL" | awk -F'/' '{print $NF}')

JAVA_SDK_HOME=/sdks/java
mkdir -p $JAVA_SDK_HOME

wget "$URL" -P /tmp

tar -zxf /tmp/$TAR_FILE_NAME -C /tmp

mv /tmp/jdk-$JDK_VERSION $JAVA_SDK_HOME/$JDK_VERSION

echo "
export JAVA_HOME=/sdks/java/$JDK_VERSION
export PATH=\$JAVA_HOME/bin:\$PATH
" >> ~/.bashrc
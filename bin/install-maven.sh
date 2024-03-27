#!/bin/bash

MAVEN_VERSION=$1

if [[ "$MAVEN_VERSION" == "" ]]; then
  MAVEN_VERSION=3.6.3
fi

URL='https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz'

if [[ "$MAVEN_VERSION" == "3.6.3" ]]; then
  URL='https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz'
fi

TAR_FILE_NAME=$(echo "$URL" | awk -F'/' '{print $NF}')

MAVEN_HOME=/sdks/maven
mkdir -p $MAVEN_HOME

wget "$URL" -P /tmp

tar -zxf /tmp/$TAR_FILE_NAME -C /tmp

mv /tmp/apache-maven-$MAVEN_VERSION $MAVEN_HOME/$MAVEN_VERSION

echo "
export MAVEN_HOME=$MAVEN_HOME/$MAVEN_VERSION
export PATH=\$MAVEN_HOME/bin:\$PATH
" >> ~/.bashrc
#!/bin/bash

cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp $1 /etc/apt/sources.list
echo "use source $1"
#!/bin/sh

echo "######################################"
echo "## Build TIGERs"
echo "######################################"

cd tigers
mvn install -DskipTests -Dmaven.javadoc.skip=true

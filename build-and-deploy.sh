#!/bin/sh
# Build and install snapshot plugin in Sonar

# Build first and check status
mvn clean license:format install
if [ "$?" != 0 ]; then
	echo "ERROR - Java build failed!" 1>&2
	exit $?
fi



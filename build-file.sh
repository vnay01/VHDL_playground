#!/bin/bash
# This is a script for installing the dependencies before installing gem5
# You will need to make this file executable before running it.
# Use chmod u+x <file_name.sh> to change this file to executable
# Also, you must be a superuser in order to be able to run this script.
if[$(id -u)!="0"]; then
echo "Did you even read the README!?" >&2
exit 1
fi

# Actual work starts from here
apt-get update
apt-get -y upgrade
apt-get -y install g++
apt-get -y install python
apt-get -y install scons
apt-get -y install swig
apt-get -y install zlib
apt-get -y install m4
apt-get -y install protoc libprotobuf-dev libgoogle-perftools-dev

echo "Guess, I am Done here!"
 
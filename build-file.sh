 #!/bin/bash
# This is a script for installing the dependencies before installing gem5
# You will need to make this file executable before running it.
# Use chmod u+x <file_name.sh> to change this file to executable
# Also, you must be a superuser in order to be able to run this script.
if ! [ $(id -u) = 0 ]; then
echo "Did you even read the README!?" >&2
exit 1
fi

# Actual work starts from here
apt-get update
apt-get -y upgrade
apt-get -y install g++
apt-get -y install python3 python3-dev python3-six python libboost-all-dev pkg-config
apt-get -y install scons
apt-get -y install swig
apt-get -y install zlib1g
apt-get -y install m4
apt-get -y install protobuf-compiler libprotobuf-dev libgoogle-perftools-dev pkg-config
apt-get update

echo "Guess, I am Done here!"

echo "Wait! Am I really done!?" >&2
echo "Missed something!" >&2
rm -r gem5
 git init
 git config --global user.name "Vinay Singh" 
 git config --global user.email "vnay01@gmail.com"
 git clone https://gem5.googlesource.com/public/gem5
cd ~/Desktop/gem5/gem5/

# building X86 
echo "Now I build.... X86"

# Ensure that the scon files #! usr/bin/bash/python is set to #! usr/bin/bash/python3
## if the above is not configured then compilation error will be thrown
scons build/X86/gem5.fast -j2


 

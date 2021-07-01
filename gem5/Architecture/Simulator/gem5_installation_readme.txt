# gem5 is a simulator which allows for the simulation of processor cores within the framework of an operating system ( Linux environment )
# It supports various ISAs like ARM , x86, SPARC, ALPHA 
# The official website for gem5 is hosted at https://www.gem5.org/ 
# Gem5 is currently supported on Linux OS and alternatively on Windows OS by using Virtualization.
# This document presents the steps to download and build the simulator on Ubuntu.

# Before starting the build process, there are some dependencies which must be met.
# Also, a very good resource for the complete build of gem5 is outlined here: https://www.programmersought.com/article/61151842277/


# The dependencies are outlined below: { refer https://www.gem5.org/documentation/general_docs/building for detailed explanations }
	1. Pyhton3 and associated 'dev' packages; [ python3-dev python3-six python libboost-all-dev ]
	2. g++ : version 4.8 or newer.
	3. SCons : version 0.98 or newer [SCons is a powerful replacement for 'make']
	4. zlib : called 'zlib1g' in ubuntu
	5. m4 : the macro processor
	6. protobuf compiler  & dependencies : protobuf-compiler 
	7. pydot: Python interface to graphviz ( needed for generation of graphical representaion of the simulated system )

 [Note : I will try to write a bash script so that the dependencies are installed automatically]

# Gem5 git repository -
	# To download the latest and stable release of gem5, it is recommended to clone the repository from the official site.
	# This can be done by using the steps below:
	1. Install 'git'
	2. Clone the development repository of gem5 using the command as below:
		git clone https://gem5.googlesource.com/public/gem5
	3. (Optional) After cloning the repository, you may update the repository by typing 
		git pull

# Once the gem5 source has been downloaded , it is time to build the ISA of interest.
	# This is achieved by utilising 'scons' build command; the syntax of which is as below:
	# " scons build/<ISA>/<gem5.opt> -j2 "  { refer http://www.m5sim.org/Download and other documentation for details } 

# Please note that scons build operation is supported in Python3. We need to make changes in the 'scon.py' file
	# Use ' whereis scons ' to find the directory of scons file.
	# Locate the scons file and edit the shebang line ( line # 1 of the file ) from
	# '#! usr/bin/bash/python' to '#! usr/bin/bash/python3'

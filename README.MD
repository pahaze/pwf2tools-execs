# pwf2tools
This is a modded version of RMGRich's/posesix's ptr2tools. It can be built for any target platform providing they have a C++ and C compiler. (Tested with GCC and LLVM-MinGW)

# Dependencies
CMake 2.6 or higher  
a C and C++ compiler for your target  
libpng for your target

# How to build?
Clone the git and do as you would with a normal CMake project. If you're new to this (and on Linux) you can run the make.sh script by ``sh make.sh``, or you can run ``mkdir build && cd build && cmake ..`` providing you have CMake and libpng installed. If you're on Windows and new, I'd just recommend sticking to the CMake GUI.

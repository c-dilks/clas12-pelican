#!/bin/bash

SRC=Proto
LIB=ProtoNative

# build Java class and generate C++ header
javac -h . $SRC.java

# find JAVA_HOME, if not set
if [ -z "$JAVA_HOME" ]; then
  export JAVA_HOME=$(realpath $(dirname $(readlink $(which java)))/..)
fi

# build C++ (for linux only)
gcc -c -fPIC \
  -I$JAVA_HOME/include \
  -I$JAVA_HOME/include/linux \
  $SRC.cpp \
  -o $SRC.o

# link
gcc -shared -fPIC \
  -o lib$LIB.so \
  $SRC.o \
  -lc

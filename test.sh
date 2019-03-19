#!/bin/bash

# Tensorflow Java
# @author Loreto Parisi (loretoparisi at gmail dot com)
# v1.0.0
# @2017-2019 Loreto Parisi (loretoparisi at gmail dot com)
#


 TF_VERSION=1.13.1

javac -cp lib/libtensorflow-${TF_VERSION}.jar TensorFlowExample.java
java -cp lib/libtensorflow-${TF_VERSION}.jar:. -Djava.library.path=./jni TensorFlowExample 


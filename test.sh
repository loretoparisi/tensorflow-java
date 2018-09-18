#!/bin/bash
LIB=libtensorflow-1.10.0.jar
javac -cp lib/$LIB TensorFlowExample.java
java -cp lib/$LIB:. -Djava.library.path=./jni TensorFlowExample 


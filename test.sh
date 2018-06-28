#!/bin/bash

javac -cp lib/libtensorflow-1.8.0.jar TensorFlowExample.java
java -cp lib/libtensorflow-1.8.0.jar:. -Djava.library.path=./jni TensorFlowExample 


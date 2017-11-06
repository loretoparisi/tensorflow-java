#!/bin/bash

javac -cp /root/libtensorflow-1.4.0.jar TensorFlowExample.java
java -cp /root/libtensorflow-1.4.0.jar:. -Djava.library.path=./jni/ TensorFlowExample

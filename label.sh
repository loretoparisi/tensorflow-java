#!/bin/bash
LIB=libtensorflow-1.10.0.jar
javac -cp lib/$LIB LabelImage.java
java -cp lib/$LIB:. -Djava.library.path=./jni LabelImage models/ images/example-400x288.jpg


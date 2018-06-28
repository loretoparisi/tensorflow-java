#!/bin/bash

javac -cp lib/libtensorflow-1.8.0.jar LabelImage.java
java -cp lib/libtensorflow-1.8.0.jar:. -Djava.library.path=./jni LabelImage models/ images/example-400x288.jpg


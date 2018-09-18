#!/bin/bash

 TF_TYPE="cpu" # Default processor is CPU. If you want GPU, set to "gpu"
 OS=$(uname -s | tr '[:upper:]' '[:lower:]')
 LIB=libtensorflow-1.10.0.jar
 mkdir -p ./jni
 curl -L \
   "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow_jni-${TF_TYPE}-${OS}-x86_64-1.10.0.tar.gz" |
   tar -xz -C ./jni

  curl -L \
   -o lib/$LIB "https://storage.googleapis.com/tensorflow/libtensorflow/$LIB"

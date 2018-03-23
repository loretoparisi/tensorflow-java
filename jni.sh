#!/bin/bash

 TF_TYPE="cpu" # Default processor is CPU. If you want GPU, set to "gpu"
 OS=$(uname -s | tr '[:upper:]' '[:lower:]')
 mkdir -p ./jni
 curl -L \
   "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow_jni-${TF_TYPE}-${OS}-x86_64-1.6.0.tar.gz" |
   tar -xz -C ./jni

  curl -L \
    -o lib/libtensorflow-1.4.0.jar "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-1.6.0.jar"

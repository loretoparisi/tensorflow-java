#!/bin/bash

# Tensorflow Java
# @author Loreto Parisi (loretoparisi at gmail dot com)
# v1.0.0
# @2017-2019 Loreto Parisi (loretoparisi at gmail dot com)
#

TF_TYPE="cpu" # Default processor is CPU. If you want GPU, set to "gpu"
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

# get latest from https://mvnrepository.com/artifact/org.tensorflow/libtensorflow_jni
TF_VERSION=1.13.1

mkdir -p ./jni
curl -L \
  "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow_jni-${TF_TYPE}-${OS}-x86_64-${TF_VERSION}.tar.gz" |
  tar -xz -C ./jni
  
curl -L \
  -o lib/libtensorflow-${TF_VERSION}.jar "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF_VERSION}.jar"

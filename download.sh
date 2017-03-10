TF_TYPE="cpu" # Set to "gpu" to enable GPU support
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

echo "Downloading native library for $OS..."

mkdir -p ./jni
curl -L \
  "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow_jni-${TF_TYPE}-${OS}-x86_64-1.0.0-PREVIEW1.tar.gz" |
tar -xz -C ./jni

echo "Downloading inception5 model..."
curl https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip -o models/inception5h.zip
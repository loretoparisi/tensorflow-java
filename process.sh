#!/bin/bash
DIR=$1
IMG=$2

RED='\033[0;31m'
NC='\033[0m' # No Color

for filename in $DIR/*.jpg; do
	OUT=`java -cp lib/libtensorflow-1.6.0.jar:. -Djava.library.path=./jni LabelImage models/ $filename 2>/dev/null`
	
	fname=$(basename "$filename")
	extension="${fname##*.}"
	fname="${fname%.*}"
	
	if [ ! -d "$IMG/$OUT" ]; then
  		# Control will enter here if $DIRECTORY doesn't exist.
		#mkdir $IMG/$OUT
		echo $IMG/$OUT
	fi
	echo $filename $IMG/OUT/
	#cp $filename $IMG/$OUT/

	echo -e "${NC}FRAME:$fname - ${RED}$OUT${NC}"
done

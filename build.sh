#!/bin/bash

BUILD_TYPE="Ninja"
BUILD_SUFFIX="ninja"

LC_ALL=en_US.UTF-8

BUILD_FOLDER="build_$BUILD_SUFFIX"
SOURCE_FOLDER="projects"

mkdir -p "$BUILD_FOLDER"

cd "$BUILD_FOLDER"

cmake -G "$BUILD_TYPE" ../"$SOURCE_FOLDER"
cmake --build .

for i in 0 1; do
  FOLDER="${i}"
  cp ./"$FOLDER"
done

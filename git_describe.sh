#!/bin/bash
export TEST=$(echo "no space" | sed 's/ /_/g')
echo $TEST
export BUILD_ID=$(git describe --long --dirty  | sed 's/ /_/g')
echo $BUILD_ID


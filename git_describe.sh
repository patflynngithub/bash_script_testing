#!/bin/bash
echo "1"
BUILD_ID=$(git describe --long --dirty)
echo "2"
echo $BUILD_ID


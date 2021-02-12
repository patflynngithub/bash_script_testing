#!/bin/bash
export BUILD_ID=$(git describe --long --dirty)
echo $BUILD_ID


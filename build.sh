#!/bin/bash

if [ "$1" = "release" ] || [ "$2" = "release" ] || [ "$3" = "release" ] || [ "$4" = "release" ] ; then
    RELEASE_MODE="release"
else
    RELEASE_MODE="debug"
fi

if type ninja
then
	cmake -DCMAKE_BUILD_TYPE="${RELEASE_MODE}" -G Ninja -B "build/${RELEASE_MODE}/ninja" && ninja -C "build/${RELEASE_MODE}/ninja"
else
	cmake -DCMAKE_BUILD_TYPE="${RELEASE_MODE}" -G "Unix Makefiles" -B "build/${RELEASE_MODE}/make" && make -C "build/${RELEASE_MODE}/make"
fi


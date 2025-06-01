#!/bin/sh

cd ext
./libyuv.cmd
./aom.cmd
./libsharpyuv.cmd
./libjpeg.cmd
./zlibpng.cmd
cd ..
cmake -S . -B build -DBUILD_SHARED_LIBS=OFF -DAVIF_CODEC_AOM=LOCAL -DAVIF_LIBYUV=LOCAL -DAVIF_LIBSHARPYUV=LOCAL -DAVIF_JPEG=LOCAL -DAVIF_ZLIBPNG=LOCAL -DAVIF_BUILD_APPS=ON
# cmake --build build --target clean
cmake --build build --parallel
cmake --install build
ldconfig

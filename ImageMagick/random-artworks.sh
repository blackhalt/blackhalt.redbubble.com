#!/bin/bash

# 10 random artworks with ImageMagick:

for ((number=1;number <= 10;number++)){

name="$(date +%s)"

convert -size 8192x8192 plasma:fractal ${name}.jpg

sleep 1

}

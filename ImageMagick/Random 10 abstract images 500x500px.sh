#!/bin/bash

# Random 10 abstract images 500x500px

for ((number=1;number <= 10;number++)){

color="DarkGray"
name="$(date +%s)"

convert -size 64x64 xc:${color} -resize 2x2 -evaluate Gaussian-noise 0.152 -resize 4x4 -evaluate Gaussian-noise 0.123 -resize 8x8 -evaluate Gaussian-noise 0.100 -resize 16x16 -evaluate Gaussian-noise 0.081 -resize 32x32 -evaluate Gaussian-noise 0.065 -resize 64x64 -evaluate Gaussian-noise 0.053 -resize 128x128 -evaluate Gaussian-noise 0.043 -resize 256x256 -evaluate Gaussian-noise 0.035 -resize 512x512 -evaluate Gaussian-noise 0.025 -paint 12 -crop 500x500+0+0 -colorspace HSL -channel lightness -normalize -channel saturation -normalize -colorspace RGB -despeckle -rotate 90 ${name}.jpg

sleep 1

}


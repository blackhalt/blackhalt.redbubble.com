#!/bin/bash

#Extracting Image Colors

convert t.png -colors 256 -format %c histogram:info:- | sed 's/:.*#/ #/' |
      while read count color colorname; do
        convert -size 1x$count xc:$color miff:-
      done |
        convert - -alpha set -gravity south -background none +append \
                unique_color_histogram.png


convert t.png +dither -colors 5 -unique-colors -scale 10000% colors.png


#Resize to smaller (distort ~better):

convert t.png -filter Lanczos -distort Resize 50x50 best.png
convert -thumbnail 50 t.png 50.png


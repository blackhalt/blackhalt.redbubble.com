#Resize to smaller (distort ~better):

convert t.png -filter Lanczos -distort Resize 50x50 best.png
convert -thumbnail 50 t.png 50.png

# resize to 1000px:
convert 1.png -filter Lanczos -distort Resize 1000x1000 2.png

# Crop png images from center, in directory :
mogrify -gravity center -crop 4096x4096+0+0 +repage *.png

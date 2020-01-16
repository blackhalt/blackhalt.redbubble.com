## [blackhalt.redbubble.com](https://blackhalt.redbubble.com/ "blackhalt.redbubble.com")

**Script collection for my awesome artworks.** :)


- Linux bash;
- ImageMagick;
- Neural Networks, Deep Dream;
- GIMP, GMIC;
- Inkscape;
- and so on...



Examples:


```bash

#Get 5 most used colors (unique) from image and save to new image:

convert test.png +dither -colors 5 -unique-colors -scale 10000% colors.png
```

```bash
#Simple gmic command from command line:

gmic test.png -fx_blur_radial "1,50,50,0,0,0,0" -o blur.png
```

```bash
#System last shutdown or reboot:

last -x | grep shutdown | head -2
```

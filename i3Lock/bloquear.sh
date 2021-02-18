#!/bin/bash
IMAGE=~/.config/i3/i3lock_temp/debian_lock.png
IMAGE1=~/.config/i3/i3lock_temp/i3lock1.png
IMAGE2=~/.config/i3/i3lock_temp/i3lock2.png
#IMAGE3=~/.config/i3/i3lock_temp/i3lock3.png

scrot $IMAGE1

convert -brightness-contrast -20x-40 $IMAGE1 $IMAGE1

#convert -filter Gaussian -resize 25% -resize 400% $IMAGE1 $IMAGE1
convert  -resize 25% -resize 400% $IMAGE1 $IMAGE1

convert $IMAGE1 -crop 1600x900 $IMAGE2
composite -gravity center $IMAGE $IMAGE2 $IMAGE2

#convert $IMAGE1 -crop 1920x1080 $IMAGE2
#composite -gravity center $IMAGE $IMAGE3 $IMAGE3

convert $IMAGE2  +append $IMAGE1

i3lock -i $IMAGE1

rm $IMAGE1 $IMAGE2

#!/bin/bash

FILES=../src/*.svg

#
# colin@travelduck.co
#
# To build the icon with a dimension of X, add the line: 
#   inkscape -f $f -e ../png/X/${name/.svg/.png} -d (X * 3.75)
#
# For example 8px -> 8 * 3.75 = 30
#   add: inkscape -f $f -e ../png/8/${name/.svg/.png} -d 30
#
# Don't forget to add the folder to make-all.sh
#

for f in $FILES
do
    name=$(basename "$f")
    inkscape -f $f -e ../png/16/${name/.svg/.png} -d 60
    inkscape -f $f -e ../png/24/${name/.svg/.png} -d 90
    inkscape -f $f -e ../png/32/${name/.svg/.png} -d 120
    inkscape -f $f -e ../png/48/${name/.svg/.png} -d 180
    inkscape -f $f -e ../png/64/${name/.svg/.png} -d 240
    inkscape -f $f -e ../png/72/${name/.svg/.png} -d 270
    inkscape -f $f -e ../png/96/${name/.svg/.png} -d 360
    inkscape -f $f -e ../png/128/${name/.svg/.png} -d 480
    inkscape -f $f -e ../png/256/${name/.svg/.png} -d 960
    inkscape -f $f -e ../png/512/${name/.svg/.png} -d 1920
done

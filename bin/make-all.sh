#!/bin/bash

git rm -r ../svg/
git rm -r ../png/

mkdir ../svg ../png ../png/16 ../png/24 ../png/32 ../png/48 ../png/64 ../png/72 ../png/96 ../png/128 ../png/256 ../png/512

./source-to-svg.sh
./svg-to-png.sh
./concat.json.php
./preview-montage.sh

git add --all

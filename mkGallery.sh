#! /bin/bash

GALLERY="2019/lanternata"

LOCAL=./sito/assets/images/${GALLERY}

cd $LOCAL

echo "gallery:"
for f in *.jpg
do
	echo "  - url: \"/assets/images/${GALLERY}/${f}\""
	echo "    image_path: \"/assets/images/${GALLERY}/${f}\""
done




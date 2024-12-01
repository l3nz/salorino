#! /bin/bash

DATA=2024-12-01
TITOLO=gallery-veglia-avvento
GALLERY="2024/veglia-avvento"
BASE=$(pwd)

POST=${BASE}/sito/_posts/${DATA}-${TITOLO}.md
LOCAL=./sito/assets/images/${GALLERY}

#
# Prefisso
# 



echo "\
---
layout: single
title:  \"${TITOLO}\"
date:   ${DATA} 18:40:47 +0200
categories: Foto
tags: Comunità GruppoFamiglie
gallery: 
" >${POST}


cd $LOCAL





for f in *.jpg
do
	echo "  - url: \"/assets/images/${GALLERY}/${f}\""  >>${POST}
	echo "    image_path: \"/assets/images/${GALLERY}/${f}\""  >>${POST}
done




echo "\
---

Alcune immagini ${TITOLO}, che si è tenuta il ${DATA}.




{% include gallery caption=\"Grazie a tutti per la partecipazione!\" %}

" >>${POST}


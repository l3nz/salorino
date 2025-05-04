#! /bin/bash

DATACORTA=$(date +%Y-%m-%d)
DATA=$(date "+%Y-%m-%d %H:%M:%S +0200")
TITOLO=info-consiglio-parrocchiale

FILE=./sito/_posts/${DATACORTA}-${TITOLO}.md


echo "Creo file: ${FILE}"

cat << EOF > ${FILE}
---
layout: single
title:  "Info numero 1 del Consiglio Parrocchiale"
date:   ${DATA}
categories: InfoConsiglioParrocchiale
tags: ConsiglioParrocchiale
author: cf
---

_Riunione del 30 aprile 2025_


Bla bla bla




EOF

subl $FILE


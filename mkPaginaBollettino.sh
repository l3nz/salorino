#! /bin/bash

BOLLETTINO=2307
DATACORTA=$(date +%Y-%m-%d)
DATA=$(date "+%Y-%m-%d %H:%M:%S +0200")
TITOLO=$1

FILE=./sito/_posts/${DATACORTA}-${TITOLO}.md


echo "Creo file: ${FILE}"

cat << EOF > ${FILE}
---
layout: single
title:  "${TITOLO}"
date:   ${DATA}
categories: bollettino ${BOLLETTINO}
tags: TODO
---

Bla bla bla

{% raw %}<img class="full"
     src="/assets/images/bollettino${BOLLETTINO}/_.jpg"
     alt="">
{% endraw %}



EOF

subl $FILE


#! /bin/bash

BOLLETTINO=2003
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

EOF



#! /bin/bash

BOLLETTINO=2503
DATACORTA=$(date +%Y-%m-%d)
DATA=$(date "+%Y-%m-%d %H:%M:%S +0200")
TITOLO=bollettino-${BOLLETTINO}

FILE=./sito/_posts/${DATACORTA}-${TITOLO}.md


echo "Creo file: ${FILE}"

cat << EOF > ${FILE}
---
layout: single
title:  "Insieme: il bollettino parrocchiale ..-.. 2025"
date:   ${DATA}
categories: bollettino ${BOLLETTINO}
tags: Insieme
---


Benvenuti!

<div class="notice--info">
<h4>Contenuti:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "${BOLLETTINO}" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>




EOF

subl $FILE


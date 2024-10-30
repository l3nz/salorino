---
layout: single
title:  "Insieme: il bollettino parrocchiale Luglio-Ottobre 2024"
date:   2024-07-07 10:06:38 +0200
categories: bollettino 2407
tags: Insieme
---


Benvenuti!

<div class="notice--info">
<h4>Contenuti:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2407" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>


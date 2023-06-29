---
layout: single
title:  "Bollettino Parrocchiale - Luglio 2023"
date:   2023-06-29 17:20:54 +0200
categories: bollettino 2307
---

Benvenuti!

<div class="notice--info">
<h4>Contenuti:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2307" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>


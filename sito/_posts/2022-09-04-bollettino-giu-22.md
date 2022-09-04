---
layout: single
title:  "Il Bollettino - Giugno 2022"
date:   2022-09-04 11:49:00 +0200
categories: bollettino 2206
---


Bollettino parrocchiale di Salorino per il periodo Giugno-Ottobre 2022.

<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2206" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>





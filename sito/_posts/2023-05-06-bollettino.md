---
layout: single
title:  "Bollettino parrocchiale Marzo 2023"
date:   2023-05-06 12:59:34 +0200
categories: bollettino 2302
---


Bollettino parrocchiale per il periodo Marzo-Giugno 2023.

<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2302" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>


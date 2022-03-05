---
layout: single
title:  "Il Bollettino - Marzo 2022"
date:   2022-03-05 19:07:00 +0200
categories: bollettino 2203
---


Bollettino parrocchiale di Salorino per il periodo Marzo - Giugno 2022.

<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2203" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>





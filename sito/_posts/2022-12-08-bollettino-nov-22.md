---
layout: single
title:  "Il Bollettino - Novembre 2022"
date:   2022-12-08 16:42:00 +0200
categories: bollettino 2211
tags: Insieme
---


Bollettino parrocchiale di Salorino per il periodo Novembre 2022-Febbraio 2023.

<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2211" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>





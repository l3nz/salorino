---
layout: single
title:  "Bollettino di Novembre 2021"
date:   2021-10-31 18:15:42 +0200
categories: bollettino 2111
---


Bollettino parrocchiale per il periodo Novembre 2021 - Febbraio 2022.

<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2111" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>




---
layout: single
title:  "Il bollettino: Marzo-Giugno 2024"
date:   2024-03-03 12:57:31 +0200
categories: bollettino 2403
tags: Insieme
---


Benvenuti!

<div class="notice--info">
<h4>Contenuti:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2403" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>
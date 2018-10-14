---
title: Cenni storici
---

TBD







<div class="notice--info">
<h4>Altri articoli sulla storia di Salorino:</h4>
<ul>
{% for post in site.posts %}
  {% if post.tags contains "Storia" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.date | date: "%d.%m.%Y"  }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>
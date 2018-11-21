---
title: La corale
---

TBD





<div class="notice--info">
<h4>Articoli sulla Corale:</h4>
<ul>
{% for post in site.posts %}
  {% if post.tags contains "Corale" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.date | date: "%d.%m.%Y"  }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>
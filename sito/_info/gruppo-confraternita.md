---
title: La confraternita del SS Sacramento
---

TBD








<div class="notice--info">
<h4>Articoli sulla Confraternita:</h4>
<ul>
{% for post in site.posts %}
  {% if post.tags contains "Confraternita" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.date | date: "%d.%m.%Y"  }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>
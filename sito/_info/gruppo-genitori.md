---
title: Il gruppo genitori
---

TBD




<div class="notice--info">
<h4>Articoli sul Gruppo Genitori:</h4>
<ul>
{% for post in site.posts %}
  {% if post.tags contains "GruppoFamiglie" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.date | date: "%d.%m.%Y"  }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>

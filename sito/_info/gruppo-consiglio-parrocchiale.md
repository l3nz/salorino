---
title: Il Consiglio Parrocchiale di Salorino
---

I membri in carica per il mandato 2021-2025 sono:

- Livio Clerici (presidente)
- Don Maksym Podhajski
- Ettore Brenni
- Marilena Fontana Mantegazzi
- Adriano Ponti




<div class="notice--info">
<h4>Articoli sul Consiglio Parrocchiale:</h4>
<ul>
{% for post in site.posts %}
  {% if post.tags contains "ConsiglioParrocchiale" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.date | date: "%d.%m.%Y"  }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>

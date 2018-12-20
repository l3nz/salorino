---
title: La corale di San Zenone
---


{% raw %}<img src="/assets/images/base/corale.jpg" alt="La corale di S Zenone" class="full">{% endraw %}




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
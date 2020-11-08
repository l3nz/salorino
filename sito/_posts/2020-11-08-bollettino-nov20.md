---
layout: single
title:  "Bollettino - Novembre 2020"
date:   2020-11-08 10:51:41 +0200
categories: bollettino 2011
author: mp
tags: Lettere
---

Carissimi,

Si avvicina il mese di novembre, in cui in modo particolare ricordiamo i nostri defunti. Crediamo che il Dio buono e misericordioso li accolga nel Suo Regno e a noi che viviamo sulla terra doni la grazia di poter raggiungere il paradiso e godere la beatitudine celeste insieme ai nostri cari nella comunità di tutti i Santi lodando il Signore. 


Con l'inizio del nuovo anno scolastico, come comunità parrocchiale, abbiamo anche noi ripreso le nostre attività pastorali affinché, nonostante la pandemia, possiamo crescere nella fede e carità fraterna e chiedere a Dio le grazie e i doni dei quali abbiamo bisogno. Quest'anno celebriamo 40 anni dalla morte di don Carlo Rossini, a cui è dedicato uno degli articoli. Inoltre, in settembre, a causa delle restrizioni sanitarie, nella nostra chiesa di San Zenone abbiamo potuto accogliere la statua della Madonna del Sasso, come è avvenuto in precedenza nella storia della parrocchia, di cui parleremo anche in questo numero del nostro bollettino. Non mancheranno i commenti liturgici sulle feste e solennità che cadono nei prossimi mesi.

Che il buon Dio, di cui la venuta nel mondo a Betlemme verrà celebrata tra meno di 2 mesi, ci accompagni nello sforzo della formazione cristiana, affinché possiamo essere il sale della terra e la luce del mondo ovunque il Signore ci mandi sui sentieri della vita quotidiana.

A tutti auguro un fecondo anno pastorale e buon Natale!

*don Maksym*



<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "2011" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>



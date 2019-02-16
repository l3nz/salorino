---
layout: single
title:  "Bollettino n. 8 - Marzo 2019"
date:   2019-02-11 06:56:47 +0200
categories: bollettino 1903
author: mp
tags: Lettere
---

Cari parrocchiani,

si avvicina il tempo della Quaresima, tempo di riflessione e preghiera intensa, ma anche tempo in cui non possiamo dimenticare il nostro prossimo, nel quale troviamo il volto di Gesù. 

È un momento che ci permette di preparare il nostro spirito alla più importante festa cristiana di tutto l'anno: il Triduo Pasquale, a cominciare con l'istituzione dei sacramenti dell' Eucarestia e del Sacerdozio durante l'ultima cena di Gesù con i suoi discepoli, per continuare con la celebrazione della sua passione, morte, discesa agli inferi fino alla Resurrezione gloriosa del Figlio di Dio e sua ascensione al Padre. 

La meravigliosa opera della redenzione di tutto il genere umano ci ha riportato alla gioia di essere figli di Dio e ha aperto la via alla vita eterna. Ma Dio non s'impone a nessuno e, rispettando la nostra libertà, c'invita a collaborare con la sua grazia, che possiamo ricevere tramite la Parola e i Sacramenti, in modo che poi, come gli apostoli a Pentecoste, dopo essere stati rivestiti  della potenza dello Spirito di Dio, possiamo andare a predicare la Buona Novella a tutti, condividendo la gioia di essere suoi discepoli. Che il periodo di Quaresima e Pasqua ci arricchisca dei doni del Signore, di cui abbiamo bisogno!

In questo numero del bollettino parrocchiale troverete le informazioni sulla vita della nostra comunità e anche dei consigli di Papa Francesco che ci aiutano a comprendere il significato spirituale del tempo liturgico che sta per iniziare.

Buona lettura a tutti!
                                                                              
don Maksym 	


<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "1903" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>


---
layout: single
title:  "Bollettino n. 9 - Luglio 2019"
date:   2019-06-16 06:56:47 +0200
categories: bollettino 1907
author: mp
tags: Lettere
---

Cari fratelli e sorelle,

l’anno catechistico e pastorale sta per finire e inizia il periodo delle vacanze. Vorrei ringraziare tutti voi per il vostro impegno a favore delle necessità della nostra comunità parrocchiale. Che Dio, generoso nei suoi doni, vi ricompensi per il vostro servizio e la vostra  dedizione. 

In questo numero troverete la sintesi dell’ultima esortazione apostolica di papa Francesco **Christus vivit**,  dedicata ai giovani e a tutto il popolo di Dio. Inoltre, il signor Luigi del Bosco ci presenta la storia del nostro oratorio a Cragno, dove celebriamo la Messa solenne due volte all’anno – per la festa della Madonna del Buon Consiglio e la festa dell’Assunta. 

Tutti gli avvenimenti della nostra vita parrocchiale li troverete sul sito Internet: parrocchia.salorino.ch, creato e amministrato da Lorenzo Emilitri, a cui porgo pure il mio ringraziamento. 


Non dimentichiamoci del Signore affinché ci guidi sui suoi sentieri anche durante le vacanze. Grazie e buona estate a tutti. 
 
don Maksym 




{% capture notice-text %}

**Preghiera per una buona vacanza**


Aprimi, o Signore, il sentiero della vita <br>
e guidami sulle strade dei tuoi desideri.
  

Fammi capire questa inquietudine <br>
che mi fa uomo di strada,  <br>
questa curiosità che mi fa investigatore di bellezza<br>  
e la volontà di fare del bene sulla terra.  


Fammi capire la bellezza delle cose  <br>
e le parole che Tu esprimi a mio insegnamento dalle profondità di essa.  


Donami di comprendere la bontà delle cose  <br>
e di saperne rettamente usare per la tua gloria e la mia felicità.  


Concedimi di capire gli uomini che incontro <br>
sul mio cammino e il dolore che nascondono <br>
e quelli che dividono con me la fatica della strada,  <br>
l'amore dell'avventura la soddisfazione della scoperta; <br>
dammi il dono della vera amicizia e della vera allegria, <br>
fammi cordiale, attento, magnanimo, puro, misericordioso.


Fammi sentire la voce della strada, <br>
quella che mi invita sulle vie del mondo  <br>
a conoscere sempre più doni del tuo amore,  <br>
quello che batte il cammino dei cuori,  <br>
quello che conosce il sentiero delle altezze <br>
dove Tu abiti nello splendore della Verità.  


Lontano da Te e dalle Tue vie,  <br>
fammi sentire l'inutilità del tutto.

 
Alla Tua casa dammi di poter giungere <br>
dove Tu per tutti i santi sei Bellezza vera, <br>
Luce incerata, Amore pieno, Riposo perfetto.

 
Amen.  

__(Santo Giovanni Paolo II)__


{% endcapture %}

<div class="notice--primary">
  {{ notice-text | markdownify }}
</div>






<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "1907" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>


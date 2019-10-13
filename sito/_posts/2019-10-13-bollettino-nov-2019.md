---
layout: single
title:  "Bollettino n. 9 - Novembre 2019"
date:   2019-10-13 14:06:08 +0200
categories: bollettino 1910
author: mp
tags: Lettere
---

Carissimi,

si avvicina la festa di tutti i Santi, cioè tutti coloro che sono già beati perché stanno guardando il volto di Dio in Cielo. Il giorno seguente ricorderemo tutti coloro che hanno lasciato questo mondo prima di noi, ma hanno ancora bisogno della nostra preghiera per godere della felicità eterna insieme a tutti i Santi, lodando il Signore. Tutto questo ci fa riflettere sulle nostre stesse vite, perché un giorno anche noi incontreremo Cristo e dovremo dargli un resoconto del nostro comportamento: risponderemo se siamo stati veramente fedeli a Lui e ai suoi insegnamenti nella nostra quotidianità, guidati dal più importante comandamento che Lui ci ha lasciato – il comandamento di amare Dio e il prossimo come noi stessi.


L'uomo, per la sua natura, è debole e peccatore e quindi ha bisogno dell'aiuto di Dio, che può ricevere in una comunità di credenti, chiamata Chiesa, il cui capo è Cristo, e tutti i seguaci ne sono membri. La Chiesa, fedele alla missione di Cristo, offre ai suoi fedeli straordinari doni - i sacramenti in cui Dio dà la sua grazia e il suo aiuto. Nel nuovo anno pastorale siamo felici di avere 10 bambini che si preparano a ricevere Gesù nell’Eucaristia e 11 ragazzi che hanno iniziato il loro percorso di formazione al sacramento della confermazione, cioé della maturità cristiana. Tutti siamo invitati a partecipare attivamente alla vita della comunità della nostra parrocchia per approfondire la nostra fede, speranza e carità, che ci permettono di andare e proclamare Cristo ovunque ci troviamo.


In questo numero troverete una continuazione delle informazioni storiche sulla nostra parrocchia, questa volta sulle feste a San Giuseppe e a San Rocco; segue una testimonianza di Selina Perucchi dopo il tragico incendio della propria casa e infine le ultime notizie della nostra vita comunitaria.


Lasciamo che il Natale, che celebreremo tra due mesi, ci consenta ancora una volta di sperimentare l’Amore del Bambino Gesù, che viene nel mondo a Betlemme e ci dà la speranza per un domani migliore, risplendendo sui nostri volti e donandoci la sua pace e la sua luce che non passano mai.



{% capture notice-text %}

**Preghiera a Gesu Bambino**


O Santo Bambino Gesù,<br>
che diffondi le tue grazie su chi ti invoca,<br>
volgi i tuoi occhi a noi,<br>
prostrati innanzi alla tua santa immagine,<br>
e ascolta la nostra preghiera.

Ti raccomandiamo tanti poveri bisognosi,<br>
che confidano nel tuo divin cuore.<br>
Stendi su di essi la tua mano onnipotente<br>
e soccorri alla loro necessità.<br>
Stendila sui bambini, per proteggerli;<br>
sulle famiglie, per custodirne l'unità e l'amore;<br>
sugli infermi, per guarirli e santificarne le pene;<br>
sugli afflitti, per consolarli;<br>
sui peccatori, per trarli alla luce della tua grazia;<br>
su quanti, stretti dal dolore e dalla miseria,<br>
invocano fiduciosi il tuo amoroso aiuto.<br>
Stendila ancora su di noi, per benedirci.

Concedi, o piccolo Re,<br>
i tesori della tua misericordia<br>
e della tua pace<br>
al mondo intero,<br>
e conservaci ora e sempre<br>
nella grazia del tuo amore.<br>
Amen.
{% endcapture %}

<div class="notice--primary">
  {{ notice-text | markdownify }}
</div>




<div class="notice--info">
<h4>Contenuti del bollettino:</h4>
<ul>
{% for post in site.posts %}

  {% if post.categories contains "1910" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>


# Istruzioni per il bollettino parrocchiale

## Struttura del sito

Il sito è un Jekyll blog in `sito/`. I post del bollettino sono in `sito/_posts/`.
Gli autori sono definiti in `sito/_data/authors.yml`.
Le immagini di ogni bollettino vanno in `/assets/images/bollettino[AAMM]/`.

---

## Codice del bollettino

Ogni numero ha un codice `AAMM` (anno+mese di pubblicazione), es. `2512` = dicembre 2025, `2606` = giugno 2026.

---

## Articoli che compongono un bollettino

Ogni bollettino è composto da articoli fissi (rubriche) e articoli variabili. Tutti hanno `categories: bollettino AAMM`.

### Articoli fissi (rubriche)

| Rubrica | Tag | Author | Orario |
|---------|-----|--------|--------|
| Post indice ("Insieme") | `Insieme` | — | `02:00:00` |
| Lettera del Presidente | `Lettere ConsiglioParrocchiale` | `ap` | `01:17:00` |
| Angolo del Don | `AngoloDelDon` | `ae` | `01:16:00` |
| Calendario liturgico | `Appuntamenti` | — | `01:12:00` |

### Articoli variabili

Hanno orari decrescenti a partire da `01:11:00`. L'ordine rispecchia la struttura del bollettino cartaceo.

### Articoli che NON vanno sul sito

Le seguenti sezioni del bollettino cartaceo non vengono trasportate sul sito:

- **Copertina / Bacheca** (orari messe, contatti, QR code WhatsApp)
- **Anagrafe parrocchiale**
- **L'angolo della generosità** (lista donatori)

---

## Frontmatter standard

```yaml
---
layout: single
title:  "Titolo dell'articolo"
date:   AAAA-MM-GG HH:MM:00
categories: bollettino AAMM
tags: Tag1 Tag2
author: codice        # solo se noto, omettere altrimenti
---
```

La data di tutti gli articoli è quella del giorno di pubblicazione sul sito. L'**orario** controlla l'ordine: orario più alto = appare prima nell'indice.

---

## Formato del calendario liturgico

```markdown
## Mese AAAA

- **GG giorno-settimana**: _descrizione liturgica._ _Ore HH.MM:_ testo / _Ore HH.MM:_ testo
```

Regole:
- Un `##` per ogni mese
- Data in **grassetto**: numero del giorno + nome del giorno della settimana
- Ricorrenza liturgica in _corsivo_
- Orari in corsivo (`_Ore HH.MM:_`), seguiti dal testo in chiaro
- Più orari nello stesso giorno separati da ` / `
- Per avvisi o immagini usare `<div class="notice--info">` con le immagini dentro `{% raw %}...{% endraw %}`

---

## Post indice ("Insieme")

```markdown
---
layout: single
title:  "Insieme: il bollettino parrocchiale [mesi] [anno]"
date:   AAAA-MM-GG 02:00:00
categories: bollettino AAMM
tags: Insieme
---

Benvenuti!

<div class="notice--info">
<h4>Contenuti:</h4>
<ul>
{% for post in site.posts %}
  {% if post.categories contains "AAMM" %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <small>({{ post.tags | join: ", " }})</small>
  </li>
  {% endif %}
{% endfor %}
</ul>
</div>
```

---

## Immagini

Le immagini vanno in `sito/assets/images/bollettino[AAMM]/` con nomi descrittivi in snake_case (es. `don_angelo_cavaliere.jpg`, `quadro_s_zenone.jpg`).

Il tag da usare nel testo è sempre su quattro righe, dentro `{% raw %}...{% endraw %}`:

```
{% raw %}<img class="full"
 src="/assets/images/bollettino[AAMM]/nome.jpg"
 alt="descrizione dell'immagine">
{% endraw %}
```

### Segnaposto durante la trascrizione

Quando si trasporta da un docx e le immagini non sono ancora disponibili, lasciare un commento nel punto esatto dove andrà l'immagine:

```markdown
<!-- immagine: descrizione breve -->
```

### Inserire le immagini disponibili

Quando le immagini vengono fornite (file JPG nella cartella del bollettino), procedere così:

1. Leggere i nomi dei file nella cartella `sito/assets/images/bollettino[AAMM]/`
2. Per ciascun file, dedurre dal nome a quale articolo appartiene e in quale punto del testo va inserita, basandosi sul contenuto dell'articolo
3. Sostituire il commento segnaposto corrispondente con il tag `<img>` completo
4. Se un'immagine non ha un segnaposto ovvio, cercare nel testo il punto narrativo più pertinente
5. Se l'abbinamento è ambiguo (l'immagine potrebbe appartenere a più articoli), chiedere prima di procedere

---

## Firma in fondo agli articoli

Se l'autore è un **autore noto** (presente in `authors.yml`), la firma in fondo all'articolo va **rimossa**: il nome appare già nel blocco autore del layout.

La firma va **mantenuta** solo se è seguita da un **ruolo contestuale** che non compare nella bio dell'autore in `authors.yml`.

Esempi:
- `**Lorenzo Emilitri**` → rimuovere (autore noto, ruolo già nella bio)
- `**Raffaella Brenni Tonella (Presidente del Patriziato di Salorino)**` → mantenere (il ruolo "Presidente del Patriziato" è rilevante nel contesto dell'articolo e non appare nella bio)

Eccezione: attributi di citazioni o poesie di terzi (es. `**Papa Francesco**`) non sono firme dell'autore del post e vanno mantenuti.

---

## Autori noti

| Codice | Nome |
|--------|------|
| `ae` | don Angelo Epistolio (parroco) |
| `ap` | Alessandro Perucchi (presidente CP) |
| `le` | Lorenzo Emilitri (vicepresidente CP) |
| `cf` | Claudia Fomasi (segretaria CP) |
| `gg` | Gabriele Gianolli (priore confraternita) |
| `bb` | Beatrice Brenni |
| `rtb` | Raffaella Brenni Tonella (presidente Patriziato) |
| `rf` | Renzo Fontana |
| `fa` | Fabiana Agustoni |
| `cp` | Consiglio Parrocchiale (ente collettivo) |

Per nuovi autori aggiungerli in `sito/_data/authors.yml`.

---

## Procedura per trasportare un bollettino da docx

1. Convertire il docx con `pandoc file.docx -t markdown --wrap=none`
2. Identificare tutti gli articoli e assegnare a ciascuno orario, tag e autore
3. Creare il file `AAAA-MM-GG-insieme.md` come indice
4. Creare un file per ogni articolo (saltare copertina, anagrafe, angolo della generosità)
5. Per le immagini: estrarre dal docx, rinominare con nomi descrittivi, mettere in `/assets/images/bollettino[AAMM]/`, poi sostituire i commenti segnaposto con i tag `<img>`
6. Se ci sono autori nuovi, aggiungerli in `sito/_data/authors.yml`

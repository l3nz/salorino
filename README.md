# salorino

Il sito per la parrocchia di Salorino.



## Suddivisioni

### Categories

- bollettino YYMM
- Foto
- ospiti
- anno2020
- (vuota)   - se possibile non usare

### Tags



Posts by Tag

- Comunità
- GruppoFamiglie
- Appuntamenti
- Lettere
- Storia
- PapaFrancesco
- GruppoAnziani
- Confraternita
- Corale
- Brevi
- Vocabolario
- Musica
- Coretto
- SanRocco
- SanZenone
- SanGiuseppe
- Cragno



### Autori

- mp
- ldb
- meg
- lc





## Infrastruttura

Il sito è generato da Jekyll usando il template Minimal Mistakes, in italiano.

https://mmistakes.github.io/minimal-mistakes/




Plugins:
- Tagging https://github.com/pattex/jekyll-tagging
- Sitemap generator https://github.com/jekyll/jekyll-sitemap
- Reading time https://github.com/bdesham/reading_time
- Maps https://github.com/ayastreb/jekyll-maps
- Picture tags https://github.com/robwierzbowski/jekyll-picture-tag
 

Vedi:
- Lista di plugins https://github.com/planetjekyll/awesome-jekyll-plugins


### Hosting

Da decidere il nome a dominio.


## Generazione

### Post futuri

http://www.fizerkhan.com/blog/posts/Working-with-upcoming-posts-in-Jekyll.html







## Contenuti 

## Aggiunta di articoli

Ciascun bollettino ha una categoria propria, es `1811` per Novembre 2018.

Gli articoli vanno messi sotto `sito/_posts/`.

Le foto vanno estratte via copia/incolla sotto `assets/images/bollettino18`.





### Pagine

- Home page e contatti
- Il parroco
- Attività
  * Consiglio parrocchiale
  * La confraternita
  * La corale
  * Gruppo Genitori
  * Gruppo Anziani
- Cenni storici
  * Le chiese
  * Salorino
- Links

### Categories

- Bollettino
- Ospiti
- Varie


## Tags

- News
- Calendario
- Storia
- Lettere
- PrimaComunione
- Cresima
- GruppoGenitori
- Gruppo Anziani
- Corale
- Bollettino-1806

### Authors

- mp


## Bollettino

Le pagine del bollettino vanno create come:

    ./mkPaginaBollettino.sh la-notizia

Partendo dall'ultima alla prima. Appaiono nel bollettino corrente (vedi `mkPaginaBollettino`) 
e vanno fatte dall'ultima alla prima.

## Pozzi



{% capture notice-text %}

Ill.mo Rev.mo Mons. Vescovo Carlo Ciceri ...

{% endcapture %}
<div class="notice--primary">
  {{ notice-text | markdownify }}
</div>



## Immagini

Per le immagini, apro il sorgente DOC,copio ed incollo in preview;  poi salvo come JPG.

Le immagini vanno riscalate con ImageMagick:


	$ identify anniversari_matrimonio.jpg
	anniversari_matrimonio.jpg JPEG 4128x3096 4128x3096+0+0 8-bit sRGB 1.34375MiB 0.000u 0:00.009

Questo comando converte l'immagine per stare in un quadrato max 800x800, a meno che non sia più piccola. 

	convert anniversari_matrimonio.jpg -resize 800x800\>  anniversari_matrimonio.jpg


Per embeddarle:

    {% raw %}<img class="full"
     src="/assets/images/bollettino1910/modulata_carmina.jpg" 
     alt="il gruppo vocale MODULATA CARMINA">
    {% endraw %}


### Cartella -> Galleria

Se voglio convertire tutta una cartella, posso farlo. Vado nella cartella e faccio:


    mkdir _results
    magick mogrify -format jpg -path ./_results -resize 800x800\>  -auto-orient  -quality 70% *.jpg

-strip -interlace Plane

Poi lo copi sotto /images/2019/.....

Per realizzare una gallery, una volta si abbiano le foto nella cartella, è sufficioente copiare un file Gallery (es "corpus-domini")
e far girare lo script mkGallery che stampa il codice su stdout.


### OCR

Per i documenti da scannerizzare via OCR uso: https://www.newocr.com/





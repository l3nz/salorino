# salorino

Il sito temporaneo per la parrocchia di Salorino.

Deployment temporaneo: https://prova-salorino.netlify.com/

Contenuti:

- Infrastruttura
- Come generare il sito
- Piano dei contenuti
- Tags


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
- 


## Immagini

Le immagini vanno riscalate con ImageMagick:


	$ identify anniversari_matrimonio.jpg
	anniversari_matrimonio.jpg JPEG 4128x3096 4128x3096+0+0 8-bit sRGB 1.34375MiB 0.000u 0:00.009

Questo comando converte l'immagine per stare in un quadrato max 800x800, a meno che non sia più piccola. 

	convert anniversari_matrimonio.jpg -resize 800x800\>  anniversari_matrimonio.jpg

### Cartella -> Galleria

Se voglio convertire tutta una cartella, posso farlo. Vado nella cartella e faccio:


    mkdir _results
    magick mogrify -format jpg -path ./_results -resize 800x800\>  -auto-orient  -quality 70% *.jpg

-strip -interlace Plane

Poi lo copi sotto /images/2019/.....

Per realizzare una gallery, una volta si abbiano le foto nella cartella, è sufficioente copiare un file Gallery (es "corpus-domini")
e far gireare lo script mkGallery che stampa il codice su stdout.




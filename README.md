# LEESMIJ

Dit is een taakgericht studieboek, ontwikkeld voor studenten in het middelbaar en hoger onderwijs. De nadruk ,ligt op het maken van queries, formulieren en rapporten en minder op het maken van nieuwe databases. Het is daarom ook zeer geschikt voor iedereen die wil leren om Access te gebruiken.

Het boek bevat veel opgaven. Voor docenten is er een database beschikbaar waarin de opgaven zijn uitgewerkt.

Benodigde software: Microsoft Access 365, 2016 of 2019. Ook met de versies 2013 en 2010 valt goed te werken.

## Oefenbestanden

Bestand Hulpbestanden-LeerAccess.zip bevat alle bestanden uit map `data` en wordt gegenereerd via het script in `R/generate-zip.R`. Bij het renderen van het boek wordt dit script vooraf gerenderd door de optie in `_quarto.yml`: pre-render: R/generate-zip.R

Het script gebruikt [7-zip](https://www.7-zip.org/) dat op de computer en in het pad moet worden geïnstalleerd. Het zip-bestand wordt alleen bijgewerkt als een bestaand bestand verandert of als er bestanden worden toegevoegd of verwijderd.

## Interactieve inhoud

De interactieve delen zijn antwoorden op vragen, tips, oplossingen, ... Deze worden aangemaakt door functies in pakket [webexercises](https://psyteachr.github.io/webexercises/) en dit pakket moet geïnstalleerd zijn.

Om weboefeningen met Quarto te gebruiken, moet het bestand `webex.css` en `webex.js` worden toegevoegd aan de html format optie in het bestand `_quarto.yml`.

Om de functies in alle hoofdstukken beschikbaar te maken, wordt het benodigde script `webex.R` uitgevoerd via R-code in bestand `.Rprofile`. Dit is de gemakkelijkste methode, anders moet de code aan het begin van elk hoofdstuk worden opgenomen.

## Aangepaste CSS

De css voor de weboefeningen is aanwezig in `include/webex.css`.

De css specifiek voor dit studieboek staat in `include/textbook.css`.


# Labores administrativas desde el interprete de comandos {#labores_ administrativas_desde_el_interprete_de_comandos}

Como las operaciones que se presentan a continuación deben realizarse desde una terminal con un interprete de comandos, recomendamos que lea al respecto (ver por ejemplo [basico_OpenBSD]) y que conozca la ubicación de las fuentes de SIVeL y del sitio o sitios que maneje. Por ejemplo en adJ las fuentes estarán en ```/var/www/htdocs/sivel2_sjrven```.

## Copias de respaldo {#copias_de_respaldo}

```RAILS_ENV=production rake sivel2:vuelca```

Saca volcado de la base (i.e un volcado es un archivo con instrucciones SQL para reconstruir la base completa), lo almacena junto con los del último mes en el directorio de respaldo configurado --que por defecto es ```/var/www/resbase/sivel2_sjrven``` que en OpenBSD adJ está cifrado.

![Aviso](https://github.com/BlancaInesAcosta/sivel2_mujeresindigenas_doc/blob/master/aviso.png?raw=true)
*Aviso*  
Los volcados generados incluyen las fuentes de información. Debe mantenerlos cifrados y con permisos que no permitan lectura por parte de usuarios no autorizados.

## Configuraciones {#configuraciones}

El directorio de respaldo y la ruta donde se guardan anexos se configuran en ```config/initializers/sivel2_gen.rb```



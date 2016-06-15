# Introducción {#introduccion}

## Tabla de contenido {#tabla_de_contenido} 
1. Principios para el desarrollo de SIVeL2
2. Recurso Humano
3. Infraestructura Tecnológica

A partir de Enero de 2016 el Observatorio de violencias contra las mujeres indígenas constituido por CODACOP, ONIC, OIK y ACIN comenzó a financiar la personalización de SIVeL2 y el desarrollo de un sistema de información para casos de violencia especialmente contra mujeres indígenas desarrollado y personalizado por Vladimir Támara del proyecto Pasos de Jesús.

La operación continúa del nuevo sistema de información requiere de personas que desempeñen roles y de una infraestructura tecnológica que opere de manera continua. Estos temas, precedidos de los principios que han guiado el desarrollo de SIVeL2, se presentan en el resto de este capítulo.

## Principios para el desarrollo de SIVeL {#principios_para_el_desarrollo_de_sivel2}

Para el desarrollo de SIVeL2 se han procurado seguir los siguientes principios para manejo de información sobre violencia política, sugeridos por el sacerdote jesuita Javier Giraldo:

+ Máxima accesibilidad
+ Reserva de las fuentes de información
+ No comercialización de la información de las víctimas

Para maximizar accesibilidad y evitar comercialización de la información de las víctimas, SIVeL2 y su documentación son de dominio público y están disponibles en Internet sin costo (aunque recibimos [donaciones](http://www.pasosdejesus.org/index.php?pag=ayudenos) para ampliar el desarrollo). Las herramientas informáticas recomendadas para operar SIVeL2 son también de dominio público o tienen licencias cercanas al dominio público (e.g licencia BSD, licencia MIT) o en su defecto son de fuentes abiertas (e.g licencia GPL), pero en ningún caso son de fuentes cerradas o con licenciamiento que requiera el pago de regalías o que restringa la copia o la redistribución de copias.

Buscando garantizar la reserva de fuentes de información en los casos de violaciones a derechos humanos (DDHH), derecho internacional humanitario (DIH), violencia político social (VPS) y Refugio, hemos priorizado la seguridad en el desarrollo de SIVeL2:
https://github.com/pasosdeJesus/sivel2_mujeresindigenas
+ El código fuente de SIVeL2 está abierto y disponible públicamente (i.e fuentes abiertas), ver http://github.com/pasosdeJesus/sivel2_mujeresindigenas/. También para versiones estables mantenemos abierta una convocatoria pública a auditar las fuentes de SIVeL2 ([ver Apéndice B, Llamado público a auditar SIVeL2](https://venezuela.sjrlac.info/doc/html/llamado.html)) y la distribución de referencia, premiando con dinero a quien encuentre alguna falla de seguridad.

+ La implantación de SIVeL2. y sus fuentes ya han sido auditadas tanto por los desarrolladores como por otras personas con experiencia en seguridad informática ([ver Apéndice C, Créditos](https://venezuela.sjrlac.info/doc/html/creditos.html)).

+ Recomendamos una plataforma de operación segura, madura y ampliamente auditada, i.e sistema operativo, herramientas complementarias y configuraciones (emplear una plataforma insegura haría inútiles los esfuerzos con las fuentes de SIVeL2).

+ Hemos contribuido en el desarrollo del sistema operativo OpenBSD y su distribución Aprendiendo de Jesús (adJ) conforme a la plataforma de operación recomendada, procurando que también sea segura, liviana, usable[1] y constituida por herramientas de dominio público o de licencias cercanas.

+ Recomendamos de manera especial OpenBSD por sus niveles de seguridad y adJ por su interfaz en español y porque por defecto las bases de datos y respaldos de SIVeL2 quedan cifrados con una clave que debe darse durante el arranque. Por lo mismo en caso de hurto la información no será visible para quien hurta, y en caso de una inspección ilegitima basta apagar o desconectar el computador.

![](http://manual.winmerge.org/images/warning.gif)
**Aviso**

Reconocemos como fallas de seguridad críticas sólo las que puedan explotarse en la versión estable operando sobre la plataforma de operación recomendada (i.e la configuración por defecto de la distribución Aprendiendo de Jesús http://aprendiendo.pasosdeJesus.org).

[1]: Buscando un buen balance entre seguridad y facilidad.
# falta la fecha exacta de inicio
# falta la direcció exacta de las fuentes
# yo creo que toca agregar a Anzorc y mujeres indigenas ¿o no?
 



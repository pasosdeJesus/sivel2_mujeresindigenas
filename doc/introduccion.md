# Introducción {#introduccion}

A partir de Enero de 2016 el Observatorio de violencias contra las mujeres 
indígenas constituido por CODACOP, ONIC, OIK y ACIN,
comenzó a financiar una personalización de SIVeL2 para 
desarrollar un sistema de información para casos de violencia 
especialmente contra mujeres indígenas (ver detalles en [xref](#creditos)).

La operación continúa del nuevo sistema de información requiere de 
personas que desempeñen roles y de una infraestructura tecnológica que 
opere de manera continua. 
Estos temas, precedidos de los principios que han guiado el desarrollo de 
SIVeL2, se presentan en el resto de este capítulo.

## Principios para el desarrollo de SIVeL2 {#principios}

Para el desarrollo de SIVeL2 se han procurado seguir los siguientes 
principios para manejo de información sobre violencia política, sugeridos 
por el sacerdote jesuita Javier Giraldo:

+ Máxima accesibilidad
+ Reserva de las fuentes de información
+ No comercialización de la información de las víctimas

Para maximizar accesibilidad y evitar comercialización de la información 
de las víctimas, SIVeL2 y su documentación son de dominio público y están 
disponibles en Internet sin costo (ver
[donaciones](http://www.pasosdejesus.org/index.php?pag=ayudenos)). 
Las herramientas informáticas recomendadas para operar SIVeL2 son 
también de dominio público o tienen licencias cercanas al dominio 
público (e.g licencia BSD, licencia MIT) o en su defecto son de 
fuentes abiertas (e.g licencia GPL), pero en ningún caso son de fuentes 
cerradas o con licenciamiento que requiera el pago de regalías o que 
restringa la copia o la redistribución de copias.

Buscando garantizar la reserva de fuentes de información en los casos de 
violaciones a derechos humanos (DDHH), derecho internacional humanitario 
(DIH), violencia político social (VPS) y Refugio, hemos priorizado la 
seguridad en el desarrollo de SIVeL2:

+ El código fuente de SIVeL2 está abierto y disponible públicamente 
  (i.e fuentes abiertas), ver 
  <http://github.com/pasosdeJesus/sivel2_mujeresindigenas/>. 
  Para la versión predecesora (i.e SIVeL 1.2, ver 
  [sivel12](#bibliografia)) mantenemos abierta una convocatoria pública 
  a auditar las fuentes (ver [llamado12](#bibliografia)) y la distribución de 
  referencia, premiando con dinero a quien encuentre alguna falla de 
  seguridad.  Proximamente esperamos abrir una convocatoria análoga para 
  SIVeL2.

+ La versión predecesora y sus fuentes ya han sido auditadas tanto por 
  los desarrolladores como por otras personas con experiencia en seguridad 
  informática (ver [xref](#creditos)).  La versión 2 es auditada de manera 
  automática tras cada cambio por hakiri.io (ver [hakiri](#bibliografia)).

+ Hemos contribuido en el desarrollo del sistema operativo OpenBSD y su 
  distribución Aprendiendo de Jesús (adJ) conforme a la plataforma de 
  operación recomendada, procurando que también sea segura, liviana, 
  usable[^intro.1] y constituida por herramientas de dominio público o de 
  licencias cercanas.  Además de la seguridad de OpenBSD y el soporte
  a español de adJ, en esta distribución por omisión las bases de datos 
  y respaldos de SIVeL2 quedan cifrados con una clave que debe darse 
  durante el arranque.  Por lo mismo en caso de hurto la información no 
  será visible para quien hurta, y en caso de una inspección ilegitima 
  al servidor basta apagar o desconectar el computador.

[^intro.1]: Buscando un buen balance entre seguridad y facilidad.

+ Para los usuarios finales que se conecten a la plataforma recomendamos
  emplear Ubuntu en lugar de Windows (emplear una plataforma insegura 
  al lado del cliente haría inútiles los esfuerzos con las fuentes de 
  SIVeL2 y al lado del servidor).


![Aviso](img/aviso.png)
***Aviso***

Reconocemos como fallas de seguridad críticas sólo las que puedan 
explotarse en la versión estable operando sobre la plataforma de 
operación recomendada 
(i.e la configuración por defecto de la distribución Aprendiendo de 
Jesús <http://aprendiendo.pasosdeJesus.org>).



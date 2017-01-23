 
# Apéndice A. Novedades {#novedades}
* Versión 2.0b2 
	* R-427-3 En la ficha de edición de un caso (ver [xref](#ficha_comun))
	   se retiraron las secciones que decían "Privado ACIN" y 
	   "Privado OIK".  Ahora los campos privados están mezclados entre 
	   los campos comunes y se resaltan con un fondo azul.
	* R-427-2 En resumen de un caso (ver [xref](#resumen_de_un_caso)) se 
	  presentan campos privados ACIN en fondo azul y una casilla de 
	  verificación que permite esconderlos o visualizarlos

	* R-355 Nuevo menú __Adminsitrar->Respaldo Cifrado__ para descargar 
	  copia de respaldo cifrada (ver [xref](#copia_de_respaldo_cifrada))

	* Nuevos campos en ficha común:
		* R-427 En pestaña Datos Básicos nuevo campo abierto para 
	 	  número consecutivo particular de cada organización 
		* R-412-2 En pestaña Datos básicos se añadió campo abierto 
		  "Documentado en terreno por"
	 	* R-442 Para Evento y seguimiento se agregó campo
		  "Fecha del seguimiento"
		* R-445 En la pestaña eventos y seguimientos se agregó el 
		  campo cerrado "Tipo de Ayuda que necesita" con opciones 
		  "cultural", "juridico" y "psicosocial" --las mismas de 
		  tipo de acompañamiento de pestaña Datos Básicos

	* Campos que ahora son cerrados 
		* R-421-7 En la pestaña Eventos "Tiene tierra" ahora es de 
		  selección múltiple. Nueva tabla básica "Tiene tierra"

	* Campos que ahora son de selección múltiple
		* R-413 En pestaña datos básicos, Acompañamiento ahora es
	   	  de selección múltiple y con nueva tabla básica 
	 	  "Tipo de acompañamiento"
		* R-407 En la pestaña "Víctima" se permiten marcar varias 
		  opciones para el idioma
		* R-398 En la pestaña "Eventos y seguimientos" ahora se 
		  permiten múltiples opciones en "Motivo para no denunciar"
		* R-432 En la pestaña "Eventos y seguimientos" el Tipo de 
		  apoyo ahora es de selección múltiple
		* R-421-6 En la pestaña Eventos "Afectaciones a otra persona" 
		  ahora es campo abierto 
		* R-418 En la pestaña eventos y seguimientos se cambió 
	  	  "Número de veces antes" para que no sólo permitiera 
		  números sino texto 

	* Cambios en valores por omisión y validaciones
		* R-421-1 Fecha de seguimiento en nuevos Eventos ahora por 
		  omisión comienza con la Fecha de documentación inicial en 
		  terreno.

	* Reordenadas ficha ACIN impresa así como en el sistema:
		* R-422 En ACIN pestaña Eventos y seguimientos añadir 
	 	  campo abierto teléfono de contacto después de 
		  Acompañamiento que necesita 
		* R-424 En ACIN en pestaña Eventos y seguimientos nuevo campo 
		  abierto ¿Cual reparación? a continuación de 
		  "Ha recibido reparación" 
		* R-414 En la pestaña Datos Básicos se subió Consentimiento 
	  	  antes de la Fecha de documentación
		* R-421-2 En la pestaña Eventos se agregó "Tipo de 
		  acompañamiento que ha recibido" después de "Tipo de Ayuda".
		  Se evidencia que hay 3 campos que recolectan el mismo tipo 
		  de información "Tipo de acompañamiento" en la pestaña 
		  Basicos y en la pestaña Eventos "Tipo de acompañamiento 
		  que ha recibido" y "Tipo de acompañamiento que necesita". 
		* R-421 En pestaña eventos y seguimientos se reubicó 
		  actividades que se dejaron de hacer, reacción de 
		  familia y comunidad, afectación a otra persona después de 
		  Tipo de Apoyo.
		* R-416 En la pestaña Víctima se subió 
		  "Departamento de Nacimiento", "Municipio de Nacimiento", 
		  "Resguardo de Nacimiento", "Coumunidad de Nacimiento" 
		  a continuación de "Fecha de Nacimiento"
		* R-415 En la pestaña Fuente se intercambió el orden de 
		  Fuente y Fecha
		* R-423 En la pestaña "Eventos y seguimientos" se 
		  reubicó Avances del caso, etapa del proceso y 
		  "Ha recibido reparación" después de fecha de la denuncia
		* R-420 En la pestaña Eventos y seguimientos se 
		  reubicó afectaciones individuales, afectaciones culturales,
		  familiares y comunitarias entre Tipo de Afectación y 
		  Tipo de Apoyo
		* R-419 En la pestaña eventos y seguimientos se 
		  reubicó breve descripción de hechos para que quedara 
		  después de Relacionado con el conflicto
	

	* Renombramientos
		* R-440 Se renombró la tabla básica "Categoria" para que 
		  fuera "Hechos Victimizantes"
		* R-430 En la pestaña Víctima se unificaron "vereda de 
		  residencia" y "comunidad de residencia" en 
		  "Comunidad/vereda de residencia" (se homologan uniendo 
		  y separando con |). En la pestaña Evento se renombró 
		  "Comunidad" por "Comunidad/vereda".
		* R-412 En pestaña Datos Básicos Cambiar "Documentado por" 
		  por "Sistematizado por"
		* R-429 En la pestaña básicos se renombró "Fecha 
		  documentación ini." por "Fecha de documentación inicial 
		  en terreno"
		* R-442-1 En la pestaña seguimiento se renombraron Año, 
		  mes y dia por Año hecho, mes hecho, día hecho
		* R-421-5 En la pestaña Eventos a "Tipo de apoyo" se le 
		  agregó "que ha recibido" 
		* R-421-4 En la pestaña Evento se agregó  "del hecho" a 
	  	  Departamento, Municipio, Resguardo y Municipio/Vereda 

	* Fallas resueltas
		* F-449 Al agregar una fuente y volver a editar el caso, la 
		  fuente tomaba la fecha del caso.
		* F-447 Temporalmente el sitio de producción no permitía 
		  agregar casos.  
		* F-448 Temporalmente el sitio de producción no presentaba 
		  pestañas Anexos ni Etiquetas 
		* F-410 En conteo quitar expulsión. Desagregar por 
		  Departamento.  Quitar columna beneficiario. 
		  Renombrar columna contacto.
		* F-427 Al ver resumen de un caso eliminar 
		  "Fecha desplazamiento emb"
		* F-381 Un administrador de oficina no debe poder 
		  editar/eliminar usuarios que no son de su oficina
		* F-380 un administrador de oficina no debe poder cambiar 
		  su rol a administrador 
		* F-366 En listado de casos el título decía "Asesor SJR,"
		  ahora dice "Sistematizado por"
		  

* Versión 2.0b2 para el Observatorio de Violencia contra las Mujeres Indigenas
	* 9.Ago.2016 Carrera 4 terminada
	* 29.Jul.2016 Carrera 4 pasa a ensayo
	* 14.Jun.2016 Carrera 3 pasa a ensayo
	* 21.Abr.2016 Carrera 2 pasa a ensayo
	* 29.Feb.2016 Carrera 1 pasa a ensayo
	* 1.Feb.2016 Inicio de contrato cronograma planeado hasta el 8.Ago.2016 
	* 9.Dic.2016 Propuesta de requerimientos

* Versión 2.0a3. 16.Oct.2014   (SIVeL genérico)
	* Captura de información operativa con un diseño basado en el 
	  principio "primero movil".  
	* Listado y filtro sobre casos operativo.

* Versión 2.0a1. Mar.2014 (SIVeL genérico)
	* Opera una parte considerable sobre Ruby on Rails

* El historial de la versión 1.2 puede verse en el [manual de esa versión](http://sivel.sourceforge.net/1.2/).


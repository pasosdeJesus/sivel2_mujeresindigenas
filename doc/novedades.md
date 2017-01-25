 
# Apéndice A. Novedades {#novedades}
* Versión 2.0b2 
	* En Nuevo menú __Administrar->Respaldo Cifrado__ se creo un -- 
	que tiene como función descargar una copia de respaldo cifrada 
	(ver [xref](#copia_de_respaldo_cifrada))
	* En la ficha de edición de un caso (ver [xref](#ficha_comun))
	   se retiraron las secciones que decían "Privado ACIN" y 
	   "Privado OIK".  Ahora los campos privados están mezclados entre 
	   los campos comunes y se resaltan con un fondo azul.
	* En el resumen de un caso (ver [xref](#resumen_de_un_caso)) se 
	  añadieron campos privados ACIN en fondo azul y una casilla de 
	  verificación que permite esconderlos o visualizarlos
	* En el resumen de un caso se elimino "Fecha desplazamiento emb"  
	
	* Nuevos campos en ficha común:
		* En pestaña Datos Básicos se añadió un nuevo campo 
		  abierto para número consecutivo particular de cada 
		  organización "Código en organización"
		* En pestaña Datos básicos se añadió un campo abierto 
		  "Documentado en terreno por"
	 	* En pestaña Evento y seguimiento se agregó un campo
		  "Fecha del seguimiento" para cada seguimiento
		* En la pestaña Eventos y seguimientos se agregó un 
		  campo cerrado "Tipo de Ayuda que necesita" con 
		  opciones "cultural", "jurídico" y "psicosocial" 
		  --las mismas de tipo de acompañamiento de pestaña 
		  Datos Básicos
		* En ACIN en pestaña Eventos y seguimientos a 
		  continuación de "Ha recibido reparación" 
		  se creó un nuevo campo abierto "¿Cual reparación?"  
		* En ACIN pestaña Eventos y seguimientos se añadió un campo 
		  abierto "Teléfono de contacto" después de "Acompañamiento 
		  que necesita"
  

	* Campos que ahora son cerrados 
		* En la pestaña Eventos "Tiene tierra" fue cambiado a  
		  selección múltiple. Fue creada una nueva tabla 
		  básica "Tiene tierra"

	* Campos que ahora son de selección múltiple
		* En pestaña datos básicos, Acompañamiento se cambio a
	   	  a campo de selección múltiple. Se creo con nueva tabla básica 
	 	  "Tipo de acompañamiento"
		* En la pestaña "Víctima" se permiten marcar varias 
		  opciones para "Idioma"
		* En la pestaña "Eventos y seguimientos" ahora se 
		  permiten múltiples opciones en "Motivo para no denunciar"
		* En la pestaña "Eventos y seguimientos" el Tipo de 
		  apoyo se convirtio en un campo de selección múltiple
		* En la pestaña Eventos "Afectaciones a otra persona" 
		  se convirtio en un campo abierto 
		* En la pestaña Eventos y seguimientos se cambió 
	  	  "Número de veces antes" para que no sólo permitiera 
		  números sino texto 

	* Cambios en valores por omisión y validaciones
		* Fecha de seguimiento en nuevos Eventos ahora por 
		  omisión comience con la Fecha de documentación inicial en 
		  terreno.

	* Reordenadas ficha ACIN impresa así como en el sistema:
		* En ACIN pestaña Eventos y seguimientos se añadió 
	 	  campo abierto "Teléfono de contacto" después de 
		  "Acompañamiento que necesita" 
		* En ACIN en pestaña Eventos y seguimientos se creo 
		  nuevo campo abierto "¿Cual reparación?" a 
		  continuación de "Ha recibido reparación" 
		* En la pestaña Datos Básicos se subió Consentimiento 
	  	  antes de la "Fecha de documentación inicial"
		* En la pestaña Eventos se agregó "Tipo de 
		  acompañamiento que ha recibido" después de "Tipo de Ayuda".
		  Se evidencia que hay 3 campos que recolectan el mismo tipo 
		  de información "Tipo de acompañamiento" en la pestaña 
		  Básicos y en la pestaña Eventos "Tipo de acompañamiento 
		  que ha recibido" y "Tipo de acompañamiento que necesita". 
		* En pestaña Eventos y seguimientos se reubicó 
		  "Actividades que se dejaron de hacer", "Reacción de 
		  familia y comunidad", "Afectación a otra persona" 
		  después de "Tipo de Apoyo".
		* En la pestaña Víctima se subió "Departamento 
		  de Nacimiento", "Municipio de Nacimiento", 
		  "Resguardo de Nacimiento", "Comunidad de Nacimiento" 
		  a continuación de "Fecha de Nacimiento"
		* En la pestaña Fuente se intercambió el orden de 
		  "Fuente" y "Fecha"
		* En la pestaña Eventos y seguimientos se 
		  reubicó "Avances del caso", "Etapa del proceso" y 
		  "Ha recibido reparación" después de "Fecha de la 
		  denuncia"
		* En la pestaña Eventos y seguimientos se 
		  reubicó "Afectaciones individuales", Afectaciones 
		  culturales", "Afectaciones familiares y comunitarias"
		  entre "Tipo de Afectación" y "Tipo de Apoyo"
		* En la pestaña Eventos y seguimientos se 
		  reubicó "Breve descripción de hechos" 
		  para que quedara después de "Relacionado 
		  con el conflicto" 
	

	* Se renombraron
		* En conteos se renombró columna "Contacto" 
		  para que fuera "Víctima"
		* Se renombró la tabla básica "Categoría" para que 
		  fuera "Hechos Victimizantes"
		* En la pestaña Víctima se unificaron "Vereda de 
		  residencia" y "Comunidad de residencia" en 
		  "Comunidad/vereda de residencia" (se homologan 
		  uniendo y separando con |). En la pestaña 
		  Evento se renombró "Comunidad" por 
		  "Comunidad/vereda".
		* En pestaña Datos Básicos se cambio "Documentado 
		  por" por "Sistematizado por"
		* En la pestaña Datos Básicos se renombró "Fecha 
		  documentación inic." por "Fecha de 
		  documentación inicial en terreno"
		* En la pestaña Eventos y seguimientos se renombraron 
		  Año, Mes y Día por "Año hecho", "Mes hecho", 
		  "Día hecho"
		* En la pestaña Eventos después de "Tipo de apoyo" 
		  se agregó un campo abierto "Que ha recibido" 
		* En la pestaña Evento se agregó  "del hecho" a 
	  	  Departamento, Municipio, Resguardo y 
		  Comunidad/Vereda 

	* Fallas resueltas
		* Si se agregaba una fuente y se volvía a editar el caso, 
		  la fuente tomaba la fecha del caso.
		* Temporalmente el sitio de producción no permitía 
		  agregar casos.  
		* Temporalmente el sitio de producción no presentaba 
		  pestañas Anexos ni Etiquetas 
		* En conteo se  quitó expulsión. Se desagregó por 
		  Departamento.  Se quitó columna "Beneficiario". 
		* Al ver el resumen de un caso se eliminó 
		  "Fecha desplazamiento emb"
		* Un administrador de oficina no debe poder 
		  editar/eliminar usuarios que no son de su oficina
		* Un administrador de oficina no debe poder cambiar 
		  su rol a administrador 
		* En el listado de casos el título decía "Asesor SJR"
		  y se cambio por "Sistematizado por"
		

		  

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


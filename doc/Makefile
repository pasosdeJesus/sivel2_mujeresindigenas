# Reglas para generar HTML, PostScript y PDF de basico_adJ
# Basadas en infraestructura de dominio público de repasa
#   (http://structio.sourceforge.net/repasa)

include Make.inc

# Variables requeridas por comdocbook.mak

EXT_DOCBOOK=xdbk

FUENTESDB=introduccion.xdbk recursos_humanos.xdbk infraestructura_tecnologica.xdbk uso.xdbk listado_de_casos.xdbk ingresos.xdbk administracion.xdbk novedades.xdbk creditos.xdbk bibliografia.xdbk

SOURCES=$(PROYECTO).$(EXT_DOCBOOK) $(FUENTESDB)
# Listado de fuentes XML. Preferiblmente en el orden de inclusión.

IMAGES= img/anexos.png img/autenticacion.png img/aviso.png img/editar_caso.png img/ej-botones.png img/ej-campos.png img/ej-pestanas.png img/estados_civiles.png img/etiquetas.png img/fuentes.png img/lista_de_casos.png img/menu_prin.png img/menu_principal.png img/nivel6.png img/nuevo_estado_civil.png img/nuevo_usuario.png img/seleccion_unica.png img/selmultiple.png img/selunica.png img/tablas_basicas.png img/usuario.png img/victima.png

# Listado de imagenes, preferiblemente en formato PNG

HTML_DIR=../public/mujeresindigenas/sivel2/doc/
# Directorio en el que se generará información en HTML (con reglas por defecto)

HTML_TARGET=$(HTML_DIR)/index.html
# Nombre del HTML principal (debe coincidir con el especificado en estilohtml.xsl)

XSLT_HTML=estilohtml.xsl
# Hoja XSLT para generar HTML con regla por defecto

PRINT_DIR=imp
# Directorio en el que se genera PostScript y PDF en reglas por defecto

DSSSL_PRINT=estilo.dsl\#print
# Hoja de estilo DSSSL para generar TeX en reglas por defecto

DSSSL_HTML=estilo.dsl\#html
# Hoja de estilo DSSSL para generar HTML en reglas por defecto

OTHER_HTML=

PRECVS=guias/

INDEX=genindice.$(EXT_DOCBOOK)
# Si habrá un índice, nombre del archivo con el que debe generarse (incluirlo al final del documento).


# Variables requeridas por comdist.mk

GENDIST=Derechos.txt $(SOURCES) $(IMAGES)
# Dependencias por cumplir antes de generar distribución

ACTHOST=git@github.com:pasosdeJesus/
# Sitio en Internet donde actualizar. Método indicado por $(ACT_PROC) de confv.sh

ACTDIR=basico_adJ
# Directorio en $(ACTHOST) por actualizar

#USER=$(LOGNAME),structio
# Usuario en $(ACTHOST).  Si es el mismo que en la máquina local comentar.

GENACT=ghtodo $(PROYECTO)-$(PRY_VERSION)_html.tar.gz $(PRINT_DIR)/$(PROYECTO)-$(PRY_VERSION).ps.gz $(PRINT_DIR)/$(PROYECTO)-$(PRY_VERSION).pdf 
# Dependencias por cumplir antes de actualizar sitio en Internet al publicar

FILESACT=$(PROYECTO)-$(PRY_VERSION).tar.gz $(PROYECTO)-$(PRY_VERSION)_html.tar.gz $(HTML_DIR)/* #$(PRINT_DIR)/$(PROYECTO)-$(PRY_VERSION).ps.gz $(PRINT_DIR)/$(PROYECTO)-$(PRY_VERSION).pdf 
# Archivos que se debe actualizar en sitio de Internet cuando se publica

all: $(HTML_TARGET) #$(PRINT_DIR)/$(PROYECTO).ps $(PRINT_DIR)/$(PROYECTO).pdf

cvstodo: distcvs 
	rm -rf $(PROYECTO)-$(PRY_VERSION)
	tar xvfz $(PROYECTO)-$(PRY_VERSION).tar.gz
	(cd $(PROYECTO)-$(PRY_VERSION); ./conf.sh; make $(PROYECTO)-$(PRY_VERSION)_html.tar.gz)
	cp $(PROYECTO)-$(PRY_VERSION)/$(PROYECTO)-$(PRY_VERSION)_html.tar.gz .


ghtodo: distgh
	(cd $(PROYECTO)-$(PRY_VERSION); ./conf.sh; make $(PROYECTO)-$(PRY_VERSION)_html.tar.gz)
	cp $(PROYECTO)-$(PRY_VERSION)/$(PROYECTO)-$(PRY_VERSION)_html.tar.gz .

repasa:
	DEF=$(PROYECTO).def CLA=$(PROYECTO).cla SEC=$(PROYECTO).sec DESC="Información extraida de: $(PROYECTO) $(PRY_VERSION)" FECHA="$(FECHA_ACT)" BIBLIO="$(URLSITE)" TIPO_DERECHOS="Dominio público" TIEMPO_DERECHOS="$(MES_ACT)" DERECHOS="Información cedida al dominio público. Sin garantías." AUTORES="Vladimir Támara" IDSIGNIFICADO="adJ_basico" $(AWK) -f herram/db2rep $(SOURCES)

# Para usar DocBook
include herram/comdocbook.mak

# Para crear distribución de fuentes y publicar en Internet
include herram/comdist.mak

# Elimina hasta configuración
limpiadist: limpiamas
	rm -f confv.sh confv.ent Make.inc personaliza.ent
	rm -rf $(HTML_DIR)
	rm -rf $(PRINT_DIR)

# Elimina archivos generables
limpiamas: limpia
	rm -f img/*.eps img/*.ps
	rm -f $(PROYECTO)-$(PRY_VERSION).tar.gz
	rm -f genindice.xdbk genindice.xdbk.m genindice.xml.m HTML.index.m
	rm -rf $(PROYECTO)-$(PRY_VERSION)
	rm -rf $(PROYECTO)_gh-pages
	rm -f $(INDEX).xdbk $(INDEX).xdbk.m $(INDEX).xml.m HTML.index.m
	rm -f confaux.sed indice.xdbk.m confv.ent


# Elimina backups y archivos temporales
limpia:
	rm -f *bak *~ *.tmp confaux.tmp $(PROYECTO)-$(PRY_VERSION)_html.tar.gz
	rm -f $(PROYECTO)-4.1.*


Derechos.txt: $(PROYECTO).$(EXT_DOCBOOK)
	make html/index.html
	$(W3M) %(W3M_OPT) -dump html/index.html | awk -f herram/conthtmldoc.awk > Derechos.txt

instala:
	@mkdir -p $(DESTDIR)$(INSDOC)/img/
	install html/*html $(DESTDIR)$(INSDOC)
	install html/img/*png $(DESTDIR)$(INSDOC)/img/
	if (test -f $(PRINT_DIR)/$(PROYECTO).ps) then { \
		install imp/*ps $(DESTDIR)$(INSDOC);\
	} fi;

xfe.xdbk.pre: /usr/ports/mystuff/x11/xfe/files/es_CO.po
	perl -f herram/ayudaxfe2db.pl /usr/ports/mystuff/x11/xfe/files/es_CO.po > xfe.xdbk.pre


infoversion.ent:
	if (test -f ../servidor_adJ/infoversion.ent) then { \
		cp ../servidor_adJ/infoversion.ent .; \
	} fi;

#PANDOC=/home/vtamara/.cabal/bin/pandoc 

#introduccion.xdbk: introduccion.md

.SUFFIXES: .md .xdbk
.md.xdbk:
	mkdir -p tmp
	$(PANDOC) -t docbook -o tmp/$@ $<
	sed -e "s/<link linkend=\"\([^\"]*\)\">xref<\/link>/<xref linkend=\"\1\"\/>/g" tmp/$@ > $@

#contenido.xdbk: $(FUENTESMD)
#	$(PANDOC) -t docbook -o pre-contenido.xdbk metadatos.yaml $(FUENTESMD)
#	sed -e "s/<link linkend=\"\([^\"]*\)\">xref<\/link>/<xref linkend=\"\1\"\/>/g" pre-contenido.xdbk > contenido.xdbk

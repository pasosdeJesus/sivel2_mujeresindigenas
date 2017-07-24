class PlantillasIniciales < ActiveRecord::Migration[5.1]
  def up
    execute <<-SQL
    DELETE FROM heb412_gen_campoplantillahcm WHERE plantillahcm_id IN ('1', '2', '3');
    DELETE FROM heb412_gen_plantillahcm WHERE id IN ('1', '2', '3');
--ACIN

INSERT INTO heb412_gen_plantillahcm (id, ruta, descripcion, fuente, licencia, vista, nombremenu, filainicial, oficina_id) VALUES (1, 'plantilla_ACIN_observatorio_DH.ods', 'Listado con campos privados ACIN', 'Anita Linares', '', 'Caso', 'Listado con campos privados ACIN', 5, 104);


INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'caso_id', 'A');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'organizacion', 'B');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'consecutivo_organizacion', 'C');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'consentimiento_priv_acin', 'D');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'fecha_creacion', 'E');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'fecha_actualizacion', 'F');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'sistematizado_por', 'G');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'fecha_doc_terreno', 'H');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'doc_terreno_por', 'I');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'estados_caso', 'J');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'acompanamientos_caso', 'K');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'fuente1_nombre', 'L');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'fuente1_fecha', 'M');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'fuente1_detalle', 'N');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_nombres_priv_acin', 'O');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_apellidos_priv_acin', 'P');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_identificacion_priv_acin', 'Q');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_anionac', 'R');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_mesnac', 'S');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_dianac', 'T');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_edaddocumentacion', 'U');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_rangoedaddocumentacion', 'V');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_departamentonac', 'W');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_municipionac', 'X');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_resguardonac', 'Y');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_comunidadnac', 'Z');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_departamentores_priv_acin', 'AA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_municipiores_priv_acin', 'AB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_resguardores_priv_acin', 'AC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_comunidadres_priv_acin', 'AD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_numhijos_priv_acin', 'AE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_idiomas_priv_acin', 'AF');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_etnia', 'AG');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_estadocivil', 'AH');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_ultgreducacionord', 'AI');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_educacionpropia', 'AJ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_carnetsalud', 'AK');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_religion_priv_acin', 'AL');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_comogeneraingresos_priv_acin', 'AM');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_tienetierra_priv_acin', 'AN');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_areatierra_priv_acin', 'AO');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_sexo', 'AP');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_incluidoruv', 'AQ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_cabezahogar', 'AR');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_liderazgocomunidad', 'AS');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'victima_tipoliderazgo_priv_acin', 'AT');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_anio', 'AU');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_mes', 'AV');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_dia', 'AW');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_diasemana', 'AX');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_departamento', 'AY');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_municipio', 'AZ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_resguardo', 'BA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_comunidadvereda', 'BB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_numvecesantes', 'BC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_relacionadoconconflicto', 'BD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_descripcion_priv_acin', 'BE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_relacionesprvic_priv_acin', 'BF');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_presponsables', 'BG');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_hechosvictimizantes', 'BH');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_testigo', 'BI');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_tiposafectaciones', 'BJ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_afectacionesindividual_priv_acin', 'BK');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_afectacionesfamiliar_priv_acin', 'BL');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_tiposapoyos', 'BM');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_afectacionesfisicas_priv_acin', 'BN');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_actividadesdejarondehacer_priv_acin', 'BO');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_actividadesdejarondehacer_priv_acin', 'BP');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_afectacionaotrapersona_priv_acin', 'BQ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_acompanamientosquenecesita', 'BR');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_telcontacto_priv_acin', 'BS');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_situacionderiesgo', 'BT');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_antequienmedidas', 'BU');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_medidasrecibidas', 'BV');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_denuncia', 'BW');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_denunciaante', 'BX');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_aniodenuncia', 'BY');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_mesdenuncia', 'BZ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_diadenuncia', 'CA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_avancesdelcaso_priv_acin', 'CB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_etapadelproceso_priv_acin', 'CC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_harecibidoreparacion_priv_acin', 'CD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_cualreparacion_priv_acin', 'CE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_sancionadovictimario_priv_acin', 'CF');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_motivosnodenuncia', 'CG');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_valoracionjusticia', 'CH');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_quisieradenunciar', 'CI');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_compromisosadquiridos_priv_acin', 'CJ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('1', 'evento_observaciones_priv_acin', 'CK');

-- COMUN

INSERT INTO heb412_gen_plantillahcm (id, ruta, descripcion, fuente, licencia, vista, nombremenu, filainicial, oficina_id) VALUES (2, 'plantilla_comun_observatorio_DH.ods', 'Listado con campos comunes', 'Anita Linares', '', 'Caso', 'Listado con campos comunes', 5, NULL);

INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'caso_id', 'A');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'organizacion', 'B');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'consecutivo_organizacion', 'C');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'fecha_creacion', 'D');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'fecha_actualizacion', 'E');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'sistematizado_por', 'F');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'fecha_doc_terreno', 'G');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'doc_terreno_por', 'H');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'estados_caso', 'I');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'acompanamientos_caso', 'J');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'fuente1_nombre', 'K');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'fuente1_fecha', 'L');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'fuente1_detalle', 'M');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_anionac', 'N');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_mesnac', 'O');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_dianac', 'P');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_edaddocumentacion', 'Q');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_rangoedaddocumentacion', 'R');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_departamentonac', 'S');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_municipionac', 'T');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_resguardonac', 'U');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_comunidadnac', 'V');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_etnia', 'W');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_estadocivil', 'X');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_ultgreducacionord', 'Y');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_educacionpropia', 'Z');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_carnetsalud', 'AA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_sexo', 'AB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_incluidoruv', 'AC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_cabezahogar', 'AD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'victima_liderazgocomunidad', 'AE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_anio', 'AF');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_mes', 'AG');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_dia', 'AH');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_diasemana', 'AI');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_departamento', 'AJ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_municipio', 'AK');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_resguardo', 'AL');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_comunidadvereda', 'AM');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_numvecesantes', 'AN');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_relacionadoconconflicto', 'AO');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_presponsables', 'AP');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_hechosvictimizantes', 'AQ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_testigo', 'AR');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_tiposafectaciones', 'AS');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_tiposapoyos', 'AT');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_acompanamientosquenecesita', 'AU');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_situacionderiesgo', 'AV');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_antequienmedidas', 'AW');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_medidasrecibidas', 'AX');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_denuncia', 'AY');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_denunciaante', 'AZ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_aniodenuncia', 'BA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_mesdenuncia', 'BB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_diadenuncia', 'BC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_motivosnodenuncia', 'BD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_valoracionjusticia', 'BE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('2', 'evento_quisieradenunciar', 'BF');

-- OIK

INSERT INTO heb412_gen_plantillahcm (id, ruta, descripcion, fuente, licencia, vista, nombremenu, filainicial, oficina_id) VALUES (3, 'plantilla_OIK_observatorio_DH.ods', 'Listado con campos privados OIK', 'Anita Linares', '', 'Caso', 'Listado con campos privados OIK', 5, 103);

INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'caso_id', 'A');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'organizacion', 'B');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'consecutivo_organizacion', 'C');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'fecha_creacion', 'D');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'fecha_actualizacion', 'E');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'sistematizado_por', 'F');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'fecha_doc_terreno', 'G');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'doc_terreno_por', 'H');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'estados_caso', 'I');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'acompanamientos_caso', 'J');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'fuente1_nombre', 'K');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'fuente1_fecha', 'L');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'fuente1_detalle', 'M');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_anionac', 'N');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_mesnac', 'O');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_dianac', 'P');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_edaddocumentacion', 'Q');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_rangoedaddocumentacion', 'R');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_departamentonac', 'S');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_municipionac', 'T');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_resguardonac', 'U');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_comunidadnac', 'V');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_etnia', 'W');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_estadocivil', 'X');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_ultgreducacionord', 'Y');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_educacionpropia', 'Z');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_carnetsalud', 'AA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_sexo', 'AB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_incluidoruv', 'AC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_cabezahogar', 'AD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'victima_liderazgocomunidad', 'AE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_anio', 'AF');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_mes', 'AG');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_dia', 'AH');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_diasemana', 'AI');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_departamento', 'AJ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_municipio', 'AK');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_resguardo', 'AL');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_comunidadvereda', 'AM');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_numvecesantes', 'AN');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_relacionadoconconflicto', 'AO');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_presponsables', 'AP');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_hechosvictimizantes', 'AQ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_testigo', 'AR');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_tiposafectaciones', 'AS');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_tiposapoyos', 'AT');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_acompanamientosquenecesita', 'AU');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_situacionderiesgo', 'AV');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_antequienmedidas', 'AW');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_medidasrecibidas', 'AX');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_denuncia', 'AY');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_denunciaante', 'AZ');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_aniodenuncia', 'BA');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_mesdenuncia', 'BB');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_diadenuncia', 'BC');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_motivosnodenuncia', 'BD');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_valoracionjusticia', 'BE');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_quisieradenunciar', 'BF');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_seguimientojudicial_priv_oik', 'BG');
INSERT INTO heb412_gen_campoplantillahcm (plantillahcm_id, nombrecampo, columna) VALUES ('3', 'evento_seguimientopsicosocial_priv_oik', 'BH');


-- Indices

SELECT pg_catalog.setval('heb412_gen_plantillahcm_id_seq', MAX(id)) FROM heb412_gen_plantillahcm;
SELECT pg_catalog.setval('heb412_gen_campoplantillahcm_id_seq', MAX(id)) FROM heb412_gen_campoplantillahcm;
    SQL
  end
  def down
    execute <<-SQL
    DELETE FROM heb412_gen_campoplantillahcm WHERE plantillahcm_id IN ('1', '2', '3');
    DELETE FROM heb412_gen_plantillahcm WHERE id IN ('1', '2', '3');
    SQL
  end
end



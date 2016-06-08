-- Novedades a tablas basicas de sivel2_gen

      
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET search_path = public, pg_catalog;


--
-- Data for Name: sip_fuenteprensa; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sip_fuenteprensa SET fechadeshabilitacion='2016-05-05' WHERE id<100;

INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (101, 'VÍCTIMA', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (102, 'FAMILIAR', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, 'OTRA PERSONA', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (104, 'MEDIO DE COMUNICACIÓN', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (105, 'REMISIÓN INSTITUCIONAL', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (106, 'REMISIÓN DE OTRO CABILDO', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO sip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (107, 'OTRO', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);


--
-- Name: sip_fuenteprensa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sip_fuenteprensa_id_seq', 107, true);


--
-- Data for Name: sip_oficina; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (101, 'CODACOP', '2016-02-29', NULL, '2016-03-01 00:59:37.519474', '2016-03-01 00:59:37.519474', '');
INSERT INTO sip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (102, 'ONIC', '2016-02-29', NULL, '2016-03-01 00:59:51.472342', '2016-03-01 00:59:51.472342', '');
INSERT INTO sip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, 'OIK', '2016-02-29', NULL, '2016-03-01 01:00:11.831346', '2016-03-01 01:00:11.831346', '');
INSERT INTO sip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (104, 'ACIN', '2016-02-29', NULL, '2016-03-01 01:00:25.009325', '2016-03-01 01:00:25.009325', '');


--
-- Name: sip_oficina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sip_oficina_id_seq', 104, true);

--
-- Data for Name: sivel2_gen_tviolencia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sivel2_gen_tviolencia (id, nombre, nomcorto, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES ('M', 'MUJERES INDÍGENAS', 'MIND', '2016-06-08', NULL, NULL, NULL, NULL);

--
-- Data for Name: sivel2_gen_supracategoria; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sivel2_gen_supracategoria (codigo, nombre, fechacreacion, fechadeshabilitacion, id_tviolencia, created_at, updated_at, observaciones, id) VALUES (1, 'MUJERES INDÍGENAS', '2016-06-08', NULL, 'M', NULL, NULL, NULL, 400);

--
-- Data for Name: sivel2_gen_categoria; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_categoria SET fechadeshabilitacion='2016-06-07' WHERE
	id NOT IN ( '79', '75', '41', '3009') AND (id<4000 OR id>4999);

INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4000, 'ACCESO CARNAL - VIOLACIÓN (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '421', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4001, 'ACTO SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '426', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4002, 'ACOSO SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4003, 'PROSTITUCIÓN FORZADA O ESCLAVITUD SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '423', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4004, 'EXPLOTACIÓN SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4005, 'ABORTO FORZADO (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '427', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4006, 'ESTERILIZACIÓN FORZADA O PLANIFICACIÓN FORZADA (VIOLENCIA SEXUAL)', '2010-04-17', NULL, NULL, NULL, 'I', NULL, NULL, '424', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4007, 'EMBARAZO FORZADO (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '422', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4008, 'MATRIMONIO FORZADO (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4009, 'MUTILACIÓN GENITAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4100, 'LESIONES PERSONALES (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '43', 400);
UPDATE sivel2_gen_categoria SET nombre = 'LESIONES PERSONALES (VIOLENCIA FÍSICA)' WHERE id='43';
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4101, 'ASESINATO (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '40', 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4102, 'FEMINICIDIO (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4103, 'TORTURA (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '47', 400);

INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4200, 'ESCLAVITUD DOMÉSTICA (VIOLENCIA ECONÓMICA/FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4201, 'CONTROL DEL DINERO (VIOLENCIA ECONÓMICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4202, 'ABANDONO (VIOLENCIA ECONÓMICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4203, 'DESPROTECCIÓN E INASISTENCIA (VIOLENCIA ECONÓMICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4300, 'MALTRATO PSICOLÓGICO O EMOCIONAL (VIOLENCIA PSICOLÓGICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4301, 'AMENAZA (VIOLENCIA PSICOLÓGICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '45', 400);

INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4400, 'TRATA DE PERSONAS', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);


INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4500, 'DETENCIÓN ARBITRARIA', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '14', 400);
--INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (79, 'DESAPARICIÓN', '2002-07-23', '2002-07-23', NULL, NULL, 'I', NULL, NULL, NULL, 4);
--INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (75, 'RECLUTAMIENTO DE MENORES', '2000-08-09', NULL, 20, NULL, 'I', NULL, NULL, NULL, 4);

--INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (3009, 'DESPLAZAMIENTO FORZADO', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 2);

--INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (41, 'SECUESTRO', '2000-08-09', NULL, 23, NULL, 'I', NULL, NULL, NULL, 2);

INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4501, 'CONFINAMIENTO', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 2);


--
-- Data for Name: sivel2_gen_escolaridad; Type: TABLE DATA; Schema: public; Owner: -
-- 

UPDATE sivel2_gen_escolaridad SET nombre='UNIVERSITARIA COMPLETA' where id='5';
UPDATE sivel2_gen_escolaridad SET nombre='UNIVERSITARIA INCOMPLETA' where id='11';

INSERT INTO sivel2_gen_escolaridad (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, 'OTROS ESPACIOS DE FORMACIÓN', '2016-03-02', NULL, '2016-03-03 01:19:12.051802', '2016-03-03 01:19:12.051802', ''); 

--
-- Name: sivel2_gen_escolaridad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sivel2_gen_escolaridad_id_seq', 103, true);


--
-- Data for Name: sivel2_gen_etnia; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_etnia SET fechadeshabilitacion='2016-06-07' WHERE id IN
('7', '9', '64', '65', '15', '66', '71', '70', '72', '73', '102', '27', '103', 
	'28', '105', '79', '82', '85', '60', '90', '97', '51', '101');
UPDATE sivel2_gen_etnia SET nombre='CARAPANA' WHERE id='31';
UPDATE sivel2_gen_etnia SET nombre='CURRIPAKO' WHERE id='33';
UPDATE sivel2_gen_etnia SET nombre='KOREGUAJE' WHERE id='18';
UPDATE sivel2_gen_etnia SET nombre='KOKONUCO' WHERE id='69';
UPDATE sivel2_gen_etnia SET nombre='KOFAN' WHERE id='17';
UPDATE sivel2_gen_etnia SET nombre='EMBERA DÓBIDA' WHERE id='23';
UPDATE sivel2_gen_etnia SET nombre='EPERARA SIAPIDARA' WHERE id='76';
UPDATE sivel2_gen_etnia SET nombre='EMBERA EYABIDA – EMBERA KATÍO' WHERE id='74';
UPDATE sivel2_gen_etnia SET nombre='GUANACO' WHERE id='26';
UPDATE sivel2_gen_etnia SET nombre='HITNÜ- MACAGUÁN' WHERE id='33';
UPDATE sivel2_gen_etnia SET nombre='KAMËNTSÁ' WHERE id='14';
UPDATE sivel2_gen_etnia SET nombre='MAKAGUAJE' WHERE id='35';
UPDATE sivel2_gen_etnia SET nombre='MAKUNA' WHERE id='34';
UPDATE sivel2_gen_etnia SET nombre='MUINA MURUI' WHERE id='81';
UPDATE sivel2_gen_etnia SET nombre='PASTO' WHERE id='40';
UPDATE sivel2_gen_etnia SET nombre='QUILLACINGA' WHERE id='89';
UPDATE sivel2_gen_etnia SET nombre='TAIWANO-EDURIA' WHERE id='92';
UPDATE sivel2_gen_etnia SET nombre='TAMA DUJO' WHERE id='93';
UPDATE sivel2_gen_etnia SET nombre='TIKUNA' WHERE id='96';
UPDATE sivel2_gen_etnia SET nombre='TUKANO' WHERE id='50';
UPDATE sivel2_gen_etnia SET nombre='TUYUKA' WHERE id='98';
UPDATE sivel2_gen_etnia SET nombre='WIWA' WHERE id='54';
UPDATE sivel2_gen_etnia SET nombre='YUKUNA' WHERE id='58';
UPDATE sivel2_gen_etnia SET nombre='ZENÚ-SENÚ' WHERE id='58';
UPDATE sivel2_gen_etnia SET nombre='MESTIZA' WHERE id='2';
UPDATE sivel2_gen_etnia SET nombre='BLANCA' WHERE id='3';


INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (111, 'KANKUAMO', 'Pueblo de la Sierra Nevada', '2016-02-29', NULL, '2016-03-01 01:45:17.392312', '2016-05-05 19:59:17.373387', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (112, 'AMBALÓ', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:15:33.967956', '2016-05-05 19:15:33.967956', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (113, 'GUANE', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:16:19.543235', '2016-05-05 19:16:19.543235', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (114, 'GUANADULE-TULE-CUNA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:17:12.006747', '2016-05-05 19:17:12.006747', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (115, 'HUPDË-HUPDAH-HUPDU', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:18:25.920845', '2016-05-05 19:18:25.920845', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (116, 'IJKU', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:18:58.208147', '2016-05-05 19:18:58.208147', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (117, 'JIW', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:20:01.638311', '2016-05-05 19:20:01.638311', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (118, 'JUHUP-YUJU', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:23:24.36791', '2016-05-05 19:23:24.36791', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (119, 'KAKUA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:23:56.791321', '2016-05-05 19:23:56.791321', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (120, 'KARIJONA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:24:23.737231', '2016-05-05 19:24:23.737231', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (121, 'KAWIYARI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:29:17.154062', '2016-05-05 19:29:17.154062', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (122, 'QUICHUA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:29:39.481066', '2016-05-05 19:29:39.481066', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (123, 'QUIZGÓ', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:30:04.8679', '2016-05-05 19:30:04.8679', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (124, 'WIPIJIWI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:30:25.497195', '2016-05-05 19:30:25.497195', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (125, 'YAMALERO', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:30:54.638141', '2016-05-05 19:30:54.638141', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (126, 'MAIBÉN MASIWARE-PODIPODI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:21:09.758125', '2016-05-05 22:21:09.758125', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (127, 'MAPAYERRI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:21:33.333111', '2016-05-05 22:21:33.333111', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (128, 'NUTABE', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:21:53.247968', '2016-05-05 22:21:53.247968', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (129, 'PUBENSE', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:22:14.306931', '2016-05-05 22:22:14.306931', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (130, 'TUBÚ-SIRIANO', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:22:33.647579', '2016-05-05 22:22:33.647579', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (131, 'YARI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:22:52.512255', '2016-05-05 22:22:52.512255', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (132, 'YARURO', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:23:13.307858', '2016-05-05 22:23:13.307858', '');
INSERT INTO sivel2_gen_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (133, 'YERAL', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:23:32.961683', '2016-05-05 22:23:32.961683', '');


--
-- Name: sivel2_gen_etnia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sivel2_gen_etnia_id_seq', 133, true);



--
-- Data for Name: sivel2_gen_presponsable; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_presponsable SET fechadeshabilitacion='2016-06-07' WHERE 
	id NOT IN ('1', '14', '2', '25', '26', '27', '28', '35', 
		'36', '37', '4', '7', '5');


-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'ESTADO COLOMBIANO', 39, '2001-01-30', NULL, NULL, NULL, NULL); --INSTITUCIÓN ESTATAL

UPDATE sivel2_gen_presponsable SET nombre='INSTITUCIÓN ESTATAL' WHERE id='1';

-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (14, 'PARAMILITARES', 39, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'FUERZA PUBLICA', 1, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (25, 'GUERRILLA', 40, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (27, 'FARC-EP', 25, '2001-01-30', NULL, NULL, NULL, NULL);
--INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (28, 'ELN', 25, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (35, 'SIN INFORMACIÓN', NULL, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (36, 'OTROS', NULL, '2001-06-13', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (37, 'COMBATIENTES', NULL, '2004-01-20', NULL, NULL, NULL, NULL); -- ACTOR ARMADO NO IDENTIFICADO
UPDATE sivel2_gen_presponsable SET nombre='ACTOR ARMADO NO IDENTIFICADO' WHERE id='37';

-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'EJERCITO', 2, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'POLICÍA', 2, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'ARMADA', 2, '2001-01-30', NULL, NULL, NULL, NULL); --INFANTERIA DE MARINA
-- INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (26, 'MILICIANOS', 25, '2001-01-30', NULL, NULL, '2016-03-03 00:44:26.740055', '');

INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (105, 'FAMILIA', NULL, '2016-03-02', NULL, '2016-03-03 00:39:49.41372', '2016-03-03 00:39:49.41372', '');
INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (106, 'VINCULADO AL NARCOTRÁFICO', NULL, '2016-03-02', NULL, '2016-03-03 00:43:16.701619', '2016-03-03 00:43:16.701619', '');
INSERT INTO sivel2_gen_presponsable (id, nombre, papa, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (107, 'ESMAD', NULL, '2016-03-02', NULL, '2016-03-03 00:46:33.569338', '2016-03-03 00:46:33.569338', '');


--
-- Name: sivel2_gen_presponsable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sivel2_gen_presponsable_id_seq', 111, true);



--
-- Data for Name: sivel2_gen_rangoedad; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_rangoedad SET fechadeshabilitacion='2016-03-17' WHERE id<100 
	AND id<>6;

INSERT INTO sivel2_gen_rangoedad (id, nombre, rango, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (102, '0-9 NIÑAS/NIÑOS', '0-9 NIÑAS/NIÑOS', 0, 9, '2016-03-17', NULL, '2016-03-17 12:06:06.201856', '2016-03-21 18:30:34.222152', '');
INSERT INTO sivel2_gen_rangoedad (id, nombre, rango, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, '10-18 ADOLESCENTES', '10-18 ADOLESCENTES', 10, 18, '2016-03-17', NULL, '2016-03-17 12:06:39.927169', '2016-03-17 12:07:44.365878', '');
INSERT INTO sivel2_gen_rangoedad (id, nombre, rango, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (104, '19-24 JÓVENES', '19-24 JÓVENES', 19, 24, '2016-03-17', NULL, '2016-03-17 12:07:13.059893', '2016-03-17 12:07:58.964103', '');
INSERT INTO sivel2_gen_rangoedad (id, nombre, rango, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (105, '25-59 ADULTAS', '25-59 ADULTAS', 25, 59, '2016-03-17', NULL, '2016-03-17 12:10:13.685235', '2016-03-17 12:10:13.685235', '');
INSERT INTO sivel2_gen_rangoedad (id, nombre, rango, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (106, '60-125 AD. MAYORES', '60-125 AD. MAYORES', 60, 125, '2016-03-17', NULL, '2016-03-17 12:37:25.707854', '2016-03-17 12:37:25.707854', '');


--
-- Name: sivel2_gen_rangoedad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sivel2_gen_rangoedad_id_seq', 106, true);

--
-- Data for Name: sivel2_sjr_idioma; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_sjr_idioma SET fechadeshabilitacion='2016-06-07' 
	WHERE id NOT IN ('0', '1', '10', '100', '101');

-- INSERT INTO sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2014-02-18', NULL, NULL, NULL, NULL);
-- INSERT INTO sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'ESPAÑOL', '2014-02-18', NULL, NULL, NULL, NULL);
INSERT INTO sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (100, 'NASA YUWE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
INSERT INTO sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (101, 'ESPAÑOL Y NASA YUWE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);


--
-- Name: sivel2_sjr_idioma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sivel2_sjr_idioma_id_seq', 101, true);



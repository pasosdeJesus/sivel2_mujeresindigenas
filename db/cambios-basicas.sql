-- Novedades a tablas basicas de sivel2_gen

      
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET search_path = public, pg_catalog;


--
-- Data for Name: msip_fuenteprensa; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE msip_fuenteprensa SET fechadeshabilitacion=NOW() WHERE id<100;

INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (101, 'VÍCTIMA', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (102, 'FAMILIAR', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, 'OTRA PERSONA', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (104, 'MEDIO DE COMUNICACIÓN', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (105, 'REMISIÓN INSTITUCIONAL', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (106, 'REMISIÓN DE OTRO CABILDO', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);
INSERT INTO public.msip_fuenteprensa (id, nombre, tfuente, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (107, 'OTRO', NULL, '2016-05-05', NULL, '2016-05-05 00:00:00', NULL, NULL);

SELECT pg_catalog.setval('public.msip_fuenteprensa_id_seq', 107, true);


--
-- Data for Name: msip_oficina; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.msip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (101, 'CODACOP', '2016-02-29', NULL, '2016-03-01 00:59:37.519474', '2016-03-01 00:59:37.519474', '');
INSERT INTO public.msip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (102, 'ONIC', '2016-02-29', NULL, '2016-03-01 00:59:51.472342', '2016-03-01 00:59:51.472342', '');
INSERT INTO public.msip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, 'OIK', '2016-02-29', NULL, '2016-03-01 01:00:11.831346', '2016-03-01 01:00:11.831346', '');
INSERT INTO public.msip_oficina (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (104, 'ACIN', '2016-02-29', NULL, '2016-03-01 01:00:25.009325', '2016-03-01 01:00:25.009325', '');


SELECT pg_catalog.setval('public.msip_oficina_id_seq', 104, true);

--
-- Data for Name: sivel2_gen_tviolencia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sivel2_gen_tviolencia (id, nombre, nomcorto, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES ('M', 'MUJERES INDÍGENAS', 'MIND', '2016-06-08', NULL, NULL, NULL, NULL);

--
-- Data for Name: sivel2_gen_supracategoria; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sivel2_gen_supracategoria (codigo, nombre, fechacreacion, fechadeshabilitacion, tviolencia_id, created_at, updated_at, observaciones, id) VALUES (1, 'MUJERES INDÍGENAS', '2016-06-08', NULL, 'M', NULL, NULL, NULL, 400);

--
-- Data for Name: sivel2_gen_categoria; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_categoria SET fechadeshabilitacion=NOW() WHERE
id NOT IN ( '75', '41', '3009') AND (id<4000 OR id>4999);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4000, 'ACCESO CARNAL - VIOLACIÓN (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '421', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4001, 'ACTO SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '426', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4002, 'ACOSO SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4003, 'PROSTITUCIÓN FORZADA O ESCLAVITUD SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '423', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4004, 'EXPLOTACIÓN SEXUAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4005, 'ABORTO FORZADO (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '427', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4006, 'ESTERILIZACIÓN FORZADA O PLANIFICACIÓN FORZADA (VIOLENCIA SEXUAL)', '2010-04-17', NULL, NULL, NULL, 'I', NULL, NULL, '424', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4007, 'EMBARAZO FORZADO (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '422', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4008, 'MATRIMONIO FORZADO (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4009, 'MUTILACIÓN GENITAL (VIOLENCIA SEXUAL)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4100, 'LESIONES PERSONALES (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '43', 400);
UPDATE sivel2_gen_categoria SET nombre = 'LESIONES PERSONALES (VIOLENCIA FÍSICA)' WHERE id='43';
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4101, 'ASESINATO (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '40', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4102, 'FEMINICIDIO (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4103, 'TORTURA (VIOLENCIA FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '47', 400);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4200, 'ESCLAVITUD DOMÉSTICA (VIOLENCIA ECONÓMICA/FÍSICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4201, 'CONTROL DEL DINERO (VIOLENCIA ECONÓMICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4202, 'ABANDONO (VIOLENCIA ECONÓMICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4203, 'DESPROTECCIÓN E INASISTENCIA (VIOLENCIA ECONÓMICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4300, 'MALTRATO PSICOLÓGICO O EMOCIONAL (VIOLENCIA PSICOLÓGICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4301, 'AMENAZA (VIOLENCIA PSICOLÓGICA)', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '45', 400);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4400, 'TRATA DE PERSONAS', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);


INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4500, 'DETENCIÓN ILEGAL', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, '14', 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4501, 'DESAPARICIÓN FORZADA', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4503, 'PERSECUCIÓN', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4504, 'HERIDO POR MINA ANTIPERSONAL', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);
INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4506, 'MUERTO POR MINA ANTIPERSONAL', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

--INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (75, 'RECLUTAMIENTO DE MENORES', '2000-08-09', NULL, 20, NULL, 'I', NULL, NULL, NULL, 4);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (3009, 'DESPLAZAMIENTO FORZADO', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

--INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (41, 'SECUESTRO', '2000-08-09', NULL, 23, NULL, 'I', NULL, NULL, NULL, 2);

INSERT INTO public.sivel2_gen_categoria (id, nombre, fechacreacion, fechadeshabilitacion, pconsolidado_id, contadaen, tipocat, created_at, updated_at, observaciones, supracategoria_id) VALUES (4505, 'CONFINAMIENTO', '2016-06-07', NULL, NULL, NULL, 'I', NULL, NULL, NULL, 400);

--
-- Data for Name: sivel2_gen_escolaridad; Type: TABLE DATA; Schema: public; Owner: -
-- 

UPDATE sivel2_gen_escolaridad SET nombre='UNIVERSITARIA COMPLETA' where id='5';
UPDATE sivel2_gen_escolaridad SET nombre='UNIVERSITARIA INCOMPLETA' where id='11';

INSERT INTO public.sivel2_gen_escolaridad (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, 'OTROS ESPACIOS DE FORMACIÓN', '2016-03-02', NULL, '2016-03-03 01:19:12.051802', '2016-03-03 01:19:12.051802', ''); 

--
-- Name: sivel2_gen_escolaridad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sivel2_gen_escolaridad_id_seq', 103, true);


--
-- Data for Name: msip_etnia; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE msip_etnia SET fechadeshabilitacion=NOW() WHERE id IN
('7', '9', '64', '65', '15', '66', '71', '70', '72', '73', '102', '27', '103', 
	'28', '105', '79', '82', '85', '60', '90', '97', '51', '101');
UPDATE msip_etnia SET nombre='CARAPANA' WHERE id='31';
UPDATE msip_etnia SET nombre='CURRIPAKO' WHERE id='33';
UPDATE msip_etnia SET nombre='KOREGUAJE' WHERE id='18';
UPDATE msip_etnia SET nombre='KOKONUCO' WHERE id='69';
UPDATE msip_etnia SET nombre='KOFAN' WHERE id='17';
UPDATE msip_etnia SET nombre='EMBERA DÓBIDA' WHERE id='23';
UPDATE msip_etnia SET nombre='EPERARA SIAPIDARA' WHERE id='76';
UPDATE msip_etnia SET nombre='EMBERA EYABIDA – EMBERA KATÍO' WHERE id='74';
UPDATE msip_etnia SET nombre='GUANACO' WHERE id='26';
UPDATE msip_etnia SET nombre='HITNÜ- MACAGUÁN' WHERE id='33';
UPDATE msip_etnia SET nombre='KAMËNTSÁ' WHERE id='14';
UPDATE msip_etnia SET nombre='MAKAGUAJE' WHERE id='35';
UPDATE msip_etnia SET nombre='MAKUNA' WHERE id='34';
UPDATE msip_etnia SET nombre='MUINA MURUI' WHERE id='81';
UPDATE msip_etnia SET nombre='PASTO' WHERE id='40';
UPDATE msip_etnia SET nombre='QUILLACINGA' WHERE id='89';
UPDATE msip_etnia SET nombre='TAIWANO-EDURIA' WHERE id='92';
UPDATE msip_etnia SET nombre='TAMA DUJO' WHERE id='93';
UPDATE msip_etnia SET nombre='TIKUNA' WHERE id='96';
UPDATE msip_etnia SET nombre='TUKANO' WHERE id='50';
UPDATE msip_etnia SET nombre='TUYUKA' WHERE id='98';
UPDATE msip_etnia SET nombre='WIWA' WHERE id='54';
UPDATE msip_etnia SET nombre='YUKUNA' WHERE id='58';
UPDATE msip_etnia SET nombre='ZENÚ-SENÚ' WHERE id='58';
UPDATE msip_etnia SET nombre='MESTIZA' WHERE id='2';
UPDATE msip_etnia SET nombre='BLANCA' WHERE id='3';


INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (111, 'KANKUAMO', 'Pueblo de la Sierra Nevada', '2016-02-29', NULL, '2016-03-01 01:45:17.392312', '2016-05-05 19:59:17.373387', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (112, 'AMBALÓ', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:15:33.967956', '2016-05-05 19:15:33.967956', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (113, 'GUANE', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:16:19.543235', '2016-05-05 19:16:19.543235', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (114, 'GUANADULE-TULE-CUNA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:17:12.006747', '2016-05-05 19:17:12.006747', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (115, 'HUPDË-HUPDAH-HUPDU', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:18:25.920845', '2016-05-05 19:18:25.920845', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (116, 'IJKU', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:18:58.208147', '2016-05-05 19:18:58.208147', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (117, 'JIW', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:20:01.638311', '2016-05-05 19:20:01.638311', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (118, 'JUHUP-YUJU', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:23:24.36791', '2016-05-05 19:23:24.36791', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (119, 'KAKUA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:23:56.791321', '2016-05-05 19:23:56.791321', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (120, 'KARIJONA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:24:23.737231', '2016-05-05 19:24:23.737231', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (121, 'KAWIYARI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:29:17.154062', '2016-05-05 19:29:17.154062', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (122, 'QUICHUA', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:29:39.481066', '2016-05-05 19:29:39.481066', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (123, 'QUIZGÓ', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:30:04.8679', '2016-05-05 19:30:04.8679', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (124, 'WIPIJIWI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:30:25.497195', '2016-05-05 19:30:25.497195', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (125, 'YAMALERO', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 19:30:54.638141', '2016-05-05 19:30:54.638141', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (126, 'MAIBÉN MASIWARE-PODIPODI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:21:09.758125', '2016-05-05 22:21:09.758125', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (127, 'MAPAYERRI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:21:33.333111', '2016-05-05 22:21:33.333111', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (128, 'NUTABE', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:21:53.247968', '2016-05-05 22:21:53.247968', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (129, 'PUBENSE', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:22:14.306931', '2016-05-05 22:22:14.306931', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (130, 'TUBÚ-SIRIANO', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:22:33.647579', '2016-05-05 22:22:33.647579', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (131, 'YARI', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:22:52.512255', '2016-05-05 22:22:52.512255', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (132, 'YARURO', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:23:13.307858', '2016-05-05 22:23:13.307858', '');
INSERT INTO public.msip_etnia (id, nombre, descripcion, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (133, 'YERAL', 'Listado de Mujeres indígenas', '2016-05-05', NULL, '2016-05-05 22:23:32.961683', '2016-05-05 22:23:32.961683', '');


SELECT pg_catalog.setval('public.msip_etnia_id_seq', 133, true);



--
-- Data for Name: sivel2_gen_presponsable; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_presponsable SET fechadeshabilitacion=NOW() WHERE 
id NOT IN ('1', '14', '2', '25', '26', '27', '28', '35', 
	'36', '37', '4', '7', '5', '105', '106', '107', '109', '112', '113');


-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'ESTADO COLOMBIANO', 39, '2001-01-30', NULL, NULL, NULL, NULL); --INSTITUCIÓN ESTATAL

UPDATE sivel2_gen_presponsable SET nombre='INSTITUCIÓN ESTATAL' WHERE id='1';

-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (14, 'PARAMILITARES', 39, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'FUERZA PUBLICA', 1, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (25, 'GUERRILLA', 40, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (27, 'FARC-EP', 25, '2001-01-30', NULL, NULL, NULL, NULL);
--INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (28, 'ELN', 25, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (35, 'SIN INFORMACIÓN', NULL, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (36, 'OTROS', NULL, '2001-06-13', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (37, 'COMBATIENTES', NULL, '2004-01-20', NULL, NULL, NULL, NULL); -- ACTOR ARMADO NO IDENTIFICADO
UPDATE sivel2_gen_presponsable SET nombre='ACTOR ARMADO NO IDENTIFICADO' WHERE id='37';

-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'EJERCITO', 2, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'POLICÍA', 2, '2001-01-30', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'ARMADA', 2, '2001-01-30', NULL, NULL, NULL, NULL); --INFANTERIA DE MARINA
-- INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (26, 'MILICIANOS', 25, '2001-01-30', NULL, NULL, '2016-03-03 00:44:26.740055', '');

INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (105, 'FAMILIA', NULL, '2016-03-02', NULL, '2016-03-03 00:39:49.41372', '2016-03-03 00:39:49.41372', '');
INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (106, 'VINCULADO AL NARCOTRÁFICO', NULL, '2016-03-02', NULL, '2016-03-03 00:43:16.701619', '2016-03-03 00:43:16.701619', '');
INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (107, 'ESMAD', NULL, '2016-03-02', NULL, '2016-03-03 00:46:33.569338', '2016-03-03 00:46:33.569338', '');
INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (109, 'COMUNIDAD', NULL, '2016-03-02', NULL, '2016-03-03 00:46:33.569338', '2016-03-03 00:46:33.569338', '');
INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (112, 'DESMOVILIZADO GUERRILLA', NULL, '2016-03-02', NULL, '2016-03-03 00:46:33.569338', '2016-03-03 00:46:33.569338', '');
INSERT INTO public.sivel2_gen_presponsable (id, nombre, papa_id,fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (113, 'DESMOVILIZADO PARAILITAR', NULL, '2016-03-02', NULL, '2016-03-03 00:46:33.569338', '2016-03-03 00:46:33.569338', '');


SELECT pg_catalog.setval('public.sivel2_gen_presponsable_id_seq', 113, true);



--
-- Data for Name: sivel2_gen_rangoedad; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_gen_rangoedad SET fechadeshabilitacion=NOW() WHERE id<100 
	AND id<>6;

INSERT INTO public.sivel2_gen_rangoedad (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (102, '0-9 NIÑAS/NIÑOS', 0, 9, '2016-03-17', NULL, '2016-03-17 12:06:06.201856', '2016-03-21 18:30:34.222152', '');
INSERT INTO public.sivel2_gen_rangoedad (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (103, '10-18 ADOLESCENTES', 10, 18, '2016-03-17', NULL, '2016-03-17 12:06:39.927169', '2016-03-17 12:07:44.365878', '');
INSERT INTO public.sivel2_gen_rangoedad (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (104, '19-24 JÓVENES', 19, 24, '2016-03-17', NULL, '2016-03-17 12:07:13.059893', '2016-03-17 12:07:58.964103', '');
INSERT INTO public.sivel2_gen_rangoedad (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (105, '25-59 ADULTAS', 25, 59, '2016-03-17', NULL, '2016-03-17 12:10:13.685235', '2016-03-17 12:10:13.685235', '');
INSERT INTO public.sivel2_gen_rangoedad (id, nombre, limiteinferior, limitesuperior, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (106, '60-125 AD. MAYORES', 60, 125, '2016-03-17', NULL, '2016-03-17 12:37:25.707854', '2016-03-17 12:37:25.707854', '');


SELECT pg_catalog.setval('public.sivel2_gen_rangoedad_id_seq', 106, true);

--
-- Data for Name: sivel2_sjr_idioma; Type: TABLE DATA; Schema: public; Owner: -
--

UPDATE sivel2_sjr_idioma SET fechadeshabilitacion=NOW()
	WHERE id NOT IN ('0', '1', '10', '100', '101');

-- INSERT INTO public.sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2014-02-18', NULL, NULL, NULL, NULL);
-- INSERT INTO public.sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'ESPAÑOL', '2014-02-18', NULL, NULL, NULL, NULL);
INSERT INTO public.sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (100, 'NASA YUWE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
INSERT INTO public.sivel2_sjr_idioma (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (101, 'ESPAÑOL Y NASA YUWE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);


SELECT pg_catalog.setval('public.sivel2_sjr_idioma_id_seq', 101, true);



INSERT INTO public.heb412_gen_plantillahcm (id, ruta, fuente, licencia, vista, nombremenu, filainicial, oficina_id) VALUES (1, 'plantilla_ACIN_observatorio_DH.ods', 'Anita Linares', '', 'Caso', 'Listado con campos privados ACIN', 5, 104);
INSERT INTO public.heb412_gen_plantillahcm (id, ruta, fuente, licencia, vista, nombremenu, filainicial, oficina_id) VALUES (2, 'plantilla_comun_observatorio_DH.ods', 'Anita Linares', '', 'Caso', 'Listado con campos comunes', 5, NULL);
INSERT INTO public.heb412_gen_plantillahcm (id, ruta, fuente, licencia, vista, nombremenu, filainicial, oficina_id) VALUES (3, 'plantilla_OIK_observatorio_DH.ods', 'Anita Linares', '', 'Caso', 'Listado con campos privados OIK', 5, 103);



INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1001, 1, 'caso_id', 'A');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1002, 1, 'organizacion', 'B');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1003, 1, 'consecutivo_organizacion', 'C');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1004, 1, 'consentimiento_priv_acin', 'D');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1005, 1, 'fecha_creacion', 'E');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1006, 1, 'fecha_actualizacion', 'F');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1007, 1, 'sistematizado_por', 'G');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1008, 1, 'fecha_doc_terreno', 'H');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1009, 1, 'doc_terreno_por', 'I');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1010, 1, 'estados_caso', 'J');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1011, 1, 'acompanamientos_caso', 'K');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1012, 1, 'fuente1_nombre', 'L');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1013, 1, 'fuente1_fecha', 'M');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1014, 1, 'fuente1_detalle', 'N');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1015, 1, 'victima_nombres_priv_acin', 'O');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1016, 1, 'victima_apellidos_priv_acin', 'P');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1017, 1, 'victima_identificacion_priv_acin', 'Q');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1018, 1, 'victima_anionac', 'R');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1019, 1, 'victima_mesnac', 'S');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1020, 1, 'victima_dianac', 'T');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1021, 1, 'victima_edaddocumentacion', 'U');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1022, 1, 'victima_rangoedaddocumentacion', 'V');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1023, 1, 'victima_departamentonac', 'W');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1024, 1, 'victima_municipionac', 'X');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1025, 1, 'victima_resguardonac', 'Y');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1026, 1, 'victima_comunidadnac', 'Z');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1027, 1, 'victima_departamentores_priv_acin', 'AA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1028, 1, 'victima_municipiores_priv_acin', 'AB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1029, 1, 'victima_resguardores_priv_acin', 'AC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1030, 1, 'victima_comunidadres_priv_acin', 'AD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1031, 1, 'victima_numhijos_priv_acin', 'AE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1032, 1, 'victima_idiomas_priv_acin', 'AF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1033, 1, 'victima_etnia', 'AG');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1034, 1, 'victima_estadocivil', 'AH');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1035, 1, 'victima_ultgreducacionord', 'AI');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1036, 1, 'victima_educacionpropia', 'AJ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1037, 1, 'victima_carnetsalud', 'AK');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1038, 1, 'victima_religion_priv_acin', 'AL');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1039, 1, 'victima_comogeneraingresos_priv_acin', 'AM');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1040, 1, 'victima_tienetierra_priv_acin', 'AN');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1041, 1, 'victima_areatierra_priv_acin', 'AO');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1042, 1, 'victima_sexo', 'AP');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1043, 1, 'victima_incluidoruv', 'AQ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1044, 1, 'victima_cabezahogar', 'AR');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1045, 1, 'victima_liderazgocomunidad', 'AS');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1046, 1, 'victima_tipoliderazgo_priv_acin', 'AT');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1047, 1, 'evento_anio', 'AU');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1048, 1, 'evento_mes', 'AV');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1049, 1, 'evento_dia', 'AW');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1050, 1, 'evento_diasemana', 'AX');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1051, 1, 'evento_departamento', 'AY');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1052, 1, 'evento_municipio', 'AZ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1053, 1, 'evento_resguardo', 'BA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1054, 1, 'evento_comunidadvereda', 'BB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1055, 1, 'evento_numvecesantes', 'BC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1056, 1, 'evento_relacionadoconconflicto', 'BD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1057, 1, 'evento_descripcion_priv_acin', 'BE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1058, 1, 'evento_relacionesprvic_priv_acin', 'BF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1059, 1, 'evento_presponsables', 'BG');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1060, 1, 'evento_hechosvictimizantes', 'BH');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1061, 1, 'evento_testigo', 'BI');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1062, 1, 'evento_tiposafectaciones', 'BJ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1063, 1, 'evento_afectacionesindividual_priv_acin', 'BK');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1064, 1, 'evento_afectacionesfamiliar_priv_acin', 'BL');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1065, 1, 'evento_tiposapoyos', 'BM');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1066, 1, 'evento_afectacionesfisicas_priv_acin', 'BN');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1067, 1, 'evento_actividadesdejarondehacer_priv_acin', 'BO');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1068, 1, 'evento_actividadesdejarondehacer_priv_acin', 'BP');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1069, 1, 'evento_afectacionaotrapersona_priv_acin', 'BQ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1070, 1, 'evento_acompanamientosquenecesita', 'BR');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1071, 1, 'evento_telcontacto_priv_acin', 'BS');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1072, 1, 'evento_situacionderiesgo', 'BT');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1073, 1, 'evento_antequienmedidas', 'BU');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1074, 1, 'evento_medidasrecibidas', 'BV');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1075, 1, 'evento_denuncia', 'BW');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1076, 1, 'evento_denunciaante', 'BX');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1077, 1, 'evento_aniodenuncia', 'BY');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1078, 1, 'evento_mesdenuncia', 'BZ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1079, 1, 'evento_diadenuncia', 'CA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1080, 1, 'evento_avancesdelcaso_priv_acin', 'CB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1081, 1, 'evento_etapadelproceso_priv_acin', 'CC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1082, 1, 'evento_harecibidoreparacion_priv_acin', 'CD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1083, 1, 'evento_cualreparacion_priv_acin', 'CE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1084, 1, 'evento_sancionadovictimario_priv_acin', 'CF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1085, 1, 'evento_motivosnodenuncia', 'CG');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1086, 1, 'evento_valoracionjusticia', 'CH');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1087, 1, 'evento_quisieradenunciar', 'CI');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1088, 1, 'evento_compromisosadquiridos_priv_acin', 'CJ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1089, 1, 'evento_observaciones_priv_acin', 'CK');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1090, 2, 'caso_id', 'A');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1091, 2, 'organizacion', 'B');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1092, 2, 'consecutivo_organizacion', 'C');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1093, 2, 'fecha_creacion', 'D');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1094, 2, 'fecha_actualizacion', 'E');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1095, 2, 'sistematizado_por', 'F');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1096, 2, 'fecha_doc_terreno', 'G');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1097, 2, 'doc_terreno_por', 'H');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1098, 2, 'estados_caso', 'I');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1099, 2, 'acompanamientos_caso', 'J');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1100, 2, 'fuente1_nombre', 'K');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1101, 2, 'fuente1_fecha', 'L');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1102, 2, 'fuente1_detalle', 'M');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1103, 2, 'victima_anionac', 'N');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1104, 2, 'victima_mesnac', 'O');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1105, 2, 'victima_dianac', 'P');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1106, 2, 'victima_edaddocumentacion', 'Q');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1107, 2, 'victima_rangoedaddocumentacion', 'R');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1108, 2, 'victima_departamentonac', 'S');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1109, 2, 'victima_municipionac', 'T');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1110, 2, 'victima_resguardonac', 'U');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1111, 2, 'victima_comunidadnac', 'V');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1112, 2, 'victima_etnia', 'W');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1113, 2, 'victima_estadocivil', 'X');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1114, 2, 'victima_ultgreducacionord', 'Y');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1115, 2, 'victima_educacionpropia', 'Z');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1116, 2, 'victima_carnetsalud', 'AA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1117, 2, 'victima_sexo', 'AB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1118, 2, 'victima_incluidoruv', 'AC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1119, 2, 'victima_cabezahogar', 'AD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1120, 2, 'victima_liderazgocomunidad', 'AE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1121, 2, 'evento_anio', 'AF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1122, 2, 'evento_mes', 'AG');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1123, 2, 'evento_dia', 'AH');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1124, 2, 'evento_diasemana', 'AI');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1125, 2, 'evento_departamento', 'AJ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1126, 2, 'evento_municipio', 'AK');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1127, 2, 'evento_resguardo', 'AL');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1128, 2, 'evento_comunidadvereda', 'AM');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1129, 2, 'evento_numvecesantes', 'AN');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1130, 2, 'evento_relacionadoconconflicto', 'AO');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1131, 2, 'evento_presponsables', 'AP');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1132, 2, 'evento_hechosvictimizantes', 'AQ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1133, 2, 'evento_testigo', 'AR');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1134, 2, 'evento_tiposafectaciones', 'AS');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1135, 2, 'evento_tiposapoyos', 'AT');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1136, 2, 'evento_acompanamientosquenecesita', 'AU');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1137, 2, 'evento_situacionderiesgo', 'AV');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1138, 2, 'evento_antequienmedidas', 'AW');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1139, 2, 'evento_medidasrecibidas', 'AX');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1140, 2, 'evento_denuncia', 'AY');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1141, 2, 'evento_denunciaante', 'AZ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1142, 2, 'evento_aniodenuncia', 'BA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1143, 2, 'evento_mesdenuncia', 'BB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1144, 2, 'evento_diadenuncia', 'BC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1145, 2, 'evento_motivosnodenuncia', 'BD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1146, 2, 'evento_valoracionjusticia', 'BE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1147, 2, 'evento_quisieradenunciar', 'BF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1148, 3, 'caso_id', 'A');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1149, 3, 'organizacion', 'B');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1150, 3, 'consecutivo_organizacion', 'C');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1151, 3, 'fecha_creacion', 'D');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1152, 3, 'fecha_actualizacion', 'E');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1153, 3, 'sistematizado_por', 'F');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1154, 3, 'fecha_doc_terreno', 'G');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1155, 3, 'doc_terreno_por', 'H');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1156, 3, 'estados_caso', 'I');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1157, 3, 'acompanamientos_caso', 'J');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1158, 3, 'fuente1_nombre', 'K');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1159, 3, 'fuente1_fecha', 'L');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1160, 3, 'fuente1_detalle', 'M');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1161, 3, 'victima_anionac', 'N');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1162, 3, 'victima_mesnac', 'O');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1163, 3, 'victima_dianac', 'P');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1164, 3, 'victima_edaddocumentacion', 'Q');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1165, 3, 'victima_rangoedaddocumentacion', 'R');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1166, 3, 'victima_departamentonac', 'S');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1167, 3, 'victima_municipionac', 'T');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1168, 3, 'victima_resguardonac', 'U');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1169, 3, 'victima_comunidadnac', 'V');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1170, 3, 'victima_etnia', 'W');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1171, 3, 'victima_estadocivil', 'X');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1172, 3, 'victima_ultgreducacionord', 'Y');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1173, 3, 'victima_educacionpropia', 'Z');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1174, 3, 'victima_carnetsalud', 'AA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1175, 3, 'victima_sexo', 'AB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1176, 3, 'victima_incluidoruv', 'AC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1177, 3, 'victima_cabezahogar', 'AD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1178, 3, 'victima_liderazgocomunidad', 'AE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1179, 3, 'evento_anio', 'AF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1180, 3, 'evento_mes', 'AG');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1181, 3, 'evento_dia', 'AH');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1182, 3, 'evento_diasemana', 'AI');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1183, 3, 'evento_departamento', 'AJ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1184, 3, 'evento_municipio', 'AK');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1185, 3, 'evento_resguardo', 'AL');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1186, 3, 'evento_comunidadvereda', 'AM');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1187, 3, 'evento_numvecesantes', 'AN');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1188, 3, 'evento_relacionadoconconflicto', 'AO');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1189, 3, 'evento_presponsables', 'AP');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1190, 3, 'evento_hechosvictimizantes', 'AQ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1191, 3, 'evento_testigo', 'AR');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1192, 3, 'evento_tiposafectaciones', 'AS');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1193, 3, 'evento_tiposapoyos', 'AT');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1194, 3, 'evento_acompanamientosquenecesita', 'AU');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1195, 3, 'evento_situacionderiesgo', 'AV');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1196, 3, 'evento_antequienmedidas', 'AW');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1197, 3, 'evento_medidasrecibidas', 'AX');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1198, 3, 'evento_denuncia', 'AY');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1199, 3, 'evento_denunciaante', 'AZ');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1200, 3, 'evento_aniodenuncia', 'BA');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1201, 3, 'evento_mesdenuncia', 'BB');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1202, 3, 'evento_diadenuncia', 'BC');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1203, 3, 'evento_motivosnodenuncia', 'BD');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1204, 3, 'evento_valoracionjusticia', 'BE');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1205, 3, 'evento_quisieradenunciar', 'BF');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1206, 3, 'evento_seguimientojudicial_priv_oik', 'BG');
INSERT INTO public.heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (1207, 3, 'evento_seguimientopsicosocial_priv_oik', 'BH');


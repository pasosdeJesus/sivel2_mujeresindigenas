-- Volcado de tablas basicas

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: estadocaso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'ACOMPAÑADO', NULL, '2016-07-27', NULL, '2016-07-27 00:00:00', '2016-07-27 00:00:00');
INSERT INTO estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'DOCUMENTADO', NULL, '2016-07-27', NULL, '2016-07-27 00:00:00', '2016-07-27 00:00:00');
INSERT INTO estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'REGISTRADO', NULL, '2016-07-27', NULL, '2016-07-27 00:00:00', '2016-07-27 00:00:00');


--
-- Name: estadocaso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('estadocaso_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: consecuenciafamiliar; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'PERDIDA DE CREDIBILIDAD DE USOS Y COSTUMBRES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'DESINTEGRACION FAMILIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'DESINTEGRACION COLECTIVA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'DIFICULTADES CON LA FAMILIA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'DIFICULTADES CON LA PAREJA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'DIFICULTADES CON AMIGOS/AS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: consecuenciafamiliar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('consecuenciafamiliar_id_seq', 101, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: consecuenciafisica; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (10, 'BOCA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (11, 'DIENTES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (12, 'LABIO SUPERIOR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (13, 'LABIO INFERIOR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (14, 'PÓMULOS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (15, 'MEJILLAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (16, 'MENTÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (17, 'CUELLO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (18, 'OREJA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (19, 'OREJA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'CABEZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (20, 'PECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (21, 'TÓRAX', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (22, 'BRAZO DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (23, 'BRAZO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (24, 'MANO DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (25, 'MANO IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (26, 'ESPALDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (27, 'SENO DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (28, 'SENO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (29, 'ABDOMEN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'CABELLO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (30, 'MATRIZ', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (31, 'VAGINA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (32, 'VIENTRE', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (33, 'INGLE', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (34, 'PIERNA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (35, 'PIERNA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (36, 'RODILLA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (37, 'RODILLA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (38, 'PIE DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (39, 'PIE IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'FRENTE', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (40, 'DEDOS DE LA MANO', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-07-29 13:54:40.102665');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (41, 'HOMBRO DERECHO', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-07-28 22:21:02.543313');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (43, 'HOMBRO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (44, 'NALGA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (45, 'NALGA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (46, 'FRACTURAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (47, 'MORETONES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (48, 'SUTURAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (49, 'FUNCIONALIDAD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'OJO DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'OJO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'CEJA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'CEJA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (9, 'NARIZ', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: consecuenciafisica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('consecuenciafisica_id_seq', 101, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: consecuenciaindividual; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (10, 'SENTIMIENTO DE SOLEDAD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (11, 'LLANTO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (12, 'MIEDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (13, 'SENTIMIENTO DE VENGANZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (14, 'SENTIMIENTO DE ODIO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (15, 'TRISTEZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (16, 'AGRESIVIDAD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (17, 'PESADILLAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'DIFICULTADES EN EL TRABAJO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'TEMOR A HABLAR EN PÚBLICO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'DESEQUILIBRIO DE LOS PULSOS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'INSEGURIDAD PARA MOVERSE EN EL TERRITORIO', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-07-28 21:33:48.797599');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'SENTIMIENTO DE CULPA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'PERDIDA DEL APETITO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'DESEQUILIBRIO DEL SUEÑO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (9, 'DESEOS DE MORIR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: consecuenciaindividual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('consecuenciaindividual_id_seq', 101, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: educacionpropia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'ESCUELA DE JÓVENES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'ESCUELA DE MUJERES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ESCUELA DE GUARDIAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'ESCUELA DE SALUD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: educacionpropia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('educacionpropia_id_seq', 102, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: motivonodenuncia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'MIEDO A POSIBLES RETALIACIONES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'NO CONSIDERA QUE LOS HECHOS SON VIOLACIÓN A SUS DERECHOS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'VERGÜENZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'PREVENIR HABLADURÍA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'DESCONOCIMIENTO DE DONDE DENUNCIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FALTA DE CREDIBILIDAD EN AUTORIDADES INDÍGENAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'FALTA DE CREDIBILIDAD EN ENTIDADES ESTATALES', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-10 20:46:09.773621');


--
-- Name: motivonodenuncia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('motivonodenuncia_id_seq', 102, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: religion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'EVANGÉLICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (102, 'NINGUNA', '', '2016-07-11', NULL, '2016-07-11 15:40:37.279897', '2016-07-11 15:40:37.279897');
INSERT INTO religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'CATÓLICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'ISRAELITA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'PROPIA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: religion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('religion_id_seq', 103, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: tafectacion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'FÍSICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'CULTURAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ECONÓMICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'PSICOSOCIAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'COMUNITARIA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FAMILIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'INDIVIDUAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: tafectacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('tafectacion_id_seq', 102, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: tapoyo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'FAMILIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'COMUNITARIO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ORGANIZACIÓN INDÍGENA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'INSTITUCIÓN ESTATAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'ONG', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: tapoyo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('tapoyo_id_seq', 102, true);


--
-- PostgreSQL database dump complete
--


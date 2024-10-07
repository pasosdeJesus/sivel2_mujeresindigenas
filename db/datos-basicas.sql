-- Volcado de tablas basicas

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: rutaactivable; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.rutaactivable (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'Ruta propia', '', '2024-09-29', NULL, '2024-09-30 00:00:00', '2024-09-30 00:00:00');
INSERT INTO public.rutaactivable (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'Ruta occidental', '', '2024-09-29', NULL, '2024-09-30 00:00:00', '2024-09-30 00:00:00');
INSERT INTO public.rutaactivable (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'Ruta interjurisdiccional', '', '2024-09-29', NULL, '2024-09-30 00:00:00', '2024-09-30 00:00:00');
INSERT INTO public.rutaactivable (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'No se activó ruta', '', '2024-09-29', NULL, '2024-09-30 00:00:00', '2024-09-30 00:00:00');


--
-- Name: rutaactivable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.rutaactivable_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.rutaactivable_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: acompanamiento; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.acompanamiento (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'NINGUNO', NULL, '2017-01-11', NULL, '2017-01-11 00:00:00', '2017-01-11 00:00:00');
INSERT INTO public.acompanamiento (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'CULTURAL', NULL, '2017-01-11', NULL, '2017-01-11 00:00:00', '2017-01-11 00:00:00');
INSERT INTO public.acompanamiento (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'JURÍDICO', NULL, '2017-01-11', NULL, '2017-01-11 00:00:00', '2017-01-11 00:00:00');
INSERT INTO public.acompanamiento (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'JUSTICIA PROPIA', NULL, '2017-01-11', NULL, '2017-01-11 00:00:00', '2017-01-11 00:00:00');
INSERT INTO public.acompanamiento (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'PSICOSOCIAL', NULL, '2017-01-11', NULL, '2017-01-11 00:00:00', '2017-01-11 00:00:00');
INSERT INTO public.acompanamiento (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'SIN INFORMACION', '', '2017-02-08', NULL, '2017-02-08 20:07:27.520184', '2017-02-08 20:07:27.520184');


--
-- Name: acompanamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.acompanamiento_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.acompanamiento_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: consecuenciafamiliar; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'PERDIDA DE CREDIBILIDAD DE USOS Y COSTUMBRES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'DESINTEGRACION FAMILIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'DESINTEGRACIÓN COLECTIVA', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2024-08-15 16:03:08.604899');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'DIFICULTADES CON LA FAMILIA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'DIFICULTADES CON LA PAREJA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafamiliar (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'DIFICULTADES CON AMIGOS/AS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: consecuenciafamiliar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.consecuenciafamiliar_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.consecuenciafamiliar_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: consecuenciafisica; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (10, 'BOCA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (101, 'COSTILLAS (ROMPER)', '', '2017-03-01', NULL, '2017-03-01 17:17:01.675155', '2017-03-01 17:17:01.675155');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (11, 'DIENTES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (12, 'LABIO SUPERIOR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (13, 'LABIO INFERIOR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (14, 'PÓMULOS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (15, 'MEJILLAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (16, 'MENTÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (17, 'CUELLO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (18, 'OREJA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (19, 'OREJA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'CABEZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (20, 'PECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (21, 'TÓRAX', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (22, 'BRAZO DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (23, 'BRAZO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (24, 'MANO DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (25, 'MANO IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (26, 'ESPALDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (27, 'SENO DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (28, 'SENO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (29, 'ABDOMEN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'CABELLO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (30, 'MATRIZ', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (31, 'VAGINA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (32, 'VIENTRE', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (33, 'INGLE', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (34, 'PIERNA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (35, 'PIERNA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (36, 'RODILLA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (37, 'RODILLA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (38, 'PIE DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (39, 'PIE IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'FRENTE', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (40, 'DEDOS DE LA MANO', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-07-29 13:54:40.102665');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (41, 'HOMBRO DERECHO', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-07-28 22:21:02.543313');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (43, 'HOMBRO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (44, 'NALGA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (45, 'NALGA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (46, 'FRACTURAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (47, 'MORETONES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (48, 'SUTURAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (49, 'FUNCIONALIDAD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'OJO DERECHO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'OJO IZQUIERDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'CEJA DERECHA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'CEJA IZQUIERDA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciafisica (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (9, 'NARIZ', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: consecuenciafisica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.consecuenciafisica_id_seq', 101, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.consecuenciafisica_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: consecuenciaindividual; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (10, 'SENTIMIENTO DE SOLEDAD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (11, 'LLANTO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (12, 'MIEDO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (13, 'SENTIMIENTO DE VENGANZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (14, 'SENTIMIENTO DE ODIO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (15, 'TRISTEZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (16, 'AGRESIVIDAD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (17, 'PESADILLAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'DIFICULTADES EN EL TRABAJO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'TEMOR A HABLAR EN PÚBLICO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'DESEQUILIBRIO DE LOS PULSOS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'INSEGURIDAD PARA MOVERSE EN EL TERRITORIO', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-07-28 21:33:48.797599');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'SENTIMIENTO DE CULPA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'PERDIDA DEL APETITO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'DESEQUILIBRIO DEL SUEÑO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.consecuenciaindividual (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (9, 'DESEOS DE MORIR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: consecuenciaindividual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.consecuenciaindividual_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.consecuenciaindividual_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: educacionpropia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (101, 'NO', '', '2017-02-01', NULL, '2017-02-01 21:59:29.57388', '2017-02-01 21:59:29.57388');
INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'ESCUELA DE JÓVENES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'ESCUELA DE MUJERES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ESCUELA DE GUARDIAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.educacionpropia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'ESCUELA DE SALUD', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: educacionpropia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.educacionpropia_id_seq', 101, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.educacionpropia_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: estadocaso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'ACOMPAÑADO', NULL, '2016-07-27', NULL, '2016-07-27 00:00:00', '2016-07-27 00:00:00');
INSERT INTO public.estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (101, 'IDENTIFICADO', '', '2016-11-16', NULL, '2016-11-16 16:43:15.98194', '2016-11-16 16:43:15.98194');
INSERT INTO public.estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'DOCUMENTADO', NULL, '2016-07-27', NULL, '2016-07-27 00:00:00', '2016-07-27 00:00:00');
INSERT INTO public.estadocaso (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'REGISTRADO', NULL, '2016-07-27', NULL, '2016-07-27 00:00:00', '2016-07-27 00:00:00');


--
-- Name: estadocaso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.estadocaso_id_seq', 101, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.estadocaso_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: motivonodenuncia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'MIEDO A POSIBLES RETALIACIONES', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'NO CONSIDERA QUE LOS HECHOS SON VIOLACIÓN A SUS DERECHOS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'VERGÜENZA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'PREVENIR HABLADURÍA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'DESCONOCIMIENTO DE DONDE DENUNCIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FALTA DE CREDIBILIDAD EN AUTORIDADES INDÍGENAS', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.motivonodenuncia (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'FALTA DE CREDIBILIDAD EN ENTIDADES ESTATALES', '', '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-10 20:46:09.773621');


--
-- Name: motivonodenuncia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.motivonodenuncia_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.motivonodenuncia_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: poblacionespecial; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.poblacionespecial (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2024-09-04', NULL, '2024-09-03 00:00:00', '2024-09-04 00:00:00');
INSERT INTO public.poblacionespecial (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'MUJER LIDER', NULL, '2024-09-04', NULL, '2024-09-03 00:00:00', '2024-09-04 00:00:00');
INSERT INTO public.poblacionespecial (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'CON DISCAPACIDAD', '', '2024-09-04', NULL, '2024-09-03 00:00:00', '2024-09-04 07:23:31.149492');
INSERT INTO public.poblacionespecial (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'VÍCTIMA DEL CONFLICTO', NULL, '2024-09-04', NULL, '2024-09-03 00:00:00', '2024-09-04 00:00:00');
INSERT INTO public.poblacionespecial (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'MIGRANTE', NULL, '2024-09-04', NULL, '2024-09-03 00:00:00', '2024-09-04 00:00:00');
INSERT INTO public.poblacionespecial (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'OTROS', NULL, '2024-09-04', NULL, '2024-09-03 00:00:00', '2024-09-04 00:00:00');


--
-- Name: poblacionespecial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.poblacionespecial_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.poblacionespecial_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: relacionprvic; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'NINGUNA', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (10, 'VECINO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (101, 'EX-PAREJA', NULL, '2016-11-04', NULL, '2016-11-04 00:00:00', '2016-11-04 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (102, 'HIJO', '', '2017-02-08', NULL, '2017-02-08 21:14:28.028435', '2017-02-08 21:14:28.028435');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (103, 'OTRA', '', '2017-03-01', NULL, '2017-03-01 20:12:10.569368', '2017-03-01 20:12:10.569368');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (104, 'SIN INFORMACION', '', '2017-07-28', NULL, '2017-07-28 14:58:53.361244', '2017-07-28 14:58:53.361244');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (105, 'CUÑADO', '', '2017-08-01', NULL, '2017-08-01 14:57:51.054982', '2017-08-01 14:57:51.054982');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (106, 'PROFESOR', '', '2018-02-28', NULL, '2018-02-28 16:09:30.583391', '2018-02-28 16:09:30.583391');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (107, 'COMPADRE', '', '2018-02-28', NULL, '2018-02-28 16:23:41.112198', '2018-02-28 16:23:41.112198');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (108, 'COMUNERO', '', '2019-10-11', NULL, '2019-10-11 17:30:00.016197', '2019-10-11 17:30:00.016197');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (109, 'MADRE', '', '2019-11-27', NULL, '2019-11-27 15:25:31.281317', '2019-11-27 15:25:31.281317');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (11, 'AMIGO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (110, 'COMPAÑERA/O DE TRABAJO', '', '2023-07-05', NULL, '2023-07-05 16:52:17.968199', '2023-07-05 16:52:17.968199');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (12, 'AMIGO DE LA FAMILIA', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'ESPOSO / PAREJA', '', '2016-08-23', NULL, '2016-08-23 00:00:00', '2019-12-09 15:55:28.600274');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'PADRE', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'PADRASTRO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'NOVIO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'PRIMO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'ABUELO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'TÍO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');
INSERT INTO public.relacionprvic (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (9, 'HERMANO', NULL, '2016-08-23', NULL, '2016-08-23 00:00:00', '2016-08-23 00:00:00');


--
-- Name: relacionprvic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.relacionprvic_id_seq', 110, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.relacionprvic_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: religion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'EVANGÉLICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (102, 'NINGUNA', '', '2016-07-11', NULL, '2016-07-11 15:40:37.279897', '2016-07-11 15:40:37.279897');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (103, 'PENTECOSTAL', '', '2016-12-16', NULL, '2016-12-16 15:42:18.490637', '2016-12-16 15:42:18.490637');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (104, 'TESTIGO DE JEHOVA', '', '2016-12-16', NULL, '2016-12-16 15:44:32.574613', '2016-12-16 15:44:32.574613');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'CATÓLICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'ISRAELITA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.religion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'PROPIA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: religion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.religion_id_seq', 104, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.religion_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: tafectacion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'FÍSICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'CULTURAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ECONÓMICA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'PSICOSOCIAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'COMUNITARIA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FAMILIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (8, 'INDIVIDUAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tafectacion (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (9, 'ESPIRITUAL', NULL, '2024-09-26', NULL, '2024-09-26 00:00:00', '2024-09-26 00:00:00');


--
-- Name: tafectacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tafectacion_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.tafectacion_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: tapoyo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (0, 'SIN INFORMACIÓN', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'OTRO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (101, 'CULTURAL', '', '2016-11-22', NULL, '2016-11-22 21:12:59.084541', '2016-11-22 21:12:59.084541');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (102, 'PSICOSOCIAL', '', '2016-11-22', NULL, '2016-11-22 21:13:23.902696', '2016-11-22 21:13:23.902696');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (103, 'JURIDICO', '', '2016-11-22', NULL, '2016-11-22 21:14:11.072057', '2016-11-22 21:14:11.072057');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (104, 'NINGUNO', '', '2016-12-22', NULL, '2016-12-22 19:52:38.539483', '2016-12-22 19:52:38.539483');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (105, 'APOYO ESPIRITUAL', '', '2016-12-22', NULL, '2016-12-22 21:10:25.987878', '2016-12-22 21:10:25.987878');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'FAMILIAR', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'COMUNITARIO', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ORGANIZACIÓN INDÍGENA', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'INSTITUCIÓN ESTATAL', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');
INSERT INTO public.tapoyo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'ONG', NULL, '2016-06-07', NULL, '2016-06-07 00:00:00', '2016-06-07 00:00:00');


--
-- Name: tapoyo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tapoyo_id_seq', 105, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.tapoyo_id_seq', 100, true);
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: tienetierra; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');
INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'SI', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');
INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'NO', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');
INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'ADJUDICADO', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');
INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'COMPRÓ', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');
INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'OTRA', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');
INSERT INTO public.tienetierra (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'HERENCIA', NULL, '2017-01-18', NULL, '2017-01-18 00:00:00', '2017-01-18 00:00:00');


--
-- Name: tienetierra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tienetierra_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

SELECT pg_catalog.setval('public.tienetierra_id_seq', 100, true);

--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:qZjeWJavvEyqD4K3BEZLLQ==$W9cpNJyX5V0GwN5RfrFnyFABTMiVBL7LjgIbBnZA3bg=:yRhdSPHfQV6vRVjk0xnyH1a3mLz3FyLNWtXcdTRLklo=';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- Database "test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: test; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE test OWNER TO postgres;

\connect test

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: texts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.texts (
    id integer NOT NULL,
    name character varying(1000)
);


ALTER TABLE public.texts OWNER TO postgres;

--
-- Name: texts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.texts_id_seq OWNER TO postgres;

--
-- Name: texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.texts_id_seq OWNED BY public.texts.id;


--
-- Name: texts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.texts ALTER COLUMN id SET DEFAULT nextval('public.texts_id_seq'::regclass);


--
-- Data for Name: texts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.texts (id, name) FROM stdin;
23	ola
24	olasdfghjklkjhgfghjkl
25	olasdfghjklkjhgfghjklfgghjklçlkjhgfghjklççjhghjklçjhgbnmlhgbnmklkjhgbnmnb
26	o
27	o
28	o
29	b030774150c22dfe96eb36e3988835b5320d562d6e8ea28f0b98ef0855e3
30	b030774150c22dfe96eb36e3988835b5320d562d6e8ea28f0b98ef0855e3
31	b030774150c22dfe96eb36e3988835b5320d562d6e8ea28f0b98ef0855e3
32	b030774150c22dfe96eb36e3988835b5320d562d6e8ea28f0b98ef0855e3
33	ps
34	b030774150c22dfe96eb36
35	b030774150c22dfe96eb36e8
36	b030774150c22dfe96eb36e8988835b57947126320c5e692059ff10652f4fe7a
37	b030774150c22dfe96eb36e8988835b57947126320c5e692059ff10652f4fe7ac10f4315b73783ebc767ad3d28f201ba883ef0e53daf
38	bc357e44
39	bc357e4403
40	bc357e4403
41	bc357e4403
42	bc357e4403
43	bc357e4403
44	bc357e4403
45	bc357e44038839
46	bc357e44038839
47	bc357e44038839
48	bc357e44038839
49	bc357e44038839
50	bc357e44038839
51	bc357e44038839
52	bc357e44038839
53	bc357e44038839
54	bc357e44038839
55	bc357e44038839
56	bc357e44038839
57	bc357e44038839
58	bc357e44038839
59	bc357e44038839
60	a135634450c53ff99d
61	9735690513cd2ce093b871aec9dd70b576eed72d2dcbf0880ed3
62	9735690513cd2ce093b871aec9dd70b576eed72d2dcbf0880ed3
\.


--
-- Name: texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.texts_id_seq', 62, true);


--
-- Name: texts texts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.texts
    ADD CONSTRAINT texts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--


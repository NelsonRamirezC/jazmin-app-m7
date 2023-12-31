toc.dat                                                                                             0000600 0004000 0002000 00000021240 14447630673 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           1                {            db_bootcamp    15.2    15.2     &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         )           1262    42883    db_bootcamp    DATABASE     ~   CREATE DATABASE db_bootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_bootcamp;
                postgres    false         �            1259    51119 	   bootcamps    TABLE       CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    cue integer NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.bootcamps;
       public         heap    postgres    false         �            1259    51118    bootcamps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bootcamps_id_seq;
       public          postgres    false    227         *           0    0    bootcamps_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;
          public          postgres    false    226         �            1259    51125    user_bootcamp    TABLE     �   CREATE TABLE public.user_bootcamp (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "bootcampId" integer NOT NULL
);
 !   DROP TABLE public.user_bootcamp;
       public         heap    postgres    false         �            1259    51109    users    TABLE     H  CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    status boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    51108    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    225         +           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    224         z           2604    51122    bootcamps id    DEFAULT     l   ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);
 ;   ALTER TABLE public.bootcamps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227         x           2604    51112    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225         "          0    51119 	   bootcamps 
   TABLE DATA           Z   COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227       3362.dat #          0    51125    user_bootcamp 
   TABLE DATA           Y   COPY public.user_bootcamp ("createdAt", "updatedAt", "userId", "bootcampId") FROM stdin;
    public          postgres    false    228       3363.dat            0    51109    users 
   TABLE DATA           e   COPY public.users (id, "firstName", "lastName", email, status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225       3360.dat ,           0    0    bootcamps_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);
          public          postgres    false    226         -           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    224         �           2606    51124    bootcamps bootcamps_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bootcamps DROP CONSTRAINT bootcamps_pkey;
       public            postgres    false    227         �           2606    51129     user_bootcamp user_bootcamp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_pkey PRIMARY KEY ("userId", "bootcampId");
 J   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT user_bootcamp_pkey;
       public            postgres    false    228    228         |           2606    51218    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    225         ~           2606    51220    users users_email_key1 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key1;
       public            postgres    false    225         �           2606    51222    users users_email_key2 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key2;
       public            postgres    false    225         �           2606    51224    users users_email_key3 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key3;
       public            postgres    false    225         �           2606    51216    users users_email_key4 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key4 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key4;
       public            postgres    false    225         �           2606    51226    users users_email_key5 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key5 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key5;
       public            postgres    false    225         �           2606    51228    users users_email_key6 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key6 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key6;
       public            postgres    false    225         �           2606    51115    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    225         �           2606    51135 +   user_bootcamp user_bootcamp_bootcampId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_bootcampId_fkey" FOREIGN KEY ("bootcampId") REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT "user_bootcamp_bootcampId_fkey";
       public          postgres    false    228    3212    227         �           2606    51130 '   user_bootcamp user_bootcamp_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT "user_bootcamp_userId_fkey";
       public          postgres    false    3210    228    225                                                                                                                                                                                                                                                                                                                                                                        3362.dat                                                                                            0000600 0004000 0002000 00000001211 14447630673 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Introduciendo el Bootcamp de React	10	React es la librería más usada en JavaScript para el desarrollo de interfaces.	2023-06-30 14:31:15.197-04	2023-06-30 14:31:15.197-04
2	Bootcamp desarrollo Web FullStack	12	Crearás aplicaciones web utilizando las tecnologías y lenguajes más actuales, como: JavaScript, nodeJS, Angular, MongoDB, ExpressJS.	2023-06-30 14:33:41.988-04	2023-06-30 14:33:41.988-04
3	Bootcamp Big Data, Inteligencia Artificial & Machine Learning	18	Domina Data Science y todo el ecosistema de lenguajes y herramientas de Big Data, e intégralos con modelos avanzados.	2023-06-30 14:35:35.531-04	2023-06-30 14:35:35.531-04
\.


                                                                                                                                                                                                                                                                                                                                                                                       3363.dat                                                                                            0000600 0004000 0002000 00000000541 14447630673 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2023-06-30 14:36:55.085-04	2023-06-30 14:36:55.085-04	1	1
2023-06-30 14:37:20.727-04	2023-06-30 14:37:20.727-04	1	2
2023-06-30 14:37:59.336-04	2023-06-30 14:37:59.336-04	2	1
2023-06-30 14:38:39.217-04	2023-06-30 14:38:39.217-04	1	3
2023-06-30 14:39:55.655-04	2023-06-30 14:39:55.655-04	2	3
2023-06-30 14:40:08.499-04	2023-06-30 14:40:08.499-04	3	3
\.


                                                                                                                                                               3360.dat                                                                                            0000600 0004000 0002000 00000000615 14447630673 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Mateo	Díaz	mateo.diaz@correo.com	t	2023-06-30 14:12:05.174-04	2023-06-30 14:12:05.174-04
2	Santiago	Mejías	santiago.mejias@correo.com	t	2023-06-30 14:14:16.479-04	2023-06-30 14:14:16.479-04
3	Lucas	Rojas	lucas.rojas@correo.com	t	2023-06-30 14:14:58.512-04	2023-06-30 14:14:58.512-04
4	Facundo	Fernandez	facundo.fernandez@correo.com	t	2023-06-30 14:15:24.776-04	2023-06-30 14:15:24.776-04
\.


                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000016154 14447630673 0015411 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE db_bootcamp;
--
-- Name: db_bootcamp; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_bootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE db_bootcamp OWNER TO postgres;

\connect db_bootcamp

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
-- Name: bootcamps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    cue integer NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.bootcamps OWNER TO postgres;

--
-- Name: bootcamps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bootcamps_id_seq OWNER TO postgres;

--
-- Name: bootcamps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;


--
-- Name: user_bootcamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_bootcamp (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "bootcampId" integer NOT NULL
);


ALTER TABLE public.user_bootcamp OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    status boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: bootcamps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: bootcamps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM '$$PATH$$/3362.dat';

--
-- Data for Name: user_bootcamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_bootcamp ("createdAt", "updatedAt", "userId", "bootcampId") FROM stdin;
\.
COPY public.user_bootcamp ("createdAt", "updatedAt", "userId", "bootcampId") FROM '$$PATH$$/3363.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "firstName", "lastName", email, status, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.users (id, "firstName", "lastName", email, status, "createdAt", "updatedAt") FROM '$$PATH$$/3360.dat';

--
-- Name: bootcamps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: bootcamps bootcamps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);


--
-- Name: user_bootcamp user_bootcamp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_pkey PRIMARY KEY ("userId", "bootcampId");


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_email_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);


--
-- Name: users users_email_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);


--
-- Name: users users_email_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);


--
-- Name: users users_email_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key4 UNIQUE (email);


--
-- Name: users users_email_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key5 UNIQUE (email);


--
-- Name: users users_email_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key6 UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: user_bootcamp user_bootcamp_bootcampId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_bootcampId_fkey" FOREIGN KEY ("bootcampId") REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_bootcamp user_bootcamp_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
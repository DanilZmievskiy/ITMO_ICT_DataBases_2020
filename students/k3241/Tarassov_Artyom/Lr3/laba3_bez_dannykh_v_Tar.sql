toc.dat                                                                                             0000600 0004000 0002000 00000040162 13647020140 0014437 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       /    8                x            library    12.2    12.2 6    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         K           1262    17249    library    DATABASE     �   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE library;
                postgres    false         �            1259    17252    Book_instances    TABLE     z   CREATE TABLE public."Book_instances" (
    id integer NOT NULL,
    status text NOT NULL,
    id_book integer NOT NULL
);
 $   DROP TABLE public."Book_instances";
       public         heap    postgres    false         �            1259    17250    Book_instances_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Book_instances_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Book_instances_id_seq";
       public          postgres    false    203         L           0    0    Book_instances_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Book_instances_id_seq" OWNED BY public."Book_instances".id;
          public          postgres    false    202         �            1259    17261    Books    TABLE     �   CREATE TABLE public."Books" (
    id integer NOT NULL,
    author text NOT NULL,
    name text NOT NULL,
    year_of_pub date NOT NULL,
    section text NOT NULL,
    pressmark text NOT NULL,
    debit_date text
);
    DROP TABLE public."Books";
       public         heap    postgres    false         �            1259    17259    Books_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Books_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Books_id_seq";
       public          postgres    false    205         M           0    0    Books_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Books_id_seq" OWNED BY public."Books".id;
          public          postgres    false    204         �            1259    17268    Instance_issues    TABLE     �   CREATE TABLE public."Instance_issues" (
    date_of_issue date NOT NULL,
    return_date date,
    id_reader integer NOT NULL,
    id_instance integer NOT NULL
);
 %   DROP TABLE public."Instance_issues";
       public         heap    postgres    false         �            1259    17271    Instances_in_room    TABLE     �   CREATE TABLE public."Instances_in_room" (
    id_rooms integer NOT NULL,
    id_instance integer NOT NULL,
    value integer NOT NULL
);
 '   DROP TABLE public."Instances_in_room";
       public         heap    postgres    false         �            1259    17276    Readers    TABLE     H  CREATE TABLE public."Readers" (
    id integer NOT NULL,
    number_of_card integer NOT NULL,
    full_name text NOT NULL,
    passport_number integer NOT NULL,
    data_of_birthday date NOT NULL,
    address text NOT NULL,
    call_number integer NOT NULL,
    graduation text NOT NULL,
    graduate_degree boolean NOT NULL
);
    DROP TABLE public."Readers";
       public         heap    postgres    false         �            1259    17274    Readers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Readers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Readers_id_seq";
       public          postgres    false    209         N           0    0    Readers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Readers_id_seq" OWNED BY public."Readers".id;
          public          postgres    false    208         �            1259    17285    Reading_rooms    TABLE     �   CREATE TABLE public."Reading_rooms" (
    id integer NOT NULL,
    number integer NOT NULL,
    name text NOT NULL,
    people_capacity integer NOT NULL
);
 #   DROP TABLE public."Reading_rooms";
       public         heap    postgres    false         �            1259    17283    Reading_rooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reading_rooms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Reading_rooms_id_seq";
       public          postgres    false    211         O           0    0    Reading_rooms_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Reading_rooms_id_seq" OWNED BY public."Reading_rooms".id;
          public          postgres    false    210         �            1259    17292 	   Registers    TABLE     �   CREATE TABLE public."Registers" (
    id_room integer NOT NULL,
    id_reader integer NOT NULL,
    date_recorded date NOT NULL,
    date_of_re_registration date,
    discharge_date date
);
    DROP TABLE public."Registers";
       public         heap    postgres    false         �
           2604    17255    Book_instances id    DEFAULT     z   ALTER TABLE ONLY public."Book_instances" ALTER COLUMN id SET DEFAULT nextval('public."Book_instances_id_seq"'::regclass);
 B   ALTER TABLE public."Book_instances" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         �
           2604    17264    Books id    DEFAULT     h   ALTER TABLE ONLY public."Books" ALTER COLUMN id SET DEFAULT nextval('public."Books_id_seq"'::regclass);
 9   ALTER TABLE public."Books" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         �
           2604    17279 
   Readers id    DEFAULT     l   ALTER TABLE ONLY public."Readers" ALTER COLUMN id SET DEFAULT nextval('public."Readers_id_seq"'::regclass);
 ;   ALTER TABLE public."Readers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         �
           2604    17288    Reading_rooms id    DEFAULT     x   ALTER TABLE ONLY public."Reading_rooms" ALTER COLUMN id SET DEFAULT nextval('public."Reading_rooms_id_seq"'::regclass);
 A   ALTER TABLE public."Reading_rooms" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211         <          0    17252    Book_instances 
   TABLE DATA           ?   COPY public."Book_instances" (id, status, id_book) FROM stdin;
    public          postgres    false    203       2876.dat >          0    17261    Books 
   TABLE DATA           `   COPY public."Books" (id, author, name, year_of_pub, section, pressmark, debit_date) FROM stdin;
    public          postgres    false    205       2878.dat ?          0    17268    Instance_issues 
   TABLE DATA           _   COPY public."Instance_issues" (date_of_issue, return_date, id_reader, id_instance) FROM stdin;
    public          postgres    false    206       2879.dat @          0    17271    Instances_in_room 
   TABLE DATA           K   COPY public."Instances_in_room" (id_rooms, id_instance, value) FROM stdin;
    public          postgres    false    207       2880.dat B          0    17276    Readers 
   TABLE DATA           �   COPY public."Readers" (id, number_of_card, full_name, passport_number, data_of_birthday, address, call_number, graduation, graduate_degree) FROM stdin;
    public          postgres    false    209       2882.dat D          0    17285    Reading_rooms 
   TABLE DATA           L   COPY public."Reading_rooms" (id, number, name, people_capacity) FROM stdin;
    public          postgres    false    211       2884.dat E          0    17292 	   Registers 
   TABLE DATA           q   COPY public."Registers" (id_room, id_reader, date_recorded, date_of_re_registration, discharge_date) FROM stdin;
    public          postgres    false    212       2885.dat P           0    0    Book_instances_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Book_instances_id_seq"', 1, false);
          public          postgres    false    202         Q           0    0    Books_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Books_id_seq"', 1, true);
          public          postgres    false    204         R           0    0    Readers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Readers_id_seq"', 1, false);
          public          postgres    false    208         S           0    0    Reading_rooms_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Reading_rooms_id_seq"', 1, false);
          public          postgres    false    210         �
           2606    17296 "   Book_instances Book_instances_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Book_instances"
    ADD CONSTRAINT "Book_instances_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Book_instances" DROP CONSTRAINT "Book_instances_pkey";
       public            postgres    false    203         �
           2606    17298    Books Books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Books"
    ADD CONSTRAINT "Books_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Books" DROP CONSTRAINT "Books_pkey";
       public            postgres    false    205         �
           2606    17300    Readers Readers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Readers"
    ADD CONSTRAINT "Readers_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Readers" DROP CONSTRAINT "Readers_pkey";
       public            postgres    false    209         �
           2606    17302     Reading_rooms Reading_rooms_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Reading_rooms"
    ADD CONSTRAINT "Reading_rooms_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Reading_rooms" DROP CONSTRAINT "Reading_rooms_pkey";
       public            postgres    false    211         �
           1259    17303    id_books(FK)    INDEX     N   CREATE INDEX "id_books(FK)" ON public."Book_instances" USING btree (id_book);
 "   DROP INDEX public."id_books(FK)";
       public            postgres    false    203         �
           1259    17304    id_instance(fk)    INDEX     V   CREATE INDEX "id_instance(fk)" ON public."Instance_issues" USING btree (id_instance);
 %   DROP INDEX public."id_instance(fk)";
       public            postgres    false    206         �
           1259    17305    id_instance_in_rooms(fk)    INDEX     a   CREATE INDEX "id_instance_in_rooms(fk)" ON public."Instances_in_room" USING btree (id_instance);
 .   DROP INDEX public."id_instance_in_rooms(fk)";
       public            postgres    false    207         �
           1259    17306    id_reader(fk)    INDEX     R   CREATE INDEX "id_reader(fk)" ON public."Instance_issues" USING btree (id_reader);
 #   DROP INDEX public."id_reader(fk)";
       public            postgres    false    206         �
           1259    17307    id_reader_in_register(fk)    INDEX     X   CREATE INDEX "id_reader_in_register(fk)" ON public."Registers" USING btree (id_reader);
 /   DROP INDEX public."id_reader_in_register(fk)";
       public            postgres    false    212         �
           1259    17308    id_room(fk)    INDEX     H   CREATE INDEX "id_room(fk)" ON public."Registers" USING btree (id_room);
 !   DROP INDEX public."id_room(fk)";
       public            postgres    false    212         �
           1259    17309    id_rooms(fk)    INDEX     R   CREATE INDEX "id_rooms(fk)" ON public."Instances_in_room" USING btree (id_rooms);
 "   DROP INDEX public."id_rooms(fk)";
       public            postgres    false    207         �
           2606    17310 *   Book_instances Book_instances_id_book_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Book_instances"
    ADD CONSTRAINT "Book_instances_id_book_fkey" FOREIGN KEY (id_book) REFERENCES public."Books"(id) NOT VALID;
 X   ALTER TABLE ONLY public."Book_instances" DROP CONSTRAINT "Book_instances_id_book_fkey";
       public          postgres    false    2729    203    205         �
           2606    17315 0   Instance_issues Instance_issues_id_instance_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Instance_issues"
    ADD CONSTRAINT "Instance_issues_id_instance_fkey" FOREIGN KEY (id_instance) REFERENCES public."Book_instances"(id) NOT VALID;
 ^   ALTER TABLE ONLY public."Instance_issues" DROP CONSTRAINT "Instance_issues_id_instance_fkey";
       public          postgres    false    206    203    2726         �
           2606    17320 .   Instance_issues Instance_issues_id_reader_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Instance_issues"
    ADD CONSTRAINT "Instance_issues_id_reader_fkey" FOREIGN KEY (id_reader) REFERENCES public."Readers"(id) NOT VALID;
 \   ALTER TABLE ONLY public."Instance_issues" DROP CONSTRAINT "Instance_issues_id_reader_fkey";
       public          postgres    false    209    206    2735         �
           2606    17325 4   Instances_in_room Instances_in_room_id_instance_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Instances_in_room"
    ADD CONSTRAINT "Instances_in_room_id_instance_fkey" FOREIGN KEY (id_instance) REFERENCES public."Book_instances"(id) NOT VALID;
 b   ALTER TABLE ONLY public."Instances_in_room" DROP CONSTRAINT "Instances_in_room_id_instance_fkey";
       public          postgres    false    2726    203    207         �
           2606    17330 5   Instances_in_room Instances_in_room_id_instance_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Instances_in_room"
    ADD CONSTRAINT "Instances_in_room_id_instance_fkey1" FOREIGN KEY (id_instance) REFERENCES public."Book_instances"(id) NOT VALID;
 c   ALTER TABLE ONLY public."Instances_in_room" DROP CONSTRAINT "Instances_in_room_id_instance_fkey1";
       public          postgres    false    207    2726    203         �
           2606    17335 1   Instances_in_room Instances_in_room_id_rooms_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Instances_in_room"
    ADD CONSTRAINT "Instances_in_room_id_rooms_fkey" FOREIGN KEY (id_rooms) REFERENCES public."Reading_rooms"(id) NOT VALID;
 _   ALTER TABLE ONLY public."Instances_in_room" DROP CONSTRAINT "Instances_in_room_id_rooms_fkey";
       public          postgres    false    2737    207    211         �
           2606    17340 "   Registers Registers_id_reader_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registers"
    ADD CONSTRAINT "Registers_id_reader_fkey" FOREIGN KEY (id_reader) REFERENCES public."Readers"(id) NOT VALID;
 P   ALTER TABLE ONLY public."Registers" DROP CONSTRAINT "Registers_id_reader_fkey";
       public          postgres    false    212    209    2735         �
           2606    17345 #   Registers Registers_id_reader_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registers"
    ADD CONSTRAINT "Registers_id_reader_fkey1" FOREIGN KEY (id_reader) REFERENCES public."Readers"(id) NOT VALID;
 Q   ALTER TABLE ONLY public."Registers" DROP CONSTRAINT "Registers_id_reader_fkey1";
       public          postgres    false    2735    212    209         �
           2606    17350     Registers Registers_id_room_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registers"
    ADD CONSTRAINT "Registers_id_room_fkey" FOREIGN KEY (id_room) REFERENCES public."Reading_rooms"(id) NOT VALID;
 N   ALTER TABLE ONLY public."Registers" DROP CONSTRAINT "Registers_id_room_fkey";
       public          postgres    false    211    212    2737                                                                                                                                                                                                                                                                                                                                                                                                                      2876.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2878.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2879.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2880.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2882.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2884.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2885.dat                                                                                            0000600 0004000 0002000 00000000005 13647020140 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000027665 13647020140 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

DROP DATABASE library;
--
-- Name: library; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


\connect library

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

SET default_table_access_method = heap;

--
-- Name: Book_instances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Book_instances" (
    id integer NOT NULL,
    status text NOT NULL,
    id_book integer NOT NULL
);


--
-- Name: Book_instances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Book_instances_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Book_instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Book_instances_id_seq" OWNED BY public."Book_instances".id;


--
-- Name: Books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Books" (
    id integer NOT NULL,
    author text NOT NULL,
    name text NOT NULL,
    year_of_pub date NOT NULL,
    section text NOT NULL,
    pressmark text NOT NULL,
    debit_date text
);


--
-- Name: Books_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Books_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Books_id_seq" OWNED BY public."Books".id;


--
-- Name: Instance_issues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Instance_issues" (
    date_of_issue date NOT NULL,
    return_date date,
    id_reader integer NOT NULL,
    id_instance integer NOT NULL
);


--
-- Name: Instances_in_room; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Instances_in_room" (
    id_rooms integer NOT NULL,
    id_instance integer NOT NULL,
    value integer NOT NULL
);


--
-- Name: Readers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Readers" (
    id integer NOT NULL,
    number_of_card integer NOT NULL,
    full_name text NOT NULL,
    passport_number integer NOT NULL,
    data_of_birthday date NOT NULL,
    address text NOT NULL,
    call_number integer NOT NULL,
    graduation text NOT NULL,
    graduate_degree boolean NOT NULL
);


--
-- Name: Readers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Readers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Readers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Readers_id_seq" OWNED BY public."Readers".id;


--
-- Name: Reading_rooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Reading_rooms" (
    id integer NOT NULL,
    number integer NOT NULL,
    name text NOT NULL,
    people_capacity integer NOT NULL
);


--
-- Name: Reading_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Reading_rooms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Reading_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Reading_rooms_id_seq" OWNED BY public."Reading_rooms".id;


--
-- Name: Registers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Registers" (
    id_room integer NOT NULL,
    id_reader integer NOT NULL,
    date_recorded date NOT NULL,
    date_of_re_registration date,
    discharge_date date
);


--
-- Name: Book_instances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Book_instances" ALTER COLUMN id SET DEFAULT nextval('public."Book_instances_id_seq"'::regclass);


--
-- Name: Books id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Books" ALTER COLUMN id SET DEFAULT nextval('public."Books_id_seq"'::regclass);


--
-- Name: Readers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Readers" ALTER COLUMN id SET DEFAULT nextval('public."Readers_id_seq"'::regclass);


--
-- Name: Reading_rooms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Reading_rooms" ALTER COLUMN id SET DEFAULT nextval('public."Reading_rooms_id_seq"'::regclass);


--
-- Data for Name: Book_instances; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Book_instances" (id, status, id_book) FROM stdin;
\.
COPY public."Book_instances" (id, status, id_book) FROM '$$PATH$$/2876.dat';

--
-- Data for Name: Books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Books" (id, author, name, year_of_pub, section, pressmark, debit_date) FROM stdin;
\.
COPY public."Books" (id, author, name, year_of_pub, section, pressmark, debit_date) FROM '$$PATH$$/2878.dat';

--
-- Data for Name: Instance_issues; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Instance_issues" (date_of_issue, return_date, id_reader, id_instance) FROM stdin;
\.
COPY public."Instance_issues" (date_of_issue, return_date, id_reader, id_instance) FROM '$$PATH$$/2879.dat';

--
-- Data for Name: Instances_in_room; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Instances_in_room" (id_rooms, id_instance, value) FROM stdin;
\.
COPY public."Instances_in_room" (id_rooms, id_instance, value) FROM '$$PATH$$/2880.dat';

--
-- Data for Name: Readers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Readers" (id, number_of_card, full_name, passport_number, data_of_birthday, address, call_number, graduation, graduate_degree) FROM stdin;
\.
COPY public."Readers" (id, number_of_card, full_name, passport_number, data_of_birthday, address, call_number, graduation, graduate_degree) FROM '$$PATH$$/2882.dat';

--
-- Data for Name: Reading_rooms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Reading_rooms" (id, number, name, people_capacity) FROM stdin;
\.
COPY public."Reading_rooms" (id, number, name, people_capacity) FROM '$$PATH$$/2884.dat';

--
-- Data for Name: Registers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Registers" (id_room, id_reader, date_recorded, date_of_re_registration, discharge_date) FROM stdin;
\.
COPY public."Registers" (id_room, id_reader, date_recorded, date_of_re_registration, discharge_date) FROM '$$PATH$$/2885.dat';

--
-- Name: Book_instances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Book_instances_id_seq"', 1, false);


--
-- Name: Books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Books_id_seq"', 1, true);


--
-- Name: Readers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Readers_id_seq"', 1, false);


--
-- Name: Reading_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Reading_rooms_id_seq"', 1, false);


--
-- Name: Book_instances Book_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Book_instances"
    ADD CONSTRAINT "Book_instances_pkey" PRIMARY KEY (id);


--
-- Name: Books Books_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Books"
    ADD CONSTRAINT "Books_pkey" PRIMARY KEY (id);


--
-- Name: Readers Readers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Readers"
    ADD CONSTRAINT "Readers_pkey" PRIMARY KEY (id);


--
-- Name: Reading_rooms Reading_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Reading_rooms"
    ADD CONSTRAINT "Reading_rooms_pkey" PRIMARY KEY (id);


--
-- Name: id_books(FK); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_books(FK)" ON public."Book_instances" USING btree (id_book);


--
-- Name: id_instance(fk); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_instance(fk)" ON public."Instance_issues" USING btree (id_instance);


--
-- Name: id_instance_in_rooms(fk); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_instance_in_rooms(fk)" ON public."Instances_in_room" USING btree (id_instance);


--
-- Name: id_reader(fk); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_reader(fk)" ON public."Instance_issues" USING btree (id_reader);


--
-- Name: id_reader_in_register(fk); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_reader_in_register(fk)" ON public."Registers" USING btree (id_reader);


--
-- Name: id_room(fk); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_room(fk)" ON public."Registers" USING btree (id_room);


--
-- Name: id_rooms(fk); Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "id_rooms(fk)" ON public."Instances_in_room" USING btree (id_rooms);


--
-- Name: Book_instances Book_instances_id_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Book_instances"
    ADD CONSTRAINT "Book_instances_id_book_fkey" FOREIGN KEY (id_book) REFERENCES public."Books"(id) NOT VALID;


--
-- Name: Instance_issues Instance_issues_id_instance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Instance_issues"
    ADD CONSTRAINT "Instance_issues_id_instance_fkey" FOREIGN KEY (id_instance) REFERENCES public."Book_instances"(id) NOT VALID;


--
-- Name: Instance_issues Instance_issues_id_reader_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Instance_issues"
    ADD CONSTRAINT "Instance_issues_id_reader_fkey" FOREIGN KEY (id_reader) REFERENCES public."Readers"(id) NOT VALID;


--
-- Name: Instances_in_room Instances_in_room_id_instance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Instances_in_room"
    ADD CONSTRAINT "Instances_in_room_id_instance_fkey" FOREIGN KEY (id_instance) REFERENCES public."Book_instances"(id) NOT VALID;


--
-- Name: Instances_in_room Instances_in_room_id_instance_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Instances_in_room"
    ADD CONSTRAINT "Instances_in_room_id_instance_fkey1" FOREIGN KEY (id_instance) REFERENCES public."Book_instances"(id) NOT VALID;


--
-- Name: Instances_in_room Instances_in_room_id_rooms_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Instances_in_room"
    ADD CONSTRAINT "Instances_in_room_id_rooms_fkey" FOREIGN KEY (id_rooms) REFERENCES public."Reading_rooms"(id) NOT VALID;


--
-- Name: Registers Registers_id_reader_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Registers"
    ADD CONSTRAINT "Registers_id_reader_fkey" FOREIGN KEY (id_reader) REFERENCES public."Readers"(id) NOT VALID;


--
-- Name: Registers Registers_id_reader_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Registers"
    ADD CONSTRAINT "Registers_id_reader_fkey1" FOREIGN KEY (id_reader) REFERENCES public."Readers"(id) NOT VALID;


--
-- Name: Registers Registers_id_room_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Registers"
    ADD CONSTRAINT "Registers_id_room_fkey" FOREIGN KEY (id_room) REFERENCES public."Reading_rooms"(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
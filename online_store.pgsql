--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: online_store; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE online_store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE online_store OWNER TO postgres;

\connect online_store

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
-- Name: basket_devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);


ALTER TABLE public.basket_devices OWNER TO postgres;

--
-- Name: basket_devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.basket_devices_id_seq OWNER TO postgres;

--
-- Name: basket_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;


--
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.baskets_id_seq OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.brands_id_seq OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.devices OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.devices_id_seq OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ratings_id_seq OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: type_brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.type_brands OWNER TO postgres;

--
-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_brands_id_seq OWNER TO postgres;

--
-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.types_id_seq OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
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


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: basket_devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);


--
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: type_brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: basket_devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;
\.


--
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
1	2023-10-10 12:05:34.469+03	2023-10-10 12:05:34.469+03	1
2	2023-10-10 12:07:19.48+03	2023-10-10 12:07:19.48+03	2
3	2023-10-10 12:09:02.566+03	2023-10-10 12:09:02.566+03	3
4	2023-10-10 12:09:53.646+03	2023-10-10 12:09:53.646+03	4
5	2023-10-10 12:12:33.815+03	2023-10-10 12:12:33.815+03	5
6	2023-10-10 12:55:58.143+03	2023-10-10 12:55:58.143+03	6
7	2023-10-10 13:50:25.69+03	2023-10-10 13:50:25.69+03	7
8	2023-10-10 15:23:41.054+03	2023-10-10 15:23:41.054+03	8
9	2023-10-10 15:25:13.397+03	2023-10-10 15:25:13.397+03	9
10	2023-10-10 15:51:28.572+03	2023-10-10 15:51:28.572+03	10
11	2023-10-30 15:48:31.152+03	2023-10-30 15:48:31.152+03	11
12	2023-10-30 15:49:10.109+03	2023-10-30 15:49:10.109+03	12
13	2023-10-30 16:12:08.902+03	2023-10-30 16:12:08.902+03	13
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
1	Samsung	2023-09-29 12:31:45.493+03	2023-09-29 12:31:45.493+03
2	Apple	2023-09-29 12:32:07.781+03	2023-09-29 12:32:07.781+03
3	Nokia	2023-10-30 17:30:52.068+03	2023-10-30 17:30:52.068+03
5	Panasonic	2023-10-31 14:00:41.773+03	2023-10-31 14:00:41.773+03
4	Sony	2023-10-31 13:58:40.126+03	2023-10-31 13:58:40.126+03
\.


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
1	12 pro	100000	0	aeb3612b-c5d9-4293-95a5-0ba2cd00e9b4.jpg	2023-09-29 13:09:58.088+03	2023-09-29 13:09:58.088+03	2	2
2	A21	100000	0	27a04469-538d-4aa5-85a0-01d652eb6e01.jpg	2023-09-29 16:03:32.862+03	2023-09-29 16:03:32.862+03	2	1
3	S23	110000	0	352c41a4-0670-4df9-ac46-7cd595139d39.jpg	2023-09-29 16:03:53.084+03	2023-09-29 16:03:53.084+03	2	1
4	WW80A6S28AX/LD	45000	0	478c7771-69a7-43e4-bb9b-1b084b097565.jpg	2023-09-29 16:04:28.068+03	2023-09-29 16:04:28.068+03	1	1
5	F2T3HS6S	46999	0	b3517ffd-5649-4cf5-a707-c6da6780a024.jpg	2023-09-29 16:05:08.339+03	2023-09-29 16:05:08.339+03	1	1
6	Холодильник Samsung H1	30000	0	1341837a-cb3a-4eee-9acb-c411a8d62f81.jpg	2023-10-31 17:12:53.587+03	2023-10-31 17:12:53.587+03	1	1
10	123	125000	0	da551fbf-70b0-43e8-8601-9f89bac6fd8e.jpg	2023-10-31 17:20:42.504+03	2023-10-31 17:20:42.504+03	4	2
14	Бирюса	50000	0	ad8c7a04-241b-46b6-ac5f-57f125b8b1b7.jpg	2023-10-31 17:55:33.63+03	2023-10-31 17:55:33.63+03	1	1
16	ывпывпфы	0	0	ac9e6187-1fec-44f7-a16a-4fd56d9677d3.jpg	2023-10-31 17:56:57.679+03	2023-10-31 17:56:57.679+03	2	2
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ratings (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;
\.


--
-- Data for Name: type_brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
1	Холодильник	2023-09-29 12:12:20.534+03	2023-09-29 12:12:20.534+03
2	Смартфоны	2023-09-29 12:19:59.301+03	2023-09-29 12:19:59.301+03
4	Lenovo	2023-10-10 16:11:17.337+03	2023-10-10 16:11:17.337+03
5	LG	2023-10-10 16:12:53.302+03	2023-10-10 16:12:53.302+03
6	Sony	2023-10-10 16:13:16.418+03	2023-10-10 16:13:16.418+03
7	Panasonic	2023-10-10 16:13:40.472+03	2023-10-10 16:13:40.472+03
8	Philips	2023-10-10 16:15:12.879+03	2023-10-10 16:15:12.879+03
9	Xiaomi	2023-10-10 16:15:27.076+03	2023-10-10 16:15:27.076+03
10	Кондиционеры	2023-10-31 13:55:02.36+03	2023-10-31 13:55:02.36+03
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
1	user@mail.ru	$2b$05$JIkPPko65t.BMKYRsZq.UuxosWTo2270NzlYUxs8IuXIFLjkUNqxK	USER	2023-10-10 12:05:34.434+03	2023-10-10 12:05:34.434+03
2	user111@mail.ru	$2b$05$KiPJe4.l85iVHRYd4G.t.eMCnrrrKwzM7FzEDm/noGvj7LHBMxVi2	USER	2023-10-10 12:07:19.465+03	2023-10-10 12:07:19.465+03
3	user1311@mail.ru	$2b$05$K.1qXuB5QivFrQmzYseKSO4jw4IG9LaPp3NUFC.FqvJnBnZYEwesS	USER	2023-10-10 12:09:02.556+03	2023-10-10 12:09:02.556+03
4	user5@mail.ru	$2b$05$LdJbVoJ50h1Ahxv0lw90pucZ0q91gL9z7T7eERukK.dy./JjOHwrS	USER	2023-10-10 12:09:53.634+03	2023-10-10 12:09:53.634+03
5	user56@mail.ru	$2b$05$EFyUSscuPP/F.78JJZzCO.CW1Ref.gERD9j5ANBA3IDIr12Do0Fza	USER	2023-10-10 12:12:33.805+03	2023-10-10 12:12:33.805+03
6	user564@mail.ru	$2b$05$EsVnjwGTZJQQOTaTLAM4zuG6TCumbNIyCoCOti6mexVuknjidYDbu	USER	2023-10-10 12:55:58.127+03	2023-10-10 12:55:58.127+03
7	useradm@mail.ru	$2b$05$kBZn6Z.IVl4HQw6VIoHLMO81b3aFkM4fojUyanZGfDCaZg/PV86Q2	ADMIN	2023-10-10 13:50:25.678+03	2023-10-10 13:50:25.678+03
8	user555@mail.ru	$2b$05$YJyjuYmacEK/YuQTRnXuFuEmAM4T1xGxz39cLV8wXH1SbNdJ5df4m	USER	2023-10-10 15:23:41.033+03	2023-10-10 15:23:41.033+03
9	user777@mail.ru	$2b$05$E0e1sbG7yg31dp5GiL5JHeyKf57CAiWVd2A/POCdMjweM1qkucKya	ADMIN	2023-10-10 15:25:13.391+03	2023-10-10 15:25:13.391+03
10	user888@mail.ru	$2b$05$B9Dy2jMI3ajc41iZkSoLKetviflFMvtEo1wt6l61hdVRc5pKk03Vi	PADMIN	2023-10-10 15:51:28.556+03	2023-10-10 15:51:28.556+03
11	user9@mail.ru	$2b$05$1Qv7CjVVs6UVnfFevgTNVeEZ1PoiA7hnsXJ6H2Fasnr/lgndME0Ly	USER	2023-10-30 15:48:31.124+03	2023-10-30 15:48:31.124+03
12	vladimir@mail.ru	$2b$05$QTJ7xrAXXNVG6cKL0V4/oe3TSm31Vra/p6CxbtnJoAJkln.NgTA0e	ADMIN	2023-10-30 15:49:10.104+03	2023-10-30 15:49:10.104+03
13	hello@mail.ru	$2b$05$oWqtbzy2zSMMg/stpqEyI.lvnvIHirlV6WsavOT14oQfpJi627cQO	ADMIN	2023-10-30 16:12:08.891+03	2023-10-30 16:12:08.891+03
\.


--
-- Name: basket_devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_devices_id_seq', 1, false);


--
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 13, true);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 5, true);


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devices_id_seq', 17, true);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 10, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 13, true);


--
-- Name: basket_devices basket_devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);


--
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: devices devices_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);


--
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);


--
-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");


--
-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: basket_devices basket_devices_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: basket_devices basket_devices_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: devices devices_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: devices devices_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ratings ratings_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


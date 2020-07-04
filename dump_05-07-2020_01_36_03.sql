--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO databasepostgresql_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO databasepostgresql_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO databasepostgresql_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO databasepostgresql_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO databasepostgresql_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO databasepostgresql_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO databasepostgresql_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO databasepostgresql_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO databasepostgresql_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO databasepostgresql_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO databasepostgresql_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO databasepostgresql_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO databasepostgresql_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO databasepostgresql_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO databasepostgresql_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO databasepostgresql_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO databasepostgresql_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO databasepostgresql_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO databasepostgresql_user;

--
-- Name: kandilli_kandilli; Type: TABLE; Schema: public; Owner: databasepostgresql_user
--

CREATE TABLE public.kandilli_kandilli (
    id integer NOT NULL,
    tarih date,
    saat time without time zone,
    enlem double precision,
    boylam double precision,
    derinlikkm double precision,
    md double precision,
    ml double precision,
    mw double precision,
    yer character varying(200),
    cozumniteligi character varying(200)
);


ALTER TABLE public.kandilli_kandilli OWNER TO databasepostgresql_user;

--
-- Name: kandilli_kandilli_id_seq; Type: SEQUENCE; Schema: public; Owner: databasepostgresql_user
--

CREATE SEQUENCE public.kandilli_kandilli_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kandilli_kandilli_id_seq OWNER TO databasepostgresql_user;

--
-- Name: kandilli_kandilli_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: databasepostgresql_user
--

ALTER SEQUENCE public.kandilli_kandilli_id_seq OWNED BY public.kandilli_kandilli.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: kandilli_kandilli id; Type: DEFAULT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.kandilli_kandilli ALTER COLUMN id SET DEFAULT nextval('public.kandilli_kandilli_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add kandilli	7	add_kandilli
26	Can change kandilli	7	change_kandilli
27	Can delete kandilli	7	delete_kandilli
28	Can view kandilli	7	view_kandilli
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	kandilli	kandilli
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-06-05 20:51:58.49758+00
2	auth	0001_initial	2020-06-05 20:51:59.070368+00
3	admin	0001_initial	2020-06-05 20:51:59.826715+00
4	admin	0002_logentry_remove_auto_add	2020-06-05 20:52:00.032142+00
5	admin	0003_logentry_add_action_flag_choices	2020-06-05 20:52:00.108367+00
6	contenttypes	0002_remove_content_type_name	2020-06-05 20:52:00.259389+00
7	auth	0002_alter_permission_name_max_length	2020-06-05 20:52:00.312254+00
8	auth	0003_alter_user_email_max_length	2020-06-05 20:52:00.396291+00
9	auth	0004_alter_user_username_opts	2020-06-05 20:52:00.472352+00
10	auth	0005_alter_user_last_login_null	2020-06-05 20:52:00.564501+00
11	auth	0006_require_contenttypes_0002	2020-06-05 20:52:00.59461+00
12	auth	0007_alter_validators_add_error_messages	2020-06-05 20:52:00.679554+00
13	auth	0008_alter_user_username_max_length	2020-06-05 20:52:00.833149+00
14	auth	0009_alter_user_last_name_max_length	2020-06-05 20:52:00.913122+00
15	auth	0010_alter_group_name_max_length	2020-06-05 20:52:00.990635+00
16	auth	0011_update_proxy_permissions	2020-06-05 20:52:01.063693+00
17	kandilli	0001_initial	2020-06-05 20:52:01.15936+00
18	sessions	0001_initial	2020-06-05 20:52:01.324579+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: kandilli_kandilli; Type: TABLE DATA; Schema: public; Owner: databasepostgresql_user
--

COPY public.kandilli_kandilli (id, tarih, saat, enlem, boylam, derinlikkm, md, ml, mw, yer, cozumniteligi) FROM stdin;
1	2020-06-05	23:47:11	38.3673	38.6717	15	0	1.6	0	ERENLI-(MALATYA)	İlksel
2	2020-06-05	23:11:45	38.3093	38.7923	6.6	0	1.9	0	BOLUKKAYA-PUTURGE(MALATYA)	İlksel
3	2020-06-05	23:02:15	38.3475	38.8123	8.7	0	2	0	AKUSAGI-KALE(MALATYA)	İlksel
4	2020-06-05	22:56:23	39.0862	27.7865	19.9	0	2.3	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
5	2020-06-05	22:50:44	37.3553	35.1895	3.4	0	2.1	0	MERKEZBOZTAHTA-KARAISALI(ADANA)	İlksel
6	2020-06-05	22:35:02	38.3115	38.8197	3.3	0	2	0	BOLUKKAYA-PUTURGE(MALATYA)	İlksel
7	2020-06-05	22:24:59	38.3197	38.7445	3.2	0	2.2	0	SARIOT-KALE(MALATYA)	İlksel
8	2020-06-05	22:22:48	38.2935	38.7832	11.1	0	1.7	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
9	2020-06-05	22:07:18	38.4675	38.8965	7.5	0	1.7	0	KARAALI-BASKIL(ELAZIG)	İlksel
10	2020-06-05	22:02:58	38.4132	38.8482	7.1	0	1.5	0	KARAAGAC-KALE(MALATYA)	İlksel
11	2020-06-05	21:58:48	38.39	38.7838	21.9	0	1.7	0	KOZLUK-KALE(MALATYA)	İlksel
12	2020-06-05	21:53:43	38.3577	38.7817	2.9	0	2.1	0	CANAKCI-KALE(MALATYA)	İlksel
13	2020-06-05	21:48:33	38.4275	38.7938	6.9	0	2	0	KALE(MALATYA)	İlksel
14	2020-06-05	21:44:25	38.3175	38.7647	5	0	2	0	CANAKCI-KALE(MALATYA)	İlksel
15	2020-06-05	21:40:58	38.3318	38.7362	1.8	0	1.8	0	SARIOT-KALE(MALATYA)	İlksel
16	2020-06-05	21:34:39	38.386	39.1725	2.5	0	1.4	0	KOSEBAYIR-SIVRICE(ELAZIG)	İlksel
17	2020-06-05	21:30:54	38.331	38.7803	13.2	0	1.6	0	CANAKCI-KALE(MALATYA)	İlksel
18	2020-06-05	21:18:26	38.3073	38.8202	7.4	0	1.7	0	BOLUKKAYA-PUTURGE(MALATYA)	İlksel
19	2020-06-05	21:17:30	38.2745	38.8675	25.3	0	1.9	0	YEDIYOL-PUTURGE(MALATYA)	İlksel
20	2020-06-05	21:15:47	38.3302	38.8163	20.2	0	1.7	0	UYANIK-KALE(MALATYA)	İlksel
21	2020-06-05	21:14:00	38.2852	38.7387	5.2	0	2.3	0	BALPINARI-PUTURGE(MALATYA)REVIZE01	REVIZE01(2020.06.05-21:13:59)
22	2020-06-05	21:11:55	38.3737	38.6907	4.8	0	1.1	0	DARIPINAR-KALE(MALATYA)	İlksel
23	2020-06-05	21:06:19	38.2418	38.7037	4.6	0	5.3	5.3	CAYKOY-PUTURGE(MALATYA)	İlksel
24	2020-06-05	20:25:19	37.6128	38.5885	16.7	0	1.7	0	BELOREN-KAHTA(ADIYAMAN)	İlksel
25	2020-06-05	19:58:02	37.3335	36.0982	5.4	0	2.1	0	MEZRETLI-KADIRLI(OSMANIYE)	İlksel
26	2020-06-05	19:04:07	37.3142	35.201	5.2	0	2.2	0	EGLENCE-KARAISALI(ADANA)REVIZE01	REVIZE01(2020.06.05-19:04:06)
27	2020-06-05	19:01:07	34.1237	25.594	5	0	3.6	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
28	2020-06-05	17:29:53	36.991	37.4088	0	0	1.9	0	ZEYTINLI-SAHINBEY(GAZIANTEP)	İlksel
29	2020-06-05	17:10:29	36.918	28.502	3.7	0	2.3	0	CORUS-ULA(MUGLA)REVIZE01	REVIZE01(2020.06.05-17:10:29)
30	2020-06-05	16:58:42	37.3573	35.231	6.4	0	2.6	0	MERKEZBOZTAHTA-KARAISALI(ADANA)	İlksel
31	2020-06-05	16:49:25	39.8473	33.0368	8.3	0	1.9	0	MAMAK(ANKARA)	İlksel
32	2020-06-05	16:34:09	36.1418	33.1792	11.8	0	1.7	0	GOZCE-BOZYAZI(MERSIN)	İlksel
33	2020-06-05	16:32:24	37.513	35.967	5	0	1.3	0	AKDAM-SUMBAS(OSMANIYE)	İlksel
34	2020-06-05	15:41:06	38.4175	39.2267	5.1	0	1	0	KURKKOY-SIVRICE(ELAZIG)	İlksel
35	2020-06-05	15:39:06	39.3657	27.5082	6.7	0	2.1	0	SOGUTCUK-SOMA(MANISA)REVIZE01	REVIZE01(2020.06.05-15:39:08)
36	2020-06-05	15:23:52	37.957	28.0238	19.2	0	1.3	0	AKCAKOY-KOSK(AYDIN)	İlksel
37	2020-06-05	15:12:42	38.4713	39.2102	3.3	0	1.3	0	DEDEYOLU-SIVRICE(ELAZIG)	İlksel
38	2020-06-05	14:56:59	36.3542	28.9558	16.1	0	2.3	0	OLUDENIZACIKLARI-MUGLA(AKDENIZ)	İlksel
39	2020-06-05	14:52:30	36.8687	27.9748	13.1	0	1.8	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
40	2020-06-05	14:28:38	37.8585	29.7108	8.1	0	2.5	0	DARICILAR-DAZKIRI(AFYONKARAHISAR)	İlksel
41	2020-06-05	14:21:27	38.4418	39.2152	2	0	1.7	0	KURKKOY-SIVRICE(ELAZIG)	İlksel
42	2020-06-05	14:17:31	35.4765	26.7547	5	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
43	2020-06-05	14:15:50	35.412	26.7933	3.8	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
44	2020-06-05	14:08:39	39.6083	26.0512	5.3	0	2.5	0	TAVAKLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
45	2020-06-05	14:06:14	38.4127	39.244	9.3	0	0.7	0	SOGUKPINAR-SIVRICE(ELAZIG)	İlksel
46	2020-06-05	14:01:49	38.4692	39.2393	5	0	1.8	0	ALINCIK-SIVRICE(ELAZIG)	İlksel
47	2020-06-05	14:00:37	38.4165	39.2137	3.9	0	1.3	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
48	2020-06-05	13:58:16	38.5017	39.219	10	0	2.3	0	KAVAKTEPE-(ELAZIG)	İlksel
49	2020-06-05	13:56:01	38.5417	39.3782	13.8	0	2.1	0	DEREBOGAZI-(ELAZIG)	İlksel
50	2020-06-05	13:54:18	38.4817	39.2842	4.9	0	1.2	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
51	2020-06-05	13:43:24	38.523	39.3093	10.2	0	1.3	0	ACIPAYAM-(ELAZIG)	İlksel
52	2020-06-05	13:24:19	36.8558	34.5048	0	0	1.7	0	INSU-YENISEHIR(MERSIN)	İlksel
53	2020-06-05	13:02:39	37.3057	36.0327	11.3	0	1.5	0	VAYVAYLI-KADIRLI(OSMANIYE)	İlksel
54	2020-06-05	13:00:00	41.129	28.8868	0	0	1.3	0	SULTANGAZI(ISTANBUL)	İlksel
55	2020-06-05	12:25:59	40.633	29.0337	7.3	0	2	0	KOCADERE-CINARCIK(YALOVA)	İlksel
56	2020-06-05	12:02:17	37.1398	27.895	0	0	1.5	0	BAGDAMLARI-MILAS(MUGLA)	İlksel
57	2020-06-05	11:54:11	37.2497	27.9122	0	0	1.3	0	CAMLIBELEN-MILAS(MUGLA)	İlksel
58	2020-06-05	11:51:42	39.1443	27.5697	0	0	1.6	0	DARKALE-SOMA(MANISA)	İlksel
59	2020-06-05	11:44:22	37.2198	37.1997	0	0	1.5	0	UCGOZE-SEHITKAMIL(GAZIANTEP)	İlksel
60	2020-06-05	11:32:33	35.5845	26.6755	12.8	0	1.5	0	AKDENIZ	İlksel
61	2020-06-05	11:22:08	37.1753	37.2305	0	0	1.9	0	BOYNO-SEHITKAMIL(GAZIANTEP)	İlksel
62	2020-06-05	11:13:38	35.4963	26.7252	2.6	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
63	2020-06-05	11:03:41	38.3282	39.2853	12.3	0	0.4	0	YAZYAGMURU-CUNGUS(DIYARBAKIR)	İlksel
64	2020-06-05	10:51:30	35.5655	26.6825	4	0	2.3	0	AKDENIZ	İlksel
65	2020-06-05	10:48:33	37.378	27.0023	10.7	0	1.8	0	EGEDENIZI	İlksel
66	2020-06-05	10:33:23	35.5447	26.685	5	0	2.1	0	AKDENIZ	İlksel
67	2020-06-05	10:12:06	35.574	26.7268	5.5	0	2.7	0	AKDENIZ	İlksel
68	2020-06-05	10:11:47	37.993	28.866	5.3	0	1.6	0	BOLMEKAYA-BULDAN(DENIZLI)	İlksel
69	2020-06-05	09:44:29	39.1072	27.8297	4.8	0	2	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
70	2020-06-05	09:29:38	34.2598	25.5082	5	0	2.7	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
71	2020-06-05	09:05:54	37.0618	35.5207	23.6	0	1.6	0	HASANBEYLI-SARICAM(ADANA)	İlksel
72	2020-06-05	06:56:39	37.5835	29.1792	1.6	0	1.5	0	SARIABAT-TAVAS(DENIZLI)	İlksel
73	2020-06-05	05:48:12	35.3537	26.8813	24.9	0	2	0	GIRITADASI(AKDENIZ)	İlksel
74	2020-06-05	04:06:40	36.8785	29.3833	5.3	0	2.6	0	BALLIK-ALTINYAYLA(BURDUR)	İlksel
75	2020-06-05	02:32:50	37.291	36.0342	21.9	0	1.7	0	VAYVAYLI-KADIRLI(OSMANIYE)	İlksel
76	2020-06-05	02:17:14	37.654	26.7217	8.1	0	2.4	0	SISAMADASI(EGEDENIZI)	İlksel
77	2020-06-05	02:02:36	38.687	38.2258	8.8	0	1.9	0	ASAR-ARGUVAN(MALATYA)	İlksel
78	2020-06-05	01:43:36	36.9375	27.4885	4.6	0	1.3	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
79	2020-06-05	01:20:36	36.9347	27.4602	3	0	1.6	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
80	2020-06-05	01:09:48	36.9172	27.4378	11.5	0	1.3	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
81	2020-06-05	00:28:11	35.5878	26.7442	5.9	0	2.5	0	AKDENIZ	İlksel
82	2020-06-05	00:24:13	35.5488	26.7902	7.6	0	2	0	AKDENIZ	İlksel
83	2020-06-05	00:22:28	40.3893	28.2272	4.3	0	1.7	0	KURSUNLU-KARACABEY(BURSA)	İlksel
84	2020-06-05	00:10:30	35.6125	26.7315	5.1	0	4.3	4.3	AKDENIZ	İlksel
85	2020-06-04	23:55:24	34.723	23.1407	26.2	0	3	3	GIRITADASI(AKDENIZ)	İlksel
86	2020-06-04	23:54:34	35.6527	29.3838	6.4	0	1.3	0	AKDENIZ	İlksel
87	2020-06-04	23:42:32	35.481	26.7243	10.6	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
88	2020-06-04	22:38:20	37.0223	28.2815	5.8	0	1.9	0	CETIBELI-MARMARIS(MUGLA)	İlksel
89	2020-06-04	22:26:01	35.4857	26.8122	10.1	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
90	2020-06-04	21:45:49	35.193	26.9722	14.6	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
91	2020-06-04	21:43:22	38.9905	27.8948	4.4	0	1.4	0	DINGILLER-AKHISAR(MANISA)	İlksel
92	2020-06-04	21:25:52	36.7893	36.1798	9	0	1.8	0	PAYAS-DORTYOL(HATAY)	İlksel
93	2020-06-04	21:24:12	36.7568	36.1535	5	0	1.9	0	PAYAS-DORTYOL(HATAY)	İlksel
94	2020-06-04	21:15:11	36.8458	36.2392	5	0	3.4	3.5	DORTYOL(HATAY)	İlksel
95	2020-06-04	21:01:18	35.9447	27.4882	26.4	0	2.2	0	AKDENIZ	İlksel
96	2020-06-04	20:58:08	35.9708	31.5772	16.6	0	1.8	0	AKDENIZ	İlksel
97	2020-06-04	20:18:33	39.1647	27.2312	8.3	0	2.1	0	YUKARIKIRIKLAR-BERGAMA(IZMIR)	İlksel
98	2020-06-04	20:00:38	39.1968	28.9187	9.9	0	1.9	0	GUNEY-SIMAV(KUTAHYA)	İlksel
99	2020-06-04	19:16:52	35.2385	28.6293	6.3	0	2.1	0	AKDENIZ	İlksel
100	2020-06-04	19:15:31	36.0345	29.0115	18	0	1.7	0	AKDENIZ	İlksel
101	2020-06-04	17:37:00	36.9643	27.4477	5.4	0	2.5	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
102	2020-06-04	17:02:25	38.4848	25.773	5	0	2.6	0	SAKIZADASI(EGEDENIZI)	İlksel
103	2020-06-04	16:00:49	35.2305	26.9372	9.7	0	2.5	2.5	GIRITADASI(AKDENIZ)	İlksel
104	2020-06-04	15:35:30	40.3757	26.092	5.3	0	2.1	0	SAROSKORFEZI(EGEDENIZI)	İlksel
105	2020-06-04	15:14:49	40.369	26.1035	2.1	0	3.1	3.1	SAROSKORFEZI(EGEDENIZI)	İlksel
106	2020-06-04	15:01:52	36.3918	33.9218	10.6	0	1.8	0	SILIFKE(MERSIN)	İlksel
107	2020-06-04	15:01:01	39.1242	29.0205	24.5	0	1.5	1.6	KAPIKAYA-SIMAV(KUTAHYA)REVIZE01	REVIZE01(2020.06.04-15:01:05)
108	2020-06-04	14:49:39	35.4537	26.817	11.2	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
109	2020-06-04	14:47:33	40.021	27.1103	12.2	0	1.4	0	YENICERI-CAN(CANAKKALE)	İlksel
110	2020-06-04	13:54:31	39.2773	27.5487	9.6	0	1.8	0	SEVISLER-SOMA(MANISA)	İlksel
111	2020-06-04	12:58:53	40.1382	27.3502	7.2	0	2.3	0	YOLINDI-BIGA(CANAKKALE)	İlksel
112	2020-06-04	12:51:56	35.3963	26.7652	7.9	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
113	2020-06-04	12:41:16	39.2877	27.5492	5	0	1.5	0	SEVISLER-SOMA(MANISA)REVIZE01	REVIZE01(2020.06.04-12:41:16)
114	2020-06-04	12:30:31	37.4093	31.6595	5	0	2	0	UGURLU-DEREBUCAK(KONYA)	İlksel
115	2020-06-04	12:22:03	37.0848	28.7307	1.9	0	1.9	0	YAYLA-KOYCEGIZ(MUGLA)	İlksel
116	2020-06-04	12:08:53	39.6985	30.8273	0	0	1.8	0	KARATEPE-ODUNPAZARI(ESKISEHIR)	İlksel
117	2020-06-04	12:04:45	37.2893	28.204	0	0	2	0	YENIKARAKUYU-YATAGAN(MUGLA)	İlksel
118	2020-06-04	12:02:07	37.1717	28.2928	16.6	0	1.6	0	YESILYURT-(MUGLA)	İlksel
119	2020-06-04	11:47:48	36.7067	28.8768	0	0	1.5	0	KAPIKARGIN-DALAMAN(MUGLA)	İlksel
120	2020-06-04	11:15:33	35.424	26.802	8.8	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
121	2020-06-04	11:06:57	36.9143	27.662	8.5	0	1.4	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
122	2020-06-04	11:03:31	40.5813	33.6072	16	0	1.7	0	CANKIRI	İlksel
123	2020-06-04	10:58:01	35.4592	26.752	6.3	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
124	2020-06-04	10:28:32	35.5295	26.7245	1.1	0	2.5	0	AKDENIZ	İlksel
125	2020-06-04	10:19:41	35.5483	26.7195	5.4	0	3.2	3.2	AKDENIZ	İlksel
126	2020-06-04	10:15:58	38.8843	43.5107	5	0	3	2.9	ERMISLER-(VAN)	İlksel
127	2020-06-04	09:51:42	40.4038	34.749	27.7	0	2.1	0	SAZDEGIRMENI-(CORUM)	İlksel
128	2020-06-04	09:50:53	35.4373	26.7637	8	0	3.3	3.2	GIRITADASI(AKDENIZ)	İlksel
129	2020-06-04	09:47:30	40.241	31.7435	16.3	0	1.6	0	KOZAGAC-BEYPAZARI(ANKARA)	İlksel
130	2020-06-04	09:42:44	35.5047	26.7182	7.2	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
131	2020-06-04	09:30:30	35.5417	26.729	5.6	0	3.1	3.1	AKDENIZ	İlksel
132	2020-06-04	09:26:21	35.2457	26.9303	16.1	0	3	2.8	GIRITADASI(AKDENIZ)	İlksel
133	2020-06-04	09:22:23	35.3902	26.8257	18.7	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
134	2020-06-04	09:18:06	35.479	26.7393	11.7	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
135	2020-06-04	09:14:48	35.4688	26.7778	12.7	0	3.1	3	GIRITADASI(AKDENIZ)	İlksel
136	2020-06-04	09:12:14	39.4355	28.0847	7.1	0	1.7	0	BADEMLI-BIGADIC(BALIKESIR)	İlksel
137	2020-06-04	09:09:28	35.5488	26.7495	10.6	0	2.7	0	AKDENIZ	İlksel
138	2020-06-04	08:03:44	39.0293	27.9073	5	0	1.9	0	KARAKOY-AKHISAR(MANISA)	İlksel
139	2020-06-04	07:57:03	34.2735	25.6522	42.8	0	3.3	3.3	GIRITADASIACIKLARI(AKDENIZ)	İlksel
140	2020-06-04	06:37:40	37.9835	27.9948	10.5	0	2.3	0	CAYIRKOY-ODEMIS(IZMIR)	İlksel
141	2020-06-04	06:36:21	40.5228	34.9403	19.8	0	1.7	0	YAYDIGIN-(CORUM)	İlksel
142	2020-06-04	05:36:51	39.5652	26.0095	6.2	0	2.6	0	GULPINARACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
143	2020-06-04	05:31:03	39.7402	27.7922	7.7	0	2.8	0	OVACIK-(BALIKESIR)	İlksel
144	2020-06-04	05:11:02	38.4045	39.2338	4.8	0	1.5	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
145	2020-06-04	04:51:24	36.9523	27.3817	11.8	0	3.6	3.5	GOKOVAKORFEZI(AKDENIZ)	İlksel
146	2020-06-04	04:46:43	38.4038	38.8087	8.9	0	2.2	0	GULENKOY-KALE(MALATYA)	İlksel
147	2020-06-04	02:53:40	36.8062	28.1295	27.2	0	1.3	0	HISARONU-MARMARIS(MUGLA)	İlksel
148	2020-06-03	22:09:40	35.1438	32.9915	3.7	0	2.5	0	KIBRIS-GUZELYURT	İlksel
149	2020-06-03	22:03:36	40.5168	34.9035	21.5	0	2	0	YAYDIGIN-(CORUM)	İlksel
150	2020-06-03	22:01:52	39.1162	29.1272	9.5	0	1.6	0	SENKOY-SIMAV(KUTAHYA)	İlksel
151	2020-06-03	19:40:02	37.3445	35.965	8.8	0	1.4	0	AKOVA-KADIRLI(OSMANIYE)	İlksel
152	2020-06-03	18:24:58	35.4915	26.7592	7.7	0	2.4	0	GIRITADASI(AKDENIZ)	İlksel
153	2020-06-03	18:23:08	35.4827	26.7462	9.1	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
154	2020-06-03	18:19:51	36.984	27.7432	9.5	0	1.2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
155	2020-06-03	17:42:12	37.2815	35.9723	20	0	1.8	0	KERIMLI-KADIRLI(OSMANIYE)	İlksel
156	2020-06-03	16:45:09	40.6493	35.3527	8.1	0	2.4	0	MAHMUTLU-MERZIFON(AMASYA)	İlksel
157	2020-06-03	16:11:10	40.537	34.898	7.3	0	3.9	3.9	CELILKIRI-(CORUM)	İlksel
158	2020-06-03	14:10:29	37.7988	27.4003	10.1	0	1.4	0	YAMAC-SOKE(AYDIN)	İlksel
159	2020-06-03	13:39:11	37.3007	36.0718	5	0	2.1	0	TOPRAKTEPE-KADIRLI(OSMANIYE)	İlksel
160	2020-06-03	12:34:11	38.5378	27.3442	3.7	0	1.3	0	KARAKOCA-(MANISA)	İlksel
161	2020-06-03	12:03:31	34.5242	25.9897	69.4	0	0	5.2	GIRITADASIACIKLARI(AKDENIZ)	İlksel
162	2020-06-03	12:01:55	37.1223	27.8588	0	0	2.1	0	PINARARASI-MILAS(MUGLA)	İlksel
163	2020-06-03	11:57:40	37.2208	28.2015	0	0	1.9	0	KAFACA-(MUGLA)	İlksel
164	2020-06-03	11:46:25	40.1483	31.3582	4.7	0	1.9	0	NALLIDERE-NALLIHAN(ANKARA)	İlksel
165	2020-06-03	11:46:15	35.6282	26.6963	5.9	0	2.4	0	AKDENIZ	İlksel
166	2020-06-03	11:17:05	34.7165	45.6423	3.1	0	5	5.1	IRAN-IRAKBORDERREGION	İlksel
167	2020-06-03	11:11:57	35.5153	26.7772	12.8	0	2.7	0	AKDENIZ	İlksel
168	2020-06-03	10:09:27	39.0923	27.5872	0	0	1.6	0	ADIL-SOMA(MANISA)	İlksel
169	2020-06-03	09:41:32	35.4387	26.7535	12.4	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
170	2020-06-03	09:34:35	36.8695	27.5437	5	0	1.3	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
171	2020-06-03	08:20:06	35.1527	29.1203	21.4	0	4.2	4.2	AKDENIZ	İlksel
172	2020-06-03	07:20:41	35.5155	26.7635	7.2	0	3.1	0	AKDENIZ	İlksel
173	2020-06-03	07:15:13	35.637	26.6485	5	0	2.4	0	AKDENIZ	İlksel
174	2020-06-03	06:49:52	35.5488	26.7337	5.9	0	2.9	0	AKDENIZ	İlksel
175	2020-06-03	06:37:08	35.3458	26.8422	11.3	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
176	2020-06-03	06:34:43	35.5488	26.7142	5.4	0	2.9	0	AKDENIZ	İlksel
177	2020-06-03	06:33:08	35.1432	27.0262	11.3	0	1.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
178	2020-06-03	06:30:13	35.5132	26.7623	7.3	0	2.1	0	AKDENIZ	İlksel
179	2020-06-03	06:19:50	35.4998	26.759	3.9	0	1.8	0	AKDENIZ	İlksel
180	2020-06-03	05:53:42	39.1145	27.761	7.8	0	1.8	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
181	2020-06-03	05:40:03	39.3615	40.9195	9.3	0	3.1	3.1	ILIPINAR-KARLIOVA(BINGOL)	İlksel
182	2020-06-03	05:32:45	35.4957	26.7507	7.9	0	3.7	4	GIRITADASI(AKDENIZ)	İlksel
183	2020-06-03	03:28:24	40.5528	36.5172	4.5	0	1.9	0	SOKUTAS-ERBAA(TOKAT)	İlksel
184	2020-06-03	03:21:54	35.3682	26.845	14	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
185	2020-06-03	03:09:45	35.2433	26.9223	8.2	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
186	2020-06-03	03:05:27	35.4388	26.803	14.3	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
187	2020-06-03	03:04:40	38.5062	39.1788	5.3	0	2.1	0	DEDEPINARI-(ELAZIG)	İlksel
188	2020-06-03	02:59:07	35.43	26.7917	10.7	0	3.1	0	GIRITADASI(AKDENIZ)	İlksel
189	2020-06-03	02:58:43	35.4987	26.7455	4.1	0	3.1	0	GIRITADASI(AKDENIZ)	İlksel
190	2020-06-03	02:57:49	38.5033	39.1713	5.4	0	2.1	0	DEDEPINARI-(ELAZIG)	İlksel
191	2020-06-03	02:54:59	35.5263	26.7347	5	0	3.1	0	AKDENIZ	İlksel
192	2020-06-03	02:41:58	35.5488	26.7148	15.1	0	2.1	0	AKDENIZ	İlksel
193	2020-06-03	02:26:29	38.5018	39.1735	4.2	0	0.7	0	DEDEPINARI-(ELAZIG)	İlksel
194	2020-06-03	02:25:51	38.5018	39.166	3.1	0	1.8	0	DEDEPINARI-(ELAZIG)	İlksel
195	2020-06-03	02:22:39	38.4952	39.168	3.3	0	1.2	0	DEDEPINARI-(ELAZIG)	İlksel
196	2020-06-03	02:22:27	38.4952	39.1682	2.5	0	2.7	0	DEDEPINARI-(ELAZIG)	İlksel
197	2020-06-03	02:22:12	37.3138	36.0218	9.5	0	4	4	HACIHALILOGLU-KADIRLI(OSMANIYE)	İlksel
198	2020-06-03	02:20:27	38.4988	39.1747	5.4	0	2.5	0	DEDEPINARI-(ELAZIG)	İlksel
199	2020-06-03	02:19:09	38.489	39.1672	6.4	0	2.9	0	DEDEPINARI-(ELAZIG)	İlksel
200	2020-06-03	00:39:16	38.2665	42.8132	7.5	0	2.2	0	TORELI-GEVAS(VAN)	İlksel
201	2020-06-03	00:22:17	38.7305	39.6383	6.2	0	1.9	0	EKINBAGI-KOVANCILAR(ELAZIG)	İlksel
202	2020-06-03	00:15:07	38.4325	39.2553	9.1	0	0.7	0	DUZBAHCE-SIVRICE(ELAZIG)	İlksel
203	2020-06-02	23:14:54	36.3775	26.5192	109.8	0	2.7	0	AKDENIZ	İlksel
204	2020-06-02	22:33:21	36.9413	27.7338	21.8	0	1.7	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
205	2020-06-02	21:45:02	39.1038	41.5635	18.8	0	2.1	0	KUSLUK-VARTO(MUS)	İlksel
206	2020-06-02	19:44:18	39.4178	27.8605	5	0	1.8	0	YESILLER-(BALIKESIR)	İlksel
207	2020-06-02	18:23:57	39.8513	40.7105	9.3	0	2.2	0	GULLUDERE-ASKALE(ERZURUM)	İlksel
208	2020-06-02	16:43:39	40.4533	30.9442	5.4	0	1.8	0	AKCAALAN-GOYNUK(BOLU)	İlksel
209	2020-06-02	16:35:36	39.379	26.0675	6.6	0	2.1	0	BADEMLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
210	2020-06-02	16:22:03	39.1203	27.5977	0	0	1.6	0	ADIL-SOMA(MANISA)	İlksel
211	2020-06-02	16:08:43	38.4882	39.3178	4.2	0	1	0	GUNEYKOY-SIVRICE(ELAZIG)	İlksel
212	2020-06-02	15:10:06	38.4525	26.8328	5.3	0	1.6	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
213	2020-06-02	14:57:22	39.305	40.8487	8.4	0	2.3	0	KAYNAK-KARLIOVA(BINGOL)	İlksel
214	2020-06-02	14:23:40	40.1772	42.658	5.5	0	2.8	0	KARAKURT-SARIKAMIS(KARS)	İlksel
215	2020-06-02	13:54:48	37.3718	35.2628	1.1	0	2.4	0	FILIKLI-KARAISALI(ADANA)	İlksel
216	2020-06-02	13:18:07	39.5558	29.6135	0	0	2	0	DEVEKAYASI-TAVSANLI(KUTAHYA)	İlksel
217	2020-06-02	12:33:48	37.5493	29.171	13.3	0	1.5	0	AYDOGDU-TAVAS(DENIZLI)	İlksel
218	2020-06-02	12:22:14	38.5545	39.3095	15.6	0	0.8	0	IKITEPE-(ELAZIG)	İlksel
219	2020-06-02	11:49:16	37.2123	28.2185	0	0	1.7	0	KAFACA-(MUGLA)	İlksel
220	2020-06-02	11:27:02	38.9038	43.2892	20.9	0	2.6	0	HALKALI-(VAN)	İlksel
221	2020-06-02	11:13:51	38.8845	43.5253	1.7	0	3.1	3.2	ERMISLER-(VAN)	İlksel
222	2020-06-02	11:09:16	37.9963	38.217	7.9	0	2.4	0	MESTAN-(ADIYAMAN)	İlksel
223	2020-06-02	07:55:24	37.0745	28.5833	14.2	0	1.4	0	BALCILAR-KOYCEGIZ(MUGLA)	İlksel
224	2020-06-02	05:31:56	35.5053	26.7845	9.8	0	2.2	0	AKDENIZ	İlksel
225	2020-06-02	05:09:40	38.0998	38.004	8.6	0	1.2	0	GUROBASI-DOGANSEHIR(MALATYA)	İlksel
226	2020-06-02	04:54:18	35.1145	27.7618	29.8	0	1.9	0	AKDENIZ	İlksel
227	2020-06-02	04:35:48	36.1018	28.4578	57.2	0	3.2	0	AKDENIZ	İlksel
228	2020-06-02	02:51:35	34.0238	25.5748	64.6	0	3.4	3.3	GIRITADASIACIKLARI(AKDENIZ)	İlksel
229	2020-06-02	02:33:32	38.5015	39.2968	12	0	2	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
230	2020-06-02	02:31:49	38.5337	39.363	8.9	0	2.6	0	CEVIZDERE-(ELAZIG)	İlksel
231	2020-06-02	02:22:13	35.5478	26.7193	5	0	1.6	0	AKDENIZ	İlksel
232	2020-06-02	02:15:43	35.2465	26.955	14.4	0	2	0	GIRITADASI(AKDENIZ)	İlksel
233	2020-06-02	01:37:40	37.1508	28.5942	3.9	0	1.4	0	YAYLASOGUT-ULA(MUGLA)	İlksel
234	2020-06-02	01:03:00	37.884	30.6485	5	0	1.6	0	BAYAT-ATABEY(ISPARTA)	İlksel
235	2020-06-02	00:55:31	38.4297	39.2288	5	0	2.2	0	KURKKOY-SIVRICE(ELAZIG)	İlksel
236	2020-06-01	23:56:11	35.277	27.9543	10.2	0	2.2	0	AKDENIZ	İlksel
237	2020-06-01	23:08:26	38.4362	40.2368	14.3	0	1.9	0	KELEKCI-DICLE(DIYARBAKIR)	İlksel
238	2020-06-01	22:47:36	36.8955	28.3147	15.7	0	1.6	0	BELDIBI-MARMARIS(MUGLA)	İlksel
239	2020-06-01	21:14:13	39.1293	27.789	4.9	0	2	0	HAMITLI-KIRKAGAC(MANISA)	İlksel
240	2020-06-01	20:55:21	38.382	38.9965	15.5	0	1.6	0	CANUSAGI-SIVRICE(ELAZIG)	İlksel
241	2020-06-01	20:04:48	39.317	34.8052	11	0	2.2	0	BASKOY-SEFAATLI(YOZGAT)	İlksel
242	2020-06-01	17:47:34	35.5247	26.7847	8.3	0	3	3.2	AKDENIZ	İlksel
243	2020-06-01	17:43:21	41.1358	28.74	4.8	0	0.9	0	SAMLAR-BASAKSEHIR(ISTANBUL)	İlksel
244	2020-06-01	17:25:21	34.0657	27.2735	9.4	0	2.5	2.5	GIRITADASIACIKLARI(AKDENIZ)	İlksel
245	2020-06-01	17:07:47	35.3817	26.9188	3	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
246	2020-06-01	17:05:31	37.3678	36.0093	5.4	0	1.8	0	KABAYAR-KADIRLI(OSMANIYE)	İlksel
247	2020-06-01	17:03:55	35.5887	26.7292	4.9	0	3.2	0	AKDENIZ	İlksel
248	2020-06-01	15:16:53	35.5257	26.7173	5.2	0	2.2	0	AKDENIZ	İlksel
249	2020-06-01	15:14:26	35.3482	26.878	17.6	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
250	2020-06-01	15:13:26	39.0157	26.0573	2.8	0	1.7	0	EGEDENIZI	İlksel
251	2020-06-01	14:43:39	40.9	28.166	16.6	0	2.3	0	MARMARADENIZI	İlksel
252	2020-06-01	13:56:20	36.7245	26.6753	107.2	0	3.6	3.5	AKDENIZ	İlksel
253	2020-06-01	13:00:38	40.4655	27.722	7	0	2	0	NARLI-ERDEK(BALIKESIR)	İlksel
254	2020-06-01	12:49:10	38.6137	44.0978	22.4	0	2.1	0	MOLLATOPUZ-OZALP(VAN)	İlksel
255	2020-06-01	12:35:05	37.1722	28.1818	0	0	1.4	0	CIFTLIKKOY-(MUGLA)	İlksel
256	2020-06-01	12:09:19	38.797	38.0958	8	0	2.3	0	YAGCA-HEKIMHAN(MALATYA)	İlksel
257	2020-06-01	11:51:50	35.5018	26.7692	7.3	0	3	0	AKDENIZ	İlksel
258	2020-06-01	11:45:44	38.3618	38.8917	29.3	0	1	0	KAYABAGLARI-SIVRICE(ELAZIG)	İlksel
259	2020-06-01	11:32:50	35.4333	26.8612	5	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
260	2020-06-01	10:45:48	38.4055	39.1457	7.6	0	0.9	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
261	2020-06-01	10:34:35	37.1757	37.2113	0	0	1.9	0	YESILCE-SEHITKAMIL(GAZIANTEP)	İlksel
262	2020-06-01	10:28:31	36.605	36.2902	12.6	0	1.5	0	GUZELKOY-ISKENDERUN(HATAY)	İlksel
263	2020-06-01	10:11:44	39.5972	26.0645	13.3	0	1.4	0	TAVAKLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
264	2020-06-01	09:57:34	39.1133	27.5253	0	0	1.2	0	DEREKOY-SOMA(MANISA)	İlksel
265	2020-06-01	09:07:41	38.7937	27.7583	5	0	1.2	0	BEYOBA-AKHISAR(MANISA)	İlksel
266	2020-06-01	07:51:34	38.9462	27.8743	5	0	1.7	0	CAMONU-AKHISAR(MANISA)	İlksel
267	2020-06-01	07:05:44	40.142	38.1973	5	0	2.3	0	BEYDEGIRMENI-SUSEHRI(SIVAS)	İlksel
268	2020-06-01	07:04:49	37.423	36.0137	5.4	0	1.6	0	RESADIYE-SUMBAS(OSMANIYE)	İlksel
269	2020-06-01	06:57:18	38.7002	38.1848	9.3	0	1.8	0	KOSAR-YAZIHAN(MALATYA)	İlksel
270	2020-06-01	06:24:59	39.3563	34.9447	12.3	0	1.4	0	COPLUCIFTLIGI-YENIFAKILI(YOZGAT)	İlksel
271	2020-06-01	06:17:11	35.6063	26.7642	7.3	0	2.6	0	AKDENIZ	İlksel
272	2020-06-01	06:03:56	35.5657	23.566	10.7	0	3.1	0	GIRITADASI(AKDENIZ)	İlksel
273	2020-06-01	05:44:08	35.5508	26.701	8.6	0	1.8	0	AKDENIZ	İlksel
274	2020-06-01	05:21:59	38.4502	39.2737	5	0	2.1	0	SIVRICE(ELAZIG)	İlksel
275	2020-06-01	04:43:46	38.4263	39.2057	2.9	0	2	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
276	2020-06-01	04:19:26	34.2853	26.0023	7.8	0	2.8	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
277	2020-06-01	03:51:53	34.327	25.4958	5	0	2.4	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
278	2020-06-01	03:42:05	35.6268	26.7667	9.6	0	2.3	0	AKDENIZ	İlksel
279	2020-06-01	03:19:42	35.9578	26.9142	17.5	0	2	0	AKDENIZ	İlksel
280	2020-06-01	02:49:14	38.4138	39.068	9.4	0	1.4	0	GOZELI-SIVRICE(ELAZIG)	İlksel
281	2020-06-01	02:41:00	36.2498	28.979	16.6	0	1.8	0	AKDENIZ	İlksel
282	2020-06-01	02:30:28	35.5457	26.765	5.4	0	2.1	0	AKDENIZ	İlksel
283	2020-06-01	01:39:40	40.1617	33.9655	5.4	0	2.1	0	KAVAKKOY-DELICE(KIRIKKALE)	İlksel
284	2020-06-01	00:42:38	38.3957	39.1493	5	0	1.5	0	KOSEBAYIR-SIVRICE(ELAZIG)	İlksel
285	2020-06-01	00:23:25	37.228	26.57	10.8	0	1.6	0	ONIKIADALAR(AKDENIZ)	İlksel
286	2020-05-31	23:01:08	38.6367	26.7548	11.1	0	2.9	0	FOCA(IZMIR)	İlksel
287	2020-05-31	21:47:48	35.5972	26.7512	6.9	0	2.1	0	AKDENIZ	İlksel
288	2020-05-31	21:37:42	35.6267	26.7092	7.8	0	2.2	0	AKDENIZ	İlksel
289	2020-05-31	20:28:00	38.6987	32.5768	12.9	0	1.7	0	KUYULUSEBIL-SARAYONU(KONYA)	İlksel
290	2020-05-31	19:45:17	35.6165	26.7328	8	0	2.9	0	AKDENIZ	İlksel
291	2020-05-31	19:40:01	38.9678	27.9173	11.2	0	1.9	0	CAMONU-AKHISAR(MANISA)	İlksel
292	2020-05-31	19:11:00	39.1633	41.0568	4	0	2.2	0	HASANOVA-KARLIOVA(BINGOL)	İlksel
293	2020-05-31	18:54:42	34.849	26.3013	22	0	2.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
294	2020-05-31	18:39:05	34.9253	26.2253	29.3	0	2.7	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
295	2020-05-31	18:34:23	34.7702	26.2847	16	0	2.6	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
296	2020-05-31	18:06:13	35.3558	26.158	6.3	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
297	2020-05-31	18:02:05	34.6895	26.268	12.7	0	3.5	3.2	GIRITADASIACIKLARI(AKDENIZ)	İlksel
298	2020-05-31	17:54:50	38.4742	39.2035	9.1	0	2	0	DEDEYOLU-SIVRICE(ELAZIG)	İlksel
299	2020-05-31	17:15:16	38.4428	42.5045	24.7	0	2.6	0	KOYLUCA-TATVAN(BITLIS)	İlksel
300	2020-05-31	16:55:06	39.3128	33.1668	5.3	0	1.7	0	SUYUGUZEL-BALA(ANKARA)	İlksel
301	2020-05-31	15:48:15	37.6428	29.2005	12.3	0	1.2	0	SARIABAT-TAVAS(DENIZLI)	İlksel
302	2020-05-31	15:24:09	35.5023	26.81	11.1	0	2.6	0	AKDENIZ	İlksel
303	2020-05-31	14:39:20	38.7918	43.538	5	0	3.3	3.2	DEGIRMENOZU-(VAN)	İlksel
304	2020-05-31	14:01:15	39.1258	36.1283	1	0	2.4	0	KUMEOREN-GEMEREK(SIVAS)	İlksel
305	2020-05-31	13:51:04	38.4655	26.7822	15	0	1.6	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
306	2020-05-31	13:05:52	39.2192	27.6768	8	0	1.7	0	EVCILER-SOMA(MANISA)	İlksel
307	2020-05-31	12:32:35	39.0693	27.6663	19.2	0	1.7	0	CIFTLIK-KIRKAGAC(MANISA)	İlksel
308	2020-05-31	12:30:09	35.3803	26.8555	17.2	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
309	2020-05-31	12:01:13	37.1502	27.8518	13	0	1.5	0	BAGDAMLARI-MILAS(MUGLA)	İlksel
310	2020-05-31	11:57:06	39.8252	28.7823	14.9	0	1.4	0	GAZIOLUK-ORHANELI(BURSA)	İlksel
311	2020-05-31	11:30:11	38.4717	39.198	1.3	0	1.6	0	DEDEYOLU-SIVRICE(ELAZIG)	İlksel
312	2020-05-31	09:56:15	38.4492	39.1962	4.3	0	1	0	DEDEYOLU-SIVRICE(ELAZIG)	İlksel
313	2020-05-31	08:26:40	36.4503	27.308	7	0	2.2	0	KOSADASI(AKDENIZ)	İlksel
314	2020-05-31	08:22:31	35.4932	26.7853	7.3	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
315	2020-05-31	08:17:25	34.2667	25.9877	22	0	3.6	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
316	2020-05-31	07:44:35	35.5623	26.7773	8.7	0	2	0	AKDENIZ	İlksel
317	2020-05-31	07:40:42	35.4815	26.75	5.1	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
318	2020-05-31	07:38:37	35.339	26.854	8.8	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
319	2020-05-31	07:37:32	35.3367	26.8558	8.8	0	2.4	0	GIRITADASI(AKDENIZ)	İlksel
320	2020-05-31	06:59:43	35.609	26.7247	9.8	0	2.3	0	AKDENIZ	İlksel
321	2020-05-31	06:58:34	39	27.9038	1.7	0	1.5	0	YENICE-AKHISAR(MANISA)	İlksel
322	2020-05-31	06:28:56	35.5837	26.7225	5.8	0	2.5	0	AKDENIZ	İlksel
323	2020-05-31	06:18:14	35.5117	26.7752	7.7	0	2.1	0	AKDENIZ	İlksel
324	2020-05-31	06:16:41	35.5173	26.7767	5.6	0	2.5	0	AKDENIZ	İlksel
325	2020-05-31	06:01:12	35.5483	26.7797	7.7	0	2.4	0	AKDENIZ	İlksel
326	2020-05-31	05:56:38	35.9538	27.2597	6	0	2	0	AKDENIZ	İlksel
327	2020-05-31	05:53:42	38.3948	25.6802	8.5	0	2	0	EGEDENIZI	İlksel
328	2020-05-31	05:36:11	40.5428	35.9665	5.5	0	2.4	0	YAGCIABDAL-(AMASYA)	İlksel
329	2020-05-31	05:31:05	35.6577	26.868	8.1	0	2.1	0	AKDENIZ	İlksel
330	2020-05-31	05:21:29	35.9563	27.2435	6	0	1.6	0	AKDENIZ	İlksel
331	2020-05-31	05:19:13	35.1045	27.168	14.5	0	2.1	0	AKDENIZ	İlksel
332	2020-05-31	05:17:29	39.021	25.9187	7	0	1.8	0	EGEDENIZI	İlksel
333	2020-05-31	05:14:57	35.527	26.7927	9.5	0	1.9	0	AKDENIZ	İlksel
334	2020-05-31	05:09:51	35.2472	26.985	15	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
335	2020-05-31	05:08:55	35.4395	26.749	3.8	0	1.6	0	GIRITADASI(AKDENIZ)	İlksel
336	2020-05-31	05:06:03	35.5488	26.8533	10.6	0	2.3	0	AKDENIZREVIZE01	REVIZE01(2020.05.31-05:06:03)
337	2020-05-31	04:59:04	35.4962	26.7898	7.4	0	2	0	AKDENIZ	İlksel
338	2020-05-31	04:56:11	35.5288	26.8762	5	0	2.1	0	AKDENIZ	İlksel
339	2020-05-31	04:55:13	35.5862	26.7792	1.7	0	2.2	0	AKDENIZ	İlksel
340	2020-05-31	04:52:15	39.0217	27.8537	6.9	0	2.1	0	GOKCEAHMET-AKHISAR(MANISA)	İlksel
341	2020-05-31	04:48:51	35.5687	26.742	5.7	0	1.5	0	AKDENIZ	İlksel
342	2020-05-31	04:46:50	35.6138	26.8928	8	0	2	0	AKDENIZ	İlksel
343	2020-05-31	04:33:45	35.5383	26.782	7.4	0	2.5	0	AKDENIZ	İlksel
344	2020-05-31	04:24:41	35.2552	27.0013	16.3	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
345	2020-05-31	04:19:51	40.5612	36.032	19.2	0	2.8	0	EZINEPAZAR-(AMASYA)	İlksel
346	2020-05-31	04:13:54	35.5938	26.7302	4.5	0	3.9	4	AKDENIZ	İlksel
347	2020-05-31	04:12:55	39.6755	25.6	2.8	0	2.2	0	EGEDENIZI	İlksel
348	2020-05-31	04:10:46	40.8133	25.6462	7.6	0	1.6	0	EGEDENIZI	İlksel
349	2020-05-31	04:02:14	35.4925	26.682	5	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
350	2020-05-31	04:01:04	35.547	26.759	5	0	2.3	0	AKDENIZ	İlksel
351	2020-05-31	03:57:06	35.5488	26.7467	8.9	0	3.7	3.9	AKDENIZ	İlksel
352	2020-05-31	03:41:48	35.3793	26.4262	80.2	0	2.4	0	GIRITADASI(AKDENIZ)	İlksel
353	2020-05-31	03:39:06	39.4117	40.0012	8.7	0	1.9	0	KAYIRLAR-PULUMUR(TUNCELI)	İlksel
354	2020-05-31	02:56:22	35.2288	27.0197	9.7	0	3	0	GIRITADASI(AKDENIZ)	İlksel
355	2020-05-31	02:50:12	35.5863	26.7245	1	0	3.9	4	AKDENIZ	İlksel
356	2020-05-31	02:34:03	40.8195	25.6382	5.9	0	2.1	0	EGEDENIZI	İlksel
357	2020-05-31	02:31:49	38.4453	39.1248	5.4	0	2.5	0	DEREBOYNU-SIVRICE(ELAZIG)	İlksel
358	2020-05-31	02:28:54	35.6612	26.8287	9.4	0	2.5	0	AKDENIZ	İlksel
359	2020-05-31	02:25:48	39.0113	27.8468	13	0	1.9	0	GOKCEAHMET-AKHISAR(MANISA)	İlksel
360	2020-05-31	01:57:39	35.6658	26.863	3.9	0	2.4	0	AKDENIZ	İlksel
361	2020-05-31	01:44:52	38.4068	39.2233	2.1	0	1.7	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
362	2020-05-31	01:34:51	38.3947	25.4932	5	0	2.5	0	EGEDENIZI	İlksel
363	2020-05-31	01:13:26	39.0623	27.8902	5.2	0	2.4	0	SELCIKLI-AKHISAR(MANISA)	İlksel
364	2020-05-31	00:53:57	37.3797	35.9912	22	0	1.9	0	KABAYAR-KADIRLI(OSMANIYE)	İlksel
365	2020-05-31	00:10:28	35.5493	26.7457	13.4	0	2.9	0	AKDENIZ	İlksel
366	2020-05-31	00:08:23	38.7298	27.7717	4.7	0	1	0	LUTFIYE-SARUHANLI(MANISA)	İlksel
367	2020-05-31	00:02:47	35.5928	26.732	8	0	2.3	0	AKDENIZ	İlksel
368	2020-05-31	00:01:14	38.7372	27.816	7.7	0	2.7	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
369	2020-05-30	23:03:30	35.5488	26.7572	12.4	0	3.1	3.3	AKDENIZ	İlksel
370	2020-05-30	22:58:47	37.3463	35.2293	7.2	0	2.1	0	MERKEZBOZTAHTA-KARAISALI(ADANA)	İlksel
371	2020-05-30	22:07:11	35.574	26.7473	5	0	2.2	0	AKDENIZ	İlksel
372	2020-05-30	22:04:33	35.6148	26.7227	6.3	0	2.6	0	AKDENIZ	İlksel
373	2020-05-30	21:43:31	35.5315	26.735	8.4	0	2.4	0	AKDENIZ	İlksel
374	2020-05-30	21:40:44	35.5645	26.767	8	0	2.1	0	AKDENIZ	İlksel
375	2020-05-30	21:35:04	35.5862	26.7373	1.9	0	3	2.8	AKDENIZ	İlksel
376	2020-05-30	21:28:20	35.5142	26.7867	15	0	2.8	0	AKDENIZ	İlksel
377	2020-05-30	21:25:08	38.3703	38.92	15.4	0	2.9	0	GELINDERE-SIVRICE(ELAZIG)	İlksel
378	2020-05-30	21:21:57	35.547	26.7538	12.8	0	4.4	4.5	AKDENIZ	İlksel
379	2020-05-30	20:12:09	39.0693	27.7852	20.5	0	1.8	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
380	2020-05-30	20:05:59	35.5773	26.7445	5	0	2.3	0	AKDENIZ	İlksel
381	2020-05-30	20:01:54	35.5503	26.7422	8.8	0	2.3	0	AKDENIZ	İlksel
382	2020-05-30	19:57:36	35.5488	26.724	7.4	0	2.4	0	AKDENIZ	İlksel
383	2020-05-30	19:20:37	38.9025	28.158	14.8	0	1.3	0	KAYACIK-GORDES(MANISA)	İlksel
384	2020-05-30	19:11:56	35.1252	27.0303	17.8	0	2.2	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
385	2020-05-30	19:08:52	35.5515	26.7458	8.1	0	2.8	0	AKDENIZ	İlksel
386	2020-05-30	19:06:49	35.5775	26.7243	6.2	0	3.2	3.2	AKDENIZ	İlksel
387	2020-05-30	18:58:34	35.5967	26.7185	5	0	4.1	4.3	AKDENIZ	İlksel
388	2020-05-30	18:51:03	35.6423	26.6877	5.2	0	2.9	0	AKDENIZ	İlksel
389	2020-05-30	17:32:22	40.3955	27.1562	9.2	0	2.5	0	CAKIRLI-BIGA(CANAKKALE)	İlksel
390	2020-05-30	16:35:59	37.0003	28.5372	11.8	0	1.7	0	CORUS-ULA(MUGLA)	İlksel
391	2020-05-30	16:25:44	39.1053	27.8383	5.2	0	1.8	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
392	2020-05-30	15:47:58	35.5073	26.7985	12.6	0	2.9	0	AKDENIZ	İlksel
393	2020-05-30	15:35:16	39.1802	42.7182	13.2	0	2	0	DUZCELI-PATNOS(AGRI)	İlksel
394	2020-05-30	15:23:24	35.5435	26.7575	7.4	0	2.7	0	AKDENIZ	İlksel
395	2020-05-30	15:01:45	38.8992	27.9655	5	0	1.5	0	CORUK-AKHISAR(MANISA)	İlksel
396	2020-05-30	14:53:58	35.6098	26.7188	5.5	0	2.5	0	AKDENIZ	İlksel
397	2020-05-30	14:49:41	35.5343	26.7708	2.1	0	2.4	0	AKDENIZ	İlksel
398	2020-05-30	14:39:10	35.5432	26.751	7.6	0	3.4	3.5	AKDENIZ	İlksel
399	2020-05-30	14:21:15	35.5642	26.7343	7.7	0	3.6	0	AKDENIZ	İlksel
400	2020-05-30	13:52:36	35.2687	26.9305	14.2	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
401	2020-05-30	13:18:03	35.493	26.752	3.5	0	1.7	0	GIRITADASI(AKDENIZ)	İlksel
402	2020-05-30	13:14:49	35.4472	26.8125	12.6	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
403	2020-05-30	13:11:11	35.5337	26.7285	5	0	2.3	0	AKDENIZ	İlksel
404	2020-05-30	12:36:15	38.1093	33.061	0	0	1.6	0	KATRANCI-KARATAY(KONYA)	İlksel
405	2020-05-30	12:32:49	37.2768	31.8782	0	0	2	0	MADENLI-SEYDISEHIR(KONYA)	İlksel
406	2020-05-30	12:27:54	39.4643	28.203	5.2	0	1.6	0	CAMKOY-BIGADIC(BALIKESIR)	İlksel
407	2020-05-30	12:25:05	39.8277	27.2017	17.7	0	1.4	0	RESADIYE-YENICE(CANAKKALE)	İlksel
408	2020-05-30	12:01:44	37.2417	28.1758	0	0	1.9	2.1	CAYBUKU-(MUGLA)	İlksel
409	2020-05-30	12:00:23	35.4695	26.785	12.8	0	2	0	GIRITADASI(AKDENIZ)	İlksel
410	2020-05-30	11:57:35	37.2048	28.1913	0	0	1.9	0	CIFTLIKKOY-(MUGLA)	İlksel
411	2020-05-30	11:54:18	39.0222	27.8425	6.9	0	2.7	0	GOKCEAHMET-AKHISAR(MANISA)	İlksel
412	2020-05-30	11:39:25	37.388	35.2683	5	0	3.2	3.4	FILIKLI-KARAISALI(ADANA)	İlksel
413	2020-05-30	11:24:11	37.2158	30.3165	12.6	0	1.7	0	YALINLIGEDIGI-KORKUTELI(ANTALYA)	İlksel
414	2020-05-30	11:21:42	35.3725	26.838	18	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
415	2020-05-30	10:41:43	35.5403	26.7658	7.2	0	2.2	0	AKDENIZ	İlksel
416	2020-05-30	10:36:11	35.5728	26.733	3.9	0	2.5	0	AKDENIZ	İlksel
417	2020-05-30	10:31:45	35.5472	26.7353	2.9	0	2.6	0	AKDENIZ	İlksel
418	2020-05-30	10:22:57	35.6025	26.6972	5.5	0	4	4.2	AKDENIZ	İlksel
419	2020-05-30	10:15:07	35.6007	26.7162	5.6	0	2.6	0	AKDENIZ	İlksel
420	2020-05-30	09:32:03	38.3628	38.9392	9.6	0	1.8	0	YUREKKAYA-SIVRICE(ELAZIG)	İlksel
421	2020-05-30	08:14:30	38.817	43.5048	5	0	2	0	DEREBEY-(VAN)	İlksel
422	2020-05-30	07:47:49	36.3268	29.3317	5	0	2.2	0	OVA-KAS(ANTALYA)	İlksel
423	2020-05-30	07:24:29	36.6067	36.0842	5.8	0	1.9	0	KARAAGAC-ISKENDERUN(HATAY)	İlksel
424	2020-05-30	05:53:45	38.5155	39.287	5	0	2.2	0	ACIPAYAM-(ELAZIG)	İlksel
425	2020-05-30	05:39:05	39.1342	27.8417	7.2	0	1.2	0	BOSTANCI-KIRKAGAC(MANISA)	İlksel
426	2020-05-30	05:38:25	38.4412	39.3363	5	0	1.7	0	SIVRICE(ELAZIG)	İlksel
427	2020-05-30	04:06:23	35.5488	26.7435	5	0	2	0	AKDENIZ	İlksel
428	2020-05-30	03:56:12	35.5992	26.7473	1.4	0	2.1	0	AKDENIZ	İlksel
429	2020-05-30	03:50:59	39.3417	40.5907	2.7	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
430	2020-05-30	03:36:24	35.51	26.7568	15.8	0	1.9	0	AKDENIZ	İlksel
431	2020-05-30	03:27:43	40.1332	31.7813	3.9	0	1.6	0	CANTIRLI-BEYPAZARI(ANKARA)	İlksel
432	2020-05-30	03:12:40	35.249	30.6233	9.3	0	2.5	0	AKDENIZ	İlksel
433	2020-05-30	02:39:53	38.4353	39.334	5	0	1.8	0	SIVRICE(ELAZIG)	İlksel
434	2020-05-30	02:20:14	39.1137	27.8542	5	0	1.4	0	BOSTANCI-KIRKAGAC(MANISA)	İlksel
435	2020-05-30	02:12:52	40.5363	29.1227	3.7	0	1.6	0	HAYDARIYE-GEMLIK(BURSA)	İlksel
436	2020-05-30	02:09:34	35.5237	26.7402	9.1	0	2.6	0	AKDENIZ	İlksel
437	2020-05-30	02:04:46	35.631	29.2608	8.7	0	1.6	0	AKDENIZ	İlksel
438	2020-05-30	01:49:04	38.3468	38.7333	7.9	0	1.8	0	SARIOT-KALE(MALATYA)	İlksel
439	2020-05-30	01:36:25	38.3962	39.2173	3.8	0	1.8	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
440	2020-05-30	01:10:30	35.0715	23.8212	52.5	0	3	0	GIRITADASI(AKDENIZ)	İlksel
441	2020-05-30	01:02:47	35.0983	24.0275	29.7	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
442	2020-05-30	00:55:17	35.591	26.709	3.1	0	2.7	0	AKDENIZ	İlksel
443	2020-05-30	00:33:45	35.5488	26.7355	12	0	2	0	AKDENIZ	İlksel
444	2020-05-30	00:14:56	35.5022	26.7708	15	0	2.8	0	AKDENIZ	İlksel
445	2020-05-29	23:25:58	35.57	26.7348	5	0	2.3	0	AKDENIZ	İlksel
446	2020-05-29	22:50:58	38.4388	39.096	6.9	0	2.5	0	KAMISLIK-SIVRICE(ELAZIG)	İlksel
447	2020-05-29	22:34:54	35.3025	27.889	9.7	0	2.9	0	AKDENIZ	İlksel
448	2020-05-29	22:08:50	37.3795	35.3158	7.9	0	2.7	0	KUSCUSOFULU-KARAISALI(ADANA)	İlksel
449	2020-05-29	21:49:09	34.0338	25.6803	5	0	3.2	3.4	GIRITADASIACIKLARI(AKDENIZ)	İlksel
450	2020-05-29	21:38:46	38.4762	40.141	12.3	0	2.1	0	BUKARDI-ARICAK(ELAZIG)	İlksel
451	2020-05-29	21:34:24	35.5488	26.735	8.3	0	2.6	0	AKDENIZ	İlksel
452	2020-05-29	21:02:14	35.5527	26.7367	8.1	0	2.6	0	AKDENIZ	İlksel
453	2020-05-29	20:56:53	35.6022	26.7123	2.4	0	2.9	0	AKDENIZ	İlksel
454	2020-05-29	20:18:45	35.2112	26.9802	11.7	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
455	2020-05-29	20:14:21	33.981	25.8098	9.7	0	3.7	3.9	GIRITADASIACIKLARI(AKDENIZ)	İlksel
456	2020-05-29	20:01:39	35.5488	26.765	11.8	0	3.6	3.6	AKDENIZ	İlksel
457	2020-05-29	19:54:08	35.6267	26.686	3.5	0	2.8	0	AKDENIZ	İlksel
458	2020-05-29	19:28:53	35.4882	26.7765	5	0	3.6	3.6	GIRITADASI(AKDENIZ)	İlksel
459	2020-05-29	19:25:17	35.2015	27.0037	19.3	0	3.2	0	GIRITADASI(AKDENIZ)	İlksel
460	2020-05-29	19:14:38	39.4313	25.8837	8.8	0	1.6	0	BADEMLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
461	2020-05-29	19:08:16	35.594	26.725	5	0	3.9	3.9	AKDENIZ	İlksel
462	2020-05-29	17:09:50	37.772	32.4122	0	0	1.3	0	CAYIRBAGI-MERAM(KONYA)	İlksel
463	2020-05-29	17:05:33	39.9085	33.0657	0	0	1.7	0	MAMAK(ANKARA)	İlksel
464	2020-05-29	17:02:37	37.3347	35.2277	6.7	0	2.3	0	TORUNSOLAKLI-KARAISALI(ADANA)	İlksel
465	2020-05-29	16:38:53	37.3495	35.7855	20.8	0	1	0	CUKUROREN-KOZAN(ADANA)	İlksel
466	2020-05-29	15:49:20	35.548	26.738	5.9	0	2.5	0	AKDENIZ	İlksel
467	2020-05-29	15:37:02	35.5497	26.7462	7.8	0	2.6	0	AKDENIZ	İlksel
468	2020-05-29	15:30:15	35.5107	26.7658	8	0	2.8	0	AKDENIZ	İlksel
469	2020-05-29	15:29:07	35.2465	26.9555	20.8	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
470	2020-05-29	15:28:47	35.5558	26.7245	5.5	0	2.8	0	AKDENIZ	İlksel
471	2020-05-29	15:19:22	35.5425	26.7233	4.8	0	2.8	0	AKDENIZ	İlksel
472	2020-05-29	15:12:31	35.4148	26.8303	12.9	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
473	2020-05-29	15:11:37	35.5103	26.7538	7.4	0	3.2	3.3	AKDENIZ	İlksel
474	2020-05-29	14:58:03	35.3827	26.838	12.7	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
475	2020-05-29	14:55:22	39.0992	27.7878	7.4	0	1.4	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
476	2020-05-29	14:51:18	35.5032	26.7402	8.1	0	2.7	0	AKDENIZ	İlksel
477	2020-05-29	14:50:40	35.271	26.9168	9.1	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
478	2020-05-29	14:45:03	35.4953	26.7608	7.8	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
479	2020-05-29	14:43:45	35.4773	26.7825	7.7	0	3.3	3.3	GIRITADASI(AKDENIZ)	İlksel
480	2020-05-29	14:34:33	35.5165	26.7438	7.8	0	2.5	0	AKDENIZ	İlksel
481	2020-05-29	14:33:14	35.4983	26.7638	7.9	0	2.4	0	AKDENIZ	İlksel
482	2020-05-29	14:28:45	35.5262	26.7368	6.8	0	2.9	0	AKDENIZ	İlksel
483	2020-05-29	14:20:51	35.5403	26.7392	4.8	0	2.9	0	AKDENIZ	İlksel
484	2020-05-29	14:12:24	35.9442	26.7192	15.3	0	2.1	0	AKDENIZ	İlksel
485	2020-05-29	14:09:36	35.5827	26.7182	5.8	0	2.8	0	AKDENIZ	İlksel
486	2020-05-29	12:27:46	38.4008	38.8217	29.4	0	1.5	0	GULENKOY-KALE(MALATYA)	İlksel
487	2020-05-29	11:58:53	37.1868	27.869	0	0	1.4	0	IKIZKOY-MILAS(MUGLA)	İlksel
488	2020-05-29	11:53:19	37.199	27.8857	0	0	1.4	0	KAYADERE-MILAS(MUGLA)	İlksel
489	2020-05-29	11:50:16	40.0182	27.0575	2.7	0	1.2	0	BUYUKTEPE-CAN(CANAKKALE)	İlksel
490	2020-05-29	11:23:37	39.0575	27.9352	4.9	0	0.9	0	ZEYTINLIBAG-AKHISAR(MANISA)	İlksel
491	2020-05-29	11:13:11	39.5018	28.1805	7.8	0	1.6	0	ISKELE-BIGADIC(BALIKESIR)	İlksel
492	2020-05-29	11:11:48	39.0962	27.81	1.8	0	1.6	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
493	2020-05-29	11:07:47	37.2507	28.5153	15.9	0	1.9	0	OZLUCE-(MUGLA)	İlksel
494	2020-05-29	10:44:04	35.2562	33.694	0	0	1.3	0	KIBRIS-ISKELE	İlksel
495	2020-05-29	10:30:33	39.0875	27.8127	14	0	1.5	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
496	2020-05-29	10:24:21	36.435	26.7883	114.2	0	2.2	0	AKDENIZ	İlksel
497	2020-05-29	09:32:35	40.5147	22.3822	10.5	0	3.8	4	YUNANISTAN	İlksel
498	2020-05-29	09:31:23	38.2923	38.7768	5.3	0	2.7	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
499	2020-05-29	09:21:32	36.9463	26.8698	18.7	0	1.9	0	ONIKIADALAR(AKDENIZ)	İlksel
500	2020-05-29	09:07:37	39.086	27.8025	10.8	0	1.9	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
501	2020-06-06	00:38:58	38.313	38.716	5	0	2.5	0	KAMISTAS-(MALATYA)	İlksel
502	2020-06-06	00:30:50	39.139	27.8498	8.1	0	1.9	0	BOSTANCI-KIRKAGAC(MANISA)	İlksel
503	2020-06-05	23:53:14	34.0702	25.6397	7.6	0	2.7	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
504	2020-06-06	09:22:04	38.3355	38.9108	27	0	1.8	0	KARAHUSEYIN-KALE(MALATYA)	İlksel
505	2020-06-06	08:36:31	36.0077	26.3168	6.5	0	2.1	0	AKDENIZ	İlksel
506	2020-06-06	08:34:32	35.575	26.6942	5.1	0	2.7	0	AKDENIZ	İlksel
507	2020-06-06	07:06:34	38.8983	27.876	9.6	0	2	0	YENIDOGAN-AKHISAR(MANISA)	İlksel
508	2020-06-06	06:31:39	38.2773	38.7345	11.5	0	1.8	0	BALPINARI-PUTURGE(MALATYA)	İlksel
509	2020-06-06	06:28:07	39.876	35.792	1.4	0	2.3	0	DOLAK-AKDAGMADENI(YOZGAT)	İlksel
510	2020-06-06	06:15:15	39.1247	27.8342	8.3	0	2.8	0	BOSTANCI-KIRKAGAC(MANISA)	İlksel
511	2020-06-06	06:05:35	38.5427	31.1172	2.7	0	3.2	3.1	DERESINEK-CAY(AFYONKARAHISAR)	İlksel
512	2020-06-06	05:40:12	38.2922	38.7413	11.1	0	1.9	0	BALPINARI-PUTURGE(MALATYA)	İlksel
513	2020-06-06	04:51:56	38.319	38.7075	10.4	0	1.9	0	KAMISTAS-(MALATYA)	İlksel
514	2020-06-06	04:07:43	39.2577	28.825	12.8	0	2	0	KAYALIDERE-SIMAV(KUTAHYA)	İlksel
515	2020-06-06	04:06:38	38.535	39.3128	5.7	0	2.2	0	ACIPAYAM-(ELAZIG)	İlksel
516	2020-06-06	03:55:33	38.4537	38.8013	27.7	0	1.9	0	HABIPUSAGI-BASKIL(ELAZIG)	İlksel
517	2020-06-06	03:38:43	35.7265	27.2588	3.1	0	2.6	0	AKDENIZ	İlksel
518	2020-06-06	03:14:32	38.4157	39.2237	5	0	0.9	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
519	2020-06-06	02:52:30	38.2923	38.7765	1.3	0	2.5	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
520	2020-06-06	02:49:24	38.3028	38.8115	1.7	0	2.1	0	BOLUKKAYA-PUTURGE(MALATYA)	İlksel
521	2020-06-06	02:45:40	38.3048	38.7368	1.3	0	2.2	0	KAMISTAS-(MALATYA)	İlksel
522	2020-06-06	02:40:37	35.5427	26.7275	9.2	0	2.9	0	AKDENIZ	İlksel
523	2020-06-06	02:06:23	38.4117	38.9465	17.1	0	1.6	0	SARITAS-BASKIL(ELAZIG)	İlksel
524	2020-06-06	01:48:01	40.8063	27.531	13.6	0	1.7	0	YENIKOYACIKLARI-TEKIRDAG(MARMARADENIZI)	İlksel
525	2020-06-06	01:46:10	38.3762	38.843	14.7	0	2.1	0	YENIDAMLAR-KALE(MALATYA)	İlksel
526	2020-06-06	01:04:26	38.4512	43.7648	7.3	0	2.1	0	CEVIZALAN-GURPINAR(VAN)	İlksel
527	2020-06-06	00:57:45	38.3763	38.8777	27	0	1.2	0	YENIDAMLAR-KALE(MALATYA)	İlksel
528	2020-06-06	00:56:57	38.3723	38.8943	24.9	0	1.1	0	KAYABAGLARI-SIVRICE(ELAZIG)	İlksel
529	2020-06-06	12:50:12	39.5348	29.292	14.2	0	1.4	0	DAGDEMIRLI-TAVSANLI(KUTAHYA)	İlksel
530	2020-06-06	12:37:53	38.2928	33.1127	26.2	0	1.8	0	TOPRAKLIK-ALTINEKIN(KONYA)	İlksel
531	2020-06-06	12:25:42	37.306	31.9607	0	0	1.9	0	SUSUZ-SEYDISEHIR(KONYA)	İlksel
532	2020-06-06	12:08:15	38.4792	40.086	5.4	0	2.7	0	CEVRECIK-ARICAK(ELAZIG)	İlksel
533	2020-06-06	12:01:22	37.2475	28.2663	0	0	1.8	0	SALIHPASALAR-(MUGLA)	İlksel
534	2020-06-06	15:36:44	38.4937	44.3892	17.6	0	2.8	0	TURKIYE-IRANSINIRBOLGESI	İlksel
535	2020-06-06	15:34:46	37.5118	35.3078	18.2	0	2	0	EBRISIM-ALADAG(ADANA)	İlksel
536	2020-06-06	14:13:39	40.2087	30.8522	5.6	0	2	0	AHMETBEYLER-GOYNUK(BOLU)	İlksel
537	2020-06-06	14:15:31	37.0717	28.1585	19.6	0	1.3	0	SARNICKOY-(MUGLA)	İlksel
538	2020-06-06	14:51:29	38.3665	39.0137	11.5	0	1.6	0	DUYGULU-SIVRICE(ELAZIG)	İlksel
539	2020-06-06	11:56:54	37.1635	27.8678	0	0	1.6	0	IKIZKOY-MILAS(MUGLA)	İlksel
540	2020-06-06	10:47:25	38.3222	39.2085	7.2	0	1.9	0	KAYAPINAR-SIVRICE(ELAZIG)	İlksel
541	2020-06-06	08:45:19	38.2522	39.0202	14	0	1.8	0	GUMUSSU-DOGANYOL(MALATYA)	İlksel
542	2020-06-06	08:17:53	37.9907	29.1062	0	0	1.8	0	HAYTABEY-(DENIZLI)	İlksel
543	2020-06-06	06:14:43	38.3153	38.7002	19.3	0	2	0	KAMISTAS-(MALATYA)	İlksel
544	2020-06-06	16:44:54	38.9412	24.9653	8.8	0	2.5	0	EGEDENIZI	İlksel
545	2020-06-06	16:54:17	36.8752	27.9913	11.3	0	1.5	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
546	2020-06-06	17:19:53	34.0838	25.8347	5	0	3.1	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
547	2020-06-06	18:59:50	39.4242	31.5938	0	0	1.6	0	TEKOREN-SIVRIHISAR(ESKISEHIR)	İlksel
548	2020-06-06	19:51:22	35.4912	26.8045	9.5	0	3.2	0	GIRITADASI(AKDENIZ)	İlksel
549	2020-06-06	20:00:29	35.5652	26.7253	7.6	0	2.3	0	AKDENIZ	İlksel
550	2020-06-06	20:07:30	36.4835	27.5757	2.1	0	2.4	0	AKDENIZ	İlksel
551	2020-06-06	20:45:34	35.9002	28.2467	5	0	2.3	0	AKDENIZ	İlksel
552	2020-06-06	20:24:30	35.3752	26.8043	10.1	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
553	2020-06-06	21:05:17	35.511	26.7453	9.5	0	2.6	0	AKDENIZ	İlksel
554	2020-06-06	20:35:56	35.5455	26.7652	10.9	0	2.4	0	AKDENIZ	İlksel
555	2020-06-06	20:38:08	35.5312	26.7595	15.1	0	2.4	0	AKDENIZ	İlksel
556	2020-06-06	21:35:55	38.4485	39.1363	12.1	0	1.9	0	DEREBOYNU-SIVRICE(ELAZIG)	İlksel
557	2020-06-06	20:25:13	38.3407	38.8847	25.5	0	1.2	0	UZUNHUSEYIN-KALE(MALATYA)	İlksel
558	2020-06-06	22:08:07	37.34	35.8848	5.3	0	2.2	0	COKAK-KOZAN(ADANA)	İlksel
559	2020-06-06	22:23:09	35.992	28.0982	5.3	0	2.6	0	AKDENIZ	İlksel
560	2020-06-06	23:00:24	39.338	37.9423	5	0	3.7	3.7	KARAAGACLI-DIVRIGI(SIVAS)	İlksel
561	2020-06-06	23:32:35	37.2473	36.9217	10.6	0	2.6	0	NAIMLER-NURDAGI(GAZIANTEP)	İlksel
562	2020-06-06	23:24:41	38.8327	26.7765	5.3	0	2.2	0	CANDARLIKORFEZI(EGEDENIZI)	İlksel
563	2020-06-06	23:29:40	38.8247	26.7678	6.6	0	2	0	CANDARLIKORFEZI(EGEDENIZI)	İlksel
564	2020-06-06	23:26:07	35.315	26.8717	11.5	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
565	2020-06-06	23:47:54	39.8095	35.8685	5.4	0	1.7	0	BULGURLU-AKDAGMADENI(YOZGAT)	İlksel
566	2020-06-07	00:04:31	38.3955	38.873	19.4	0	1.5	0	YENIDAMLAR-KALE(MALATYA)	İlksel
567	2020-06-07	09:38:49	36.9312	27.5457	22.3	0	2.2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
568	2020-06-07	09:18:38	38.4135	39.2502	7.3	0	1.4	0	SOGUKPINAR-SIVRICE(ELAZIG)	İlksel
569	2020-06-07	09:17:27	35.5245	26.7605	9.9	0	2.1	0	AKDENIZ	İlksel
570	2020-06-07	09:03:05	35.3958	26.854	9.3	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
571	2020-06-07	08:37:39	37.2912	36.3938	13.1	0	1.2	0	FARSAK-DUZICI(OSMANIYE)	İlksel
572	2020-06-07	08:33:05	38.3627	38.6547	10	0	2.2	0	ERENLI-(MALATYA)	İlksel
573	2020-06-07	08:30:01	35.5677	26.718	5	0	2.3	0	AKDENIZ	İlksel
574	2020-06-07	08:27:03	35.3248	26.957	11.5	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
575	2020-06-07	08:15:16	35.5062	26.7748	5.6	0	3.4	3.5	AKDENIZ	İlksel
576	2020-06-07	08:03:36	39.0203	41.2098	8	0	2.2	0	BILEK-(MUS)	İlksel
577	2020-06-07	07:50:48	39.5663	27.7733	22.1	0	1	0	CUKURHUSEYIN-(BALIKESIR)	İlksel
578	2020-06-07	07:17:27	38.4245	39.217	5	0	1.5	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
579	2020-06-07	07:14:40	38.388	38.7883	23.2	0	1.6	0	KOZLUK-KALE(MALATYA)	İlksel
580	2020-06-07	07:12:47	37.385	35.2507	7.5	0	2.6	0	MERKEZBOZTAHTA-KARAISALI(ADANA)	İlksel
581	2020-06-07	06:09:23	38.2282	38.7042	5.8	0	1.6	0	KOKPINAR-PUTURGE(MALATYA)	İlksel
582	2020-06-07	06:06:22	35.4458	26.8643	10.8	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
583	2020-06-07	05:24:35	35.4857	26.8008	12.4	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
584	2020-06-07	05:22:29	38.3558	38.7153	13.8	0	2	0	BENTKOY-KALE(MALATYA)	İlksel
585	2020-06-07	04:33:53	39.4653	28.0445	7.3	0	1.4	0	DEDECINAR-BIGADIC(BALIKESIR)	İlksel
586	2020-06-07	04:25:21	35.2273	26.8872	25.6	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
587	2020-06-07	04:16:22	35.5058	26.786	12.2	0	1.9	0	AKDENIZ	İlksel
588	2020-06-07	03:50:14	36.8983	27.2123	15.8	0	1.6	0	KOSADASI(AKDENIZ)	İlksel
589	2020-06-07	03:12:18	40.6252	34.7323	17.1	0	1.7	0	OKSUZLER-(CORUM)	İlksel
590	2020-06-07	01:51:35	35.894	28.192	11.8	0	1.9	0	AKDENIZ	İlksel
591	2020-06-07	01:30:35	38.272	38.736	2.3	0	2.2	0	BALPINARI-PUTURGE(MALATYA)	İlksel
592	2020-06-07	01:08:27	35.6127	26.7087	2.9	0	2.2	0	AKDENIZ	İlksel
593	2020-06-07	01:02:29	35.5488	26.7412	11.2	0	3.3	3.5	AKDENIZ	İlksel
594	2020-06-07	00:38:00	35.5275	26.7092	8.5	0	1.9	0	AKDENIZ	İlksel
595	2020-06-07	00:35:28	35.4822	26.7537	7.3	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
596	2020-06-07	09:54:49	39.0552	27.8398	6.1	0	2.1	0	MUSALAR-AKHISAR(MANISA)	İlksel
597	2020-06-08	19:20:40	41.1655	34.1873	4.2	0	2.9	0	KECELI-TOSYA(KASTAMONU)	İlksel
598	2020-06-08	18:40:28	38.1432	44.4332	11.1	0	2.6	0	TURKIYE-IRANSINIRBOLGESI	İlksel
599	2020-06-08	18:36:58	37.5195	35.5837	5.3	0	2.2	0	ENIZCAKIRI-KOZAN(ADANA)	İlksel
600	2020-06-08	18:31:04	39.8813	33.0553	0	0	1.6	0	MAMAK(ANKARA)	İlksel
601	2020-06-08	18:11:35	38.3567	38.8653	18.2	0	2	0	AKCA-KALE(MALATYA)	İlksel
602	2020-06-08	17:49:25	40.0197	34.9155	7.9	0	2.2	0	CETEDERESI-ALACA(CORUM)	İlksel
603	2020-06-08	17:05:54	38.4327	39.1943	4.4	0	1.5	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
604	2020-06-08	16:56:45	35.9017	27.2863	7.2	0	2.1	0	AKDENIZ	İlksel
605	2020-06-08	16:36:29	39.6523	26.4582	4.5	0	1.6	0	SULEYMANKOY-AYVACIK(CANAKKALE)	İlksel
606	2020-06-08	16:00:31	38.8222	27.0273	19	0	2	0	CALTILIDERE-ALIAGA(IZMIR)	İlksel
607	2020-06-08	15:56:02	38.8128	27.0185	7.6	0	1.8	0	GUZELHISAR-ALIAGA(IZMIR)	İlksel
608	2020-06-08	14:07:49	34.1535	25.559	5	0	3.5	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
609	2020-06-08	13:49:52	39.089	27.5538	0	0	1.7	0	EGNEZ-SOMA(MANISA)	İlksel
610	2020-06-08	13:26:57	35.3095	33.3272	0	0	1.7	0	KIBRIS-GIRNE	İlksel
611	2020-06-08	13:17:45	38.9838	24.3263	11.1	0	3	0	EGEDENIZI	İlksel
612	2020-06-08	13:02:49	37.4538	35.9905	5.9	0	1.9	0	AKCATAS-SUMBAS(OSMANIYE)	İlksel
613	2020-06-08	12:31:46	37.2862	31.877	0	0	1.7	0	MADENLI-SEYDISEHIR(KONYA)	İlksel
614	2020-06-08	12:21:24	37.2478	28.2875	0	0	1.5	0	AKCAOVA-(MUGLA)	İlksel
615	2020-06-08	12:13:42	37.1845	28.2775	12.9	0	1.8	0	YESILYURT-(MUGLA)	İlksel
616	2020-06-08	12:01:13	39.3138	29.3127	0	0	1.5	0	BAHATLAR-EMET(KUTAHYA)	İlksel
617	2020-06-08	11:51:03	37.225	28.2813	0	0	1.5	0	AKCAOVA-(MUGLA)	İlksel
618	2020-06-08	11:27:53	38.8965	26.1238	19.2	0	1.5	0	MIDILLIADASI(EGEDENIZI)	İlksel
619	2020-06-08	10:52:39	37.1232	37.2547	0	0	1.8	0	OGUMSOGUT-SEHITKAMIL(GAZIANTEP)	İlksel
620	2020-06-08	10:17:05	38.3973	39.3117	14.8	0	0.5	0	ALAATTINKOY-SIVRICE(ELAZIG)	İlksel
621	2020-06-08	10:15:03	34.2595	33.1172	20.1	0	2.3	0	KIBRISGUNEYI(AKDENIZ)	İlksel
622	2020-06-08	10:10:26	38.331	38.8117	23	0	1.6	0	AKUSAGI-KALE(MALATYA)	İlksel
623	2020-06-08	09:53:08	38.41	39.093	14.9	0	1.8	0	KAMISLIK-SIVRICE(ELAZIG)	İlksel
624	2020-06-08	09:07:36	38.393	39.108	10.5	0	1.5	0	KALABA-SIVRICE(ELAZIG)	İlksel
625	2020-06-08	08:11:33	39.7083	38.5788	8.9	0	2.2	0	KONUKCU-ILIC(ERZINCAN)	İlksel
626	2020-06-08	06:44:44	35.5875	26.731	8.8	0	2.5	0	AKDENIZ	İlksel
627	2020-06-08	05:42:35	40.5222	35.9418	9	0	2.3	0	ARDICLAR-(AMASYA)	İlksel
628	2020-06-08	05:08:02	35.5935	26.7368	8.5	0	1.8	0	AKDENIZ	İlksel
629	2020-06-08	04:29:43	38.4298	39.1048	10.8	0	1	0	KAMISLIK-SIVRICE(ELAZIG)	İlksel
630	2020-06-08	04:23:23	39.3007	37.018	10.8	0	2.5	0	ACIYURT-ULAS(SIVAS)	İlksel
631	2020-06-08	04:04:51	36.5737	26.837	10.7	0	2.2	0	AKDENIZ	İlksel
632	2020-06-08	03:43:03	36.5765	28.4912	47.1	0	1.6	0	AKDENIZ	İlksel
633	2020-06-08	03:28:54	39.2718	37.01	12.5	0	1.4	0	ACIYURT-ULAS(SIVAS)	İlksel
634	2020-06-08	03:25:28	39.2868	37.0273	16.4	0	1.5	0	ACIYURT-ULAS(SIVAS)	İlksel
635	2020-06-08	03:17:02	38.5448	39.2005	13.3	0	1.3	0	BALLICA-(ELAZIG)	İlksel
636	2020-06-08	02:53:07	36.2818	29.0465	10.5	0	1.7	0	DODURGA-FETHIYE(MUGLA)	İlksel
637	2020-06-08	02:41:04	38.7468	31.1798	8.5	0	2.5	0	DEREKARABAG-BOLVADIN(AFYONKARAHISAR)	İlksel
638	2020-06-08	02:23:27	38.9517	27.8437	13.8	0	1	0	MEDAR-AKHISAR(MANISA)	İlksel
639	2020-06-08	01:28:59	39.5133	26.1542	9.6	0	2.6	0	KOCAKOY-AYVACIK(CANAKKALE)	İlksel
640	2020-06-08	00:32:43	43.0977	26.0108	5	0	2.9	0	BULGARISTAN	İlksel
641	2020-06-07	23:57:50	36.9772	28.0992	5	0	1.2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
642	2020-06-07	23:55:03	39.6502	38.3893	5	0	1.8	0	YILMAZ-ILIC(ERZINCAN)	İlksel
643	2020-06-07	22:25:04	36.9188	27.575	5.8	0	2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
644	2020-06-07	22:19:26	40.8428	28.2823	9.5	0	1.7	0	SILIVRIACIKLARI-ISTANBUL(MARMARADENIZI)	İlksel
645	2020-06-07	22:04:09	40.2992	42.1778	5	0	2	0	PARMAKDERE-SARIKAMIS(KARS)	İlksel
646	2020-06-07	21:40:16	40.3278	27.4543	12.6	0	2.1	0	GUVEMALANI-BIGA(CANAKKALE)	İlksel
647	2020-06-07	19:48:48	38.3103	38.8187	28.6	0	1.2	0	BOLUKKAYA-PUTURGE(MALATYA)	İlksel
648	2020-06-07	19:32:05	37.9635	28.8157	24.5	0	1.7	0	KIZILDERE-BUHARKENT(AYDIN)	İlksel
649	2020-06-07	19:18:32	35.6175	26.7007	5.5	0	1.8	0	AKDENIZ	İlksel
650	2020-06-07	19:17:26	36.8505	28.0633	5.2	0	1.4	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
651	2020-06-07	19:14:45	36.8717	28.1152	23.2	0	1.6	0	HISARONU-MARMARIS(MUGLA)	İlksel
652	2020-06-07	17:30:46	38.497	39.2937	8.2	0	2.1	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
653	2020-06-07	16:57:46	38.4192	39.2095	3.8	0	1.5	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
654	2020-06-07	15:24:28	39.2088	25.6867	1.6	0	2.7	0	EGEDENIZI	İlksel
655	2020-06-07	14:28:19	35.3863	26.8423	16.3	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
656	2020-06-07	14:25:15	36.9608	28.0278	8.9	0	1.6	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
657	2020-06-07	13:11:42	39.0748	27.785	5	0	1.6	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
658	2020-06-07	12:35:59	35.5573	26.7485	7.8	0	2.8	2.7	AKDENIZ	İlksel
659	2020-06-07	11:52:23	38.3163	38.7752	3.3	0	2.5	0	CANAKCI-KALE(MALATYA)	İlksel
660	2020-06-07	11:20:00	35.5017	26.7683	7	0	2.8	0	AKDENIZ	İlksel
661	2020-06-07	11:16:03	37.3463	26.8512	15.7	0	1.7	0	ONIKIADALAR(AKDENIZ)	İlksel
662	2020-06-07	10:58:52	35.5297	26.7435	5.4	0	3.3	3.4	AKDENIZ	İlksel
663	2020-06-08	22:38:42	35.9085	27.7142	12.3	0	2	0	RODOSADASI(AKDENIZ)	İlksel
664	2020-06-08	22:21:20	35.8053	30.887	11.4	0	2.5	0	AKDENIZ	İlksel
665	2020-06-09	00:28:24	38.8653	23.8623	24.1	0	2.7	0	YUNANISTAN	İlksel
666	2020-06-09	12:28:30	39.1337	27.7157	23	0	2.3	0	MUSAHOCA-KIRKAGAC(MANISA)	İlksel
667	2020-06-09	12:26:30	36.972	27.3642	16.6	0	2.2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
668	2020-06-09	12:14:40	38.3842	38.664	12.3	0	2.1	0	KIYICAK-KALE(MALATYA)	İlksel
669	2020-06-09	11:59:46	38.2708	27.2748	8.3	0	2.2	0	YOGURTCULAR-TORBALI(IZMIR)	İlksel
670	2020-06-09	11:53:39	37.22	27.932	0	0	1.6	0	KAYADERE-MILAS(MUGLA)	İlksel
671	2020-06-09	11:51:52	37.1838	28.2455	0	0	1.8	0	DAGDIBI-(MUGLA)	İlksel
672	2020-06-09	10:57:29	39.1187	27.5185	0	0	1.9	0	DEREKOY-SOMA(MANISA)	İlksel
673	2020-06-09	10:48:05	40.811	28.1128	14.1	0	1.7	0	MARMARADENIZI	İlksel
674	2020-06-09	10:42:23	37.4427	37.9873	16	0	2	0	CIFTEKOZ-ARABAN(GAZIANTEP)	İlksel
675	2020-06-09	10:28:58	40.0617	27.037	0	0	1.9	0	MALLI-CAN(CANAKKALE)	İlksel
676	2020-06-09	10:14:32	38.4248	38.9028	21.8	0	1.6	0	KUTLUGUN-BASKIL(ELAZIG)	İlksel
677	2020-06-09	09:43:56	39.7477	27.8152	5.1	0	2	0	OVACIK-(BALIKESIR)	İlksel
678	2020-06-09	09:19:26	37.9092	27.5683	7.6	0	1.4	0	ABDURRAHMANLAR-GERMENCIK(AYDIN)	İlksel
679	2020-06-09	08:24:22	39.0977	27.8297	6.3	0	2.3	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
680	2020-06-09	07:27:58	39.0935	27.8122	9.4	0	2.5	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
681	2020-06-09	05:46:21	34.0248	25.6723	5	0	3.7	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
682	2020-06-09	04:21:24	38.3153	38.7525	6.2	0	1.3	0	SARIOT-KALE(MALATYA)	İlksel
683	2020-06-09	04:01:09	38.7397	43.1703	17.4	0	1.4	0	VANGOLU	İlksel
684	2020-06-09	03:32:57	36.0805	27.6322	6.7	0	1.6	0	AKDENIZ	İlksel
685	2020-06-09	03:32:05	36.0497	27.6253	17.4	0	1.7	0	AKDENIZ	İlksel
686	2020-06-09	02:16:08	38.1645	32.0007	3.9	0	2.3	0	GOKCEYURT-ILGIN(KONYA)	İlksel
687	2020-06-09	12:45:27	36.1417	33.5095	0	0	1.1	0	YANISLI-GULNAR(MERSIN)	İlksel
688	2020-06-09	12:23:59	39.1315	27.7307	22.1	0	1.9	0	MUSAHOCA-KIRKAGAC(MANISA)	İlksel
689	2020-06-09	13:04:50	36.126	33.5548	0	0	1.2	0	BUYUKECELI-GULNAR(MERSIN)	İlksel
690	2020-06-09	13:20:25	39.1	27.8383	3.3	0	1.9	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
691	2020-06-09	13:31:13	37.583	35.845	1.4	0	1.1	0	DUZAGAC-KOZAN(ADANA)	İlksel
692	2020-06-09	12:24:35	39.1188	27.7003	17.9	0	2.1	0	KIRKAGAC(MANISA)	İlksel
693	2020-06-09	13:46:25	39.7175	30.7398	0	0	1.6	0	YORUKKARACAOREN-ODUNPAZARI(ESKISEHIR)	İlksel
694	2020-06-09	13:59:15	40.3753	26.5595	9.9	0	1.1	0	CEVIZLI-GELIBOLU(CANAKKALE)	İlksel
695	2020-06-09	14:08:06	39.189	27.4362	9.4	0	2.2	0	BOLCEK-BERGAMA(IZMIR)	İlksel
696	2020-06-09	13:28:33	40.4773	35.1748	19.5	0	2.2	0	DEVLETOGLANI-MECITOZU(CORUM)	İlksel
697	2020-06-09	13:38:07	38.3195	38.8063	21.4	0	1.2	0	BOLUKKAYA-PUTURGE(MALATYA)	İlksel
698	2020-06-09	14:12:19	40.5452	28.1712	8.1	0	2.2	0	ERDEKACIKLARI-BALIKESIR(MARMARADENIZI)	İlksel
699	2020-06-09	14:29:14	38.369	27.2943	5.2	0	1.8	0	GOKDERE-BORNOVA(IZMIR)	İlksel
700	2020-06-09	14:25:18	38.3498	39.0775	7.7	0	1.1	0	DOGANBAGI-SIVRICE(ELAZIG)	İlksel
701	2020-06-09	14:39:51	40.0053	27.008	5.7	0	1	0	DURALI-CAN(CANAKKALE)	İlksel
702	2020-06-09	14:32:53	38.2822	27.2707	9.4	0	1.9	0	KARACAAGAC-BUCA(IZMIR)REVIZE01	REVIZE01(2020.06.09-14:32:53)
703	2020-06-09	14:27:32	40.4762	39.5355	25.9	0	1.9	0	AKTUTAN-(GUMUSHANE)	İlksel
704	2020-06-09	15:16:45	39.1278	27.5573	0	0	2.1	0	DEREKOY-SOMA(MANISA)	İlksel
705	2020-06-09	15:25:04	39.4572	33.0543	8.8	0	1.6	0	AFSAR-BALA(ANKARA)	İlksel
706	2020-06-09	15:34:45	38.3783	38.8387	16.9	0	2	0	KARAAGAC-KALE(MALATYA)	İlksel
707	2020-06-09	15:35:53	38.3745	38.8337	26	0	1.2	0	KARAAGAC-KALE(MALATYA)	İlksel
708	2020-06-09	15:39:55	38.2842	44.3253	5	0	2.8	0	OZPINAR-BASKALE(VAN)	İlksel
709	2020-06-09	15:48:59	39.77	27.9627	7	0	2.1	0	IBIRLER-(BALIKESIR)REVIZE01	REVIZE01(2020.06.09-15:48:59)
710	2020-06-09	16:33:47	38.2557	27.2055	7.6	0	2.1	0	KISIK-MENDERES(IZMIR)	İlksel
711	2020-06-09	16:35:03	38.2593	27.2245	7.7	0	1.9	0	YESILKOY-TORBALI(IZMIR)	İlksel
712	2020-06-09	16:40:45	37.0348	36.1395	5.3	0	1.7	0	TOPRAKKALE(OSMANIYE)	İlksel
713	2020-06-09	17:01:41	41.1392	28.5148	0	0	0.9	0	CATALCA(ISTANBUL)	İlksel
714	2020-06-09	18:44:06	38.264	27.2313	7.1	0	3.8	3.6	YESILKOY-TORBALI(IZMIR)	İlksel
715	2020-06-09	18:49:47	38.2667	27.2427	5.5	0	2.9	0	YESILKOY-TORBALI(IZMIR)	İlksel
716	2020-06-09	18:52:47	38.2682	27.2432	5.7	0	2.9	0	YESILKOY-TORBALI(IZMIR)	İlksel
717	2020-06-09	18:56:27	38.2842	27.262	8.7	0	3.2	3	KARACAAGAC-BUCA(IZMIR)REVIZE01	REVIZE01(2020.06.09-18:56:27)
718	2020-06-09	18:58:09	34.4607	26.6167	10.3	0	2.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
719	2020-06-09	19:11:29	38.2635	27.2272	5.5	0	2.2	0	YESILKOY-TORBALI(IZMIR)	İlksel
720	2020-06-09	19:02:01	38.2405	27.2202	5.2	0	1.7	0	YESILKOY-TORBALI(IZMIR)	İlksel
721	2020-06-09	19:27:43	38.2995	27.31	4.1	0	1.5	0	KIRIKLAR-BUCA(IZMIR)	İlksel
722	2020-06-09	19:29:04	38.272	27.2647	9.3	0	1.5	0	YESİLKOY-TORBALI(IZMIR)	İlksel
723	2020-06-09	19:27:43	38.2995	27.31	4.1	0	1.5	0	YESİLKOY-TORBALI(IZMIR)	İlksel
724	2020-06-09	19:47:20	38.2705	27.2283	4.8	0	1.9	0	YESILKOY-TORBALI(IZMIR)	İlksel
725	2020-06-09	19:48:14	38.2782	27.2127	11.3	0	1.4	0	KISIK-MENDERES(IZMIR)	İlksel
726	2020-06-09	20:37:45	39.151	27.7712	4.5	0	2.3	0	SILEDIK-KIRKAGAC(MANISA)	İlksel
727	2020-06-09	19:51:20	38.3343	27.2875	5.1	0	1.7	0	BELENBASI-BUCA(IZMIR)	İlksel
728	2020-06-09	19:55:28	38.2508	27.2142	5.4	0	1.7	0	YESILKOY-TORBALI(IZMIR)	İlksel
729	2020-06-09	20:03:40	38.2852	27.2283	9	0	1.6	0	YESILKOY-TORBALI(IZMIR)	İlksel
730	2020-06-09	21:37:26	37.9135	27.554	8.3	0	1.5	0	ABDURRAHMANLAR-GERMENCIK(AYDIN)	İlksel
731	2020-06-09	21:39:05	38.2483	27.2183	8.1	0	1.7	0	YESILKOY-TORBALI(IZMIR)	İlksel
732	2020-06-09	21:39:44	38.2585	27.2805	5.2	0	1.7	0	YOGURTCULAR-TORBALI(IZMIR)	İlksel
733	2020-06-09	22:30:24	38.2563	27.2082	4.7	0	1.7	0	KISIK-MENDERES(IZMIR)	İlksel
734	2020-06-09	22:45:49	36.1052	31.1145	10.2	0	2.7	0	AKDENIZ	İlksel
735	2020-06-09	23:01:00	37.3315	36.0472	16.6	0	1.7	0	KUMBET-KADIRLI(OSMANIYE)	İlksel
736	2020-06-09	23:09:59	37.856	29.5637	3.8	0	2.1	0	BASCESME-BOZKURT(DENIZLI)	İlksel
737	2020-06-09	23:17:30	37.8598	29.5413	3	0	1.8	0	BASCESME-BOZKURT(DENIZLI)	İlksel
738	2020-06-09	23:34:20	40.7047	29.7987	8.7	0	1.8	0	ORCUN-GOLCUK(KOCAELI)	İlksel
739	2020-06-09	23:49:22	36.4498	28.4375	56.8	0	1.3	0	AKDENIZ	İlksel
740	2020-06-10	09:00:03	37.3827	28.3762	0	0	1.8	0	MENTESE-KAVAKLIDERE(MUGLA)	İlksel
741	2020-06-10	08:37:04	35.9678	27.008	12.9	0	2.3	0	AKDENIZ	İlksel
742	2020-06-10	08:12:22	38.2527	27.2248	10.6	0	1.7	0	YESILKOY-TORBALI(IZMIR)	İlksel
743	2020-06-10	08:00:07	38.4412	38.981	11.9	0	1.8	0	YARUSAGI-SIVRICE(ELAZIG)	İlksel
744	2020-06-10	07:50:52	35.4867	26.8027	7	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
745	2020-06-10	07:41:02	40.6283	29.1483	12.2	0	1.7	0	ORTABURUN-CINARCIK(YALOVA)	İlksel
746	2020-06-10	07:07:42	39.622	26.4377	5.8	0	1.6	0	TARTISIK-AYVACIK(CANAKKALE)	İlksel
747	2020-06-10	05:39:57	39.5828	35.4408	6.1	0	1.7	0	KOCCAGIZ-SARIKAYA(YOZGAT)	İlksel
748	2020-06-10	05:35:44	38.2692	27.2323	5.1	0	2.3	0	YESILKOY-TORBALI(IZMIR)	İlksel
749	2020-06-10	05:29:04	40.241	31.7658	5.2	0	1.2	0	KOZAGAC-BEYPAZARI(ANKARA)	İlksel
750	2020-06-10	05:25:18	40.3537	27.4313	11	0	2.5	0	BOZLAR-BIGA(CANAKKALE)	İlksel
751	2020-06-10	05:21:20	38.258	27.2122	5	0	1.3	0	YESILKOY-TORBALI(IZMIR)	İlksel
752	2020-06-10	05:20:29	36.232	29.2937	8.7	0	0.9	0	GELEMIS-KAS(ANTALYA)	İlksel
753	2020-06-10	05:19:50	40.1918	31.7088	5.1	0	1.8	0	SEKLI-BEYPAZARI(ANKARA)	İlksel
754	2020-06-10	05:06:49	38.3315	38.7818	15.4	0	2.4	0	CANAKCI-KALE(MALATYA)	İlksel
755	2020-06-10	04:48:11	35.4212	23.1433	5	0	3.6	4	GIRITADASI(AKDENIZ)	İlksel
756	2020-06-10	04:02:25	37.0502	27.4587	8.8	0	1	0	BODRUM(MUGLA)	İlksel
757	2020-06-10	02:43:15	36.9953	34.5432	7.2	0	2.1	0	BEKIRALANI-TOROSLAR(MERSIN)	İlksel
758	2020-06-10	02:23:26	39.1775	27.778	9.4	0	1.6	0	YAGMURLU-KIRKAGAC(MANISA)	İlksel
759	2020-06-10	02:12:19	37.8192	30.1473	2.9	0	1.9	0	SARACIK-KECIBORLU(ISPARTA)	İlksel
760	2020-06-10	02:04:31	38.2537	27.241	5.2	0	1.5	0	YESILKOY-TORBALI(IZMIR)	İlksel
761	2020-06-10	01:56:36	38.2637	27.2435	5.3	0	2	0	YESILKOY-TORBALI(IZMIR)	İlksel
762	2020-06-10	01:56:23	37.3993	36.0045	4.4	0	1.9	0	KIZILOMERLI-SUMBAS(OSMANIYE)	İlksel
763	2020-06-10	01:35:07	38.2805	27.2462	4.4	0	1.8	0	YESILKOY-TORBALI(IZMIR)	İlksel
764	2020-06-10	01:32:38	40.9312	32.6845	7.6	0	2.4	0	CANDIRLAR-ESKIPAZAR(KARABUK)	İlksel
765	2020-06-10	01:13:22	38.2472	27.2175	5.3	0	1.4	0	YESILKOY-TORBALI(IZMIR)	İlksel
766	2020-06-10	01:00:58	38.269	27.2355	10.6	0	1.8	0	YESILKOY-TORBALI(IZMIR)	İlksel
767	2020-06-10	00:31:17	38.2658	27.2317	5.3	0	1.6	0	YESILKOY-TORBALI(IZMIR)	İlksel
768	2020-06-10	09:42:36	38.3343	27.2442	18.6	0	1.5	0	BELENBASI-BUCA(IZMIR)	İlksel
769	2020-06-10	08:39:42	38.2837	27.2063	3.3	0	1.7	0	KISIK-MENDERES(IZMIR)	İlksel
770	2020-06-10	11:26:34	38.3418	27.2558	4	0	1.9	0	BELENBASI-BUCA(IZMIR)	İlksel
771	2020-06-10	13:02:53	38.7168	43.4157	19.2	0	2.5	0	HIDIRKOY-(VAN)	İlksel
772	2020-06-10	12:30:35	39.6427	32.7393	0	0	0.9	0	BEYNAM-BALA(ANKARA)	İlksel
773	2020-06-10	13:37:05	38.4152	39.2343	9.4	0	0.9	0	KURKKOY-SIVRICE(ELAZIG)	İlksel
774	2020-06-10	13:57:44	40.8157	28.1358	5.4	0	1.6	0	MARMARADENIZI	İlksel
775	2020-06-10	13:37:18	39.7577	32.9942	0	0	1.7	0	BEYNAM-BALA(ANKARA)	İlksel
776	2020-06-10	15:07:51	38.4905	39.2422	5.3	0	2.8	0	GOZEBASI-(ELAZIG)	İlksel
777	2020-06-10	14:33:56	38.3988	39.0485	9.9	0	1.4	0	TARLATEPE-SIVRICE(ELAZIG)	İlksel
778	2020-06-10	14:06:16	39.0908	27.5015	0	0	1.8	0	ARPASEKI-KINIK(IZMIR)	İlksel
779	2020-06-10	14:57:59	37.5093	38.0888	22.7	0	1.4	0	TOPKAPI-BESNI(ADIYAMAN)	İlksel
780	2020-06-10	13:13:47	38.3398	38.8243	18.4	0	1.3	0	AKUSAGI-KALE(MALATYA)	İlksel
781	2020-06-10	13:09:36	38.2667	27.5505	12.9	0	1.2	0	DERNEKLI-BAYINDIR(IZMIR)	İlksel
782	2020-06-10	08:37:05	35.9317	27.0747	11.1	0	2.5	0	AKDENIZREVIZE01	REVIZE01(2020.06.10-08:37:04)
783	2020-06-10	08:30:52	38.2753	27.2653	5	0	1.6	0	YOGURTCULAR-TORBALI(IZMIR)	İlksel
784	2020-06-10	15:44:33	38.245	27.171	14.4	0	1.8	0	MENDERES(IZMIR)	İlksel
785	2020-06-11	09:41:05	38.8693	26.7937	3.5	0	2.1	0	CANDARLIKORFEZI(EGEDENIZI)	İlksel
786	2020-06-11	09:21:09	38.2902	38.775	9.1	0	3.1	3	KARSIYAKA-PUTURGE(MALATYA)	İlksel
787	2020-06-11	09:12:05	38.2738	38.7503	9.2	0	2.8	0	BALPINARI-PUTURGE(MALATYA)	İlksel
788	2020-06-11	09:04:28	36.9962	35.8525	22.7	0	2	0	CIFTLIKLER-CEYHAN(ADANA)	İlksel
789	2020-06-11	08:06:20	35.9902	27.5522	8.5	0	2.1	0	AKDENIZ	İlksel
790	2020-06-11	06:34:18	40.5552	36.0027	5.4	0	2.3	0	UYGUR-(AMASYA)	İlksel
791	2020-06-11	05:18:41	37.151	31.1095	108	0	2	0	ETLER-SERIK(ANTALYA)	İlksel
792	2020-06-11	04:57:09	38.0438	28.971	5	0	2	0	MAHMUTLU-BULDAN(DENIZLI)	İlksel
793	2020-06-11	03:45:52	38.9957	27.8443	8.9	0	2.2	0	GOKCEAHMET-AKHISAR(MANISA)	İlksel
794	2020-06-11	03:15:31	41.25	40.4358	10.1	0	2.6	0	RIZEACIKLARI(KARADENIZ)	İlksel
795	2020-06-11	01:04:16	39.9518	27.583	12.2	0	1.7	0	SOGUTKOY-GONEN(BALIKESIR)	İlksel
796	2020-06-11	00:30:32	38.277	38.7408	3.7	0	2	0	BALPINARI-PUTURGE(MALATYA)	İlksel
797	2020-06-10	23:14:49	39.5255	26.0657	13.1	0	1.9	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
798	2020-06-10	23:09:44	38.2585	27.2335	5.3	0	2.1	0	YESILKOY-TORBALI(IZMIR)	İlksel
799	2020-06-10	22:55:19	36.0697	29.0438	23.9	0	1.7	0	AKDENIZ	İlksel
800	2020-06-10	22:53:32	35.954	29.0743	30.6	0	1.9	0	AKDENIZ	İlksel
801	2020-06-10	22:43:09	39.0418	27.8567	5	0	1.8	0	MUSALAR-AKHISAR(MANISA)	İlksel
802	2020-06-10	22:32:22	38.3475	39.0353	9.6	0	1	0	ILINCAK-SIVRICE(ELAZIG)	İlksel
803	2020-06-10	22:24:26	38.4138	39.083	11	0	2	0	GOZELI-SIVRICE(ELAZIG)	İlksel
804	2020-06-10	22:13:22	33.9605	25.6247	30.5	0	3.5	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
805	2020-06-10	22:10:16	38.3508	38.8612	13.6	0	1.8	0	AKCA-KALE(MALATYA)	İlksel
806	2020-06-10	22:09:20	40.5748	30.5543	8.9	0	1.5	0	AHMEDIYE-KARAPURCEK(SAKARYA)	İlksel
807	2020-06-10	21:07:44	40.5782	30.567	12.4	0	1.7	0	AHMEDIYE-KARAPURCEK(SAKARYA)	İlksel
808	2020-06-10	20:26:23	37.3373	27.9815	0	0	1.8	0	KOZAGAC-YATAGAN(MUGLA)	İlksel
809	2020-06-10	20:16:56	40.1245	31.7468	3.5	0	2.2	0	CANTIRLI-BEYPAZARI(ANKARA)	İlksel
810	2020-06-11	10:30:36	38.3088	38.5773	8.6	0	2.1	0	TANISIK-(MALATYA)	İlksel
811	2020-06-11	12:30:18	37.2353	27.9792	14.2	0	1.2	0	CAMLICA-YATAGAN(MUGLA)	İlksel
812	2020-06-11	12:18:54	37.3192	36.268	10.8	0	2	0	CERCIOGLU-DUZICI(OSMANIYE)	İlksel
813	2020-06-11	11:53:16	39.8877	26.264	5	0	1.5	0	PINARBASI-EZINE(CANAKKALE)	İlksel
814	2020-06-11	13:27:29	39.1105	27.7988	3	0	2.7	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
815	2020-06-11	12:22:56	37.3813	36.3393	5.7	0	2.5	0	ERENLER-ANDIRIN(KAHRAMANMARAS)	İlksel
816	2020-06-11	12:11:15	37.741	29.1005	0	0	1.7	0	DENIZLI	İlksel
817	2020-06-11	12:23:09	37.1133	28.2557	12.4	0	1.9	0	YENIBAGYAKA-(MUGLA)	İlksel
818	2020-06-11	13:11:49	39.1567	27.6988	0	0	1.8	0	CAVDIR-SOMA(MANISA)	İlksel
819	2020-06-11	13:10:02	36.838	30.5412	22.2	0	1.4	0	HACISEKILILER-KONYAALTI(ANTALYA)	İlksel
820	2020-06-11	13:53:30	37.3965	36.7272	5.8	0	1.8	0	KIRMAKAYA-TURKOGLU(KAHRAMANMARAS)	İlksel
821	2020-06-11	17:49:20	37.381	35.999	6	0	2.1	0	KABAYAR-KADIRLI(OSMANIYE)	İlksel
822	2020-06-11	17:55:53	41.1375	28.8458	0	0	0.7	0	PIRINCCI-EYUP(ISTANBUL)	İlksel
823	2020-06-11	19:05:27	35.4822	26.8048	15	0	3.2	0	GIRITADASI(AKDENIZ)	İlksel
824	2020-06-11	20:40:00	35.4822	26.8012	5.5	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
825	2020-06-11	22:17:48	38.5067	39.2968	5.5	0	2.2	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
826	2020-06-11	22:38:34	39.3367	27.8293	8	0	2.3	0	YAZOREN-SAVASTEPE(BALIKESIR)	İlksel
827	2020-06-11	21:37:11	38.3617	35.8995	18.3	0	1.7	0	SIHBARAK-TOMARZA(KAYSERI)	İlksel
828	2020-06-11	21:55:19	40.9737	33.9758	12.7	0	2.1	0	SULUCA-TOSYA(KASTAMONU)	İlksel
829	2020-06-11	23:56:06	40.8218	28.1427	14.8	0	2.7	0	MARMARADENIZI	İlksel
830	2020-06-11	23:34:17	39.3633	27.9482	17.1	0	1.7	0	AKCAKISRAK-SINDIRGI(BALIKESIR)	İlksel
831	2020-06-12	09:05:39	37.2217	28.2988	4.7	0	1.8	0	AKCAOVA-(MUGLA)	İlksel
832	2020-06-12	03:23:09	38.441	26.8658	6.7	0	1.7	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
833	2020-06-12	03:01:07	42.5613	23.7265	5	0	2.9	0	BULGARISTAN	İlksel
834	2020-06-12	02:56:49	36.9945	28.5188	10.3	0	2.1	0	CORUS-ULA(MUGLA)	İlksel
835	2020-06-12	02:00:16	38.276	27.2415	5.3	0	2	0	YESILKOY-TORBALI(IZMIR)	İlksel
836	2020-06-12	01:40:28	40.8293	28.1352	14.6	0	2.4	0	MARMARADENIZI	İlksel
837	2020-06-12	09:49:58	39.5125	26.0553	10	0	2.3	0	BABAKALE-AYVACIK(CANAKKALE)	İlksel
838	2020-06-12	10:25:07	37.4937	36.2638	2.8	0	2.3	0	ALAMESE-ANDIRIN(KAHRAMANMARAS)	İlksel
839	2020-06-12	11:10:24	40.8105	25.6107	5.3	0	2.6	0	EGEDENIZI	İlksel
840	2020-06-12	11:14:18	39.5142	26.0538	9.7	0	2.2	0	BABAKALE-AYVACIK(CANAKKALE)	İlksel
841	2020-06-12	10:47:55	38.7068	26.5617	10.9	0	1.8	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
842	2020-06-12	11:58:25	40.8023	25.5877	6.7	0	3.7	3.6	EGEDENIZI	İlksel
843	2020-06-12	12:17:16	39.3328	27.845	5	0	3.9	3.7	YAZOREN-SAVASTEPE(BALIKESIR)	İlksel
844	2020-06-12	14:08:25	40.8087	25.5855	6.9	0	3.6	3.5	EGEDENIZI	İlksel
845	2020-06-12	14:13:05	39.4348	27.8765	8.4	0	2	0	BEREKETLI-(BALIKESIR)	İlksel
846	2020-06-12	12:21:21	39.304	27.8915	17.6	0	1.8	0	FIRDANLAR-KIRKAGAC(MANISA)	İlksel
847	2020-06-12	12:08:07	37.2317	37.4363	0	0	1.9	0	OVUNDUK-SEHITKAMIL(GAZIANTEP)	İlksel
848	2020-06-12	12:07:21	39.4262	28.27	5.3	0	1.9	0	HISARKOY-BIGADIC(BALIKESIR)	İlksel
849	2020-06-12	15:24:06	39.5298	26.0093	4.9	0	2	0	GULPINARACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
850	2020-06-12	17:41:17	40.0013	27.7285	14	0	2.1	0	CALICA-GONEN(BALIKESIR)	İlksel
851	2020-06-12	20:05:18	38.4187	24.9843	29.4	0	2.5	0	EGEDENIZI	İlksel
852	2020-06-13	00:23:18	38.0552	26.9317	5.5	0	2.2	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
853	2020-06-13	00:31:41	35.7393	26.9682	17.1	0	2.2	0	AKDENIZ	İlksel
854	2020-06-13	06:58:42	38.245	27.1647	5.5	0	1.6	0	MENDERES(IZMIR)	İlksel
855	2020-06-13	06:55:19	34.347	25.9393	2.7	0	2.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
856	2020-06-13	06:30:11	38.7762	27.7208	9.9	0	1.8	0	KEMIKLIDERE-SARUHANLI(MANISA)	İlksel
857	2020-06-13	05:50:04	36.2192	27.6648	5.9	0	1.7	0	AKDENIZ	İlksel
858	2020-06-13	04:59:37	36.0793	28.5075	69.3	0	2.4	0	AKDENIZ	İlksel
859	2020-06-13	04:54:20	38.7873	39.9977	10.1	0	1.9	0	BAYRAMYAZI-KOVANCILAR(ELAZIG)	İlksel
860	2020-06-13	03:17:00	36.0083	26.8893	7.8	0	1.9	0	AKDENIZ	İlksel
861	2020-06-13	03:09:02	39.1007	29.05	11.5	0	1.4	0	GOKCELER-SIMAV(KUTAHYA)	İlksel
862	2020-06-13	02:42:29	40.1988	31.81	7	0	2.1	0	SARIAGIL-BEYPAZARI(ANKARA)	İlksel
863	2020-06-13	02:32:21	36.7303	26.3795	80	0	1.9	0	AKDENIZ	İlksel
864	2020-06-13	02:18:43	38.35	38.6977	10.5	0	2.3	0	ERDEMLI-KALE(MALATYA)	İlksel
865	2020-06-13	02:12:19	39.1418	29.0573	9.6	0	1.8	0	KAPIKAYA-SIMAV(KUTAHYA)	İlksel
866	2020-06-13	01:24:35	40.785	25.654	9.8	0	1.5	0	EGEDENIZI	İlksel
867	2020-06-13	12:37:33	37.8042	34.5727	5.9	0	2.6	0	KEMERHISAR-BOR(NIGDE)	İlksel
868	2020-06-13	12:08:43	37.21	27.9458	0	0	1.7	0	KAYADERE-MILAS(MUGLA)	İlksel
869	2020-06-13	11:25:26	40.646	34.0468	5	0	2.1	0	INCIK-(CANKIRI)	İlksel
870	2020-06-13	10:05:33	38.7192	27.1045	9.6	0	2	0	CUKURKOY-MENEMEN(IZMIR)	İlksel
871	2020-06-13	10:31:04	35.524	26.7172	7.5	0	2.3	0	AKDENIZ	İlksel
872	2020-06-13	11:03:27	37.5425	32.1258	5.5	0	2	0	YAYLACIK-SEYDISEHIR(KONYA)	İlksel
873	2020-06-13	10:02:00	37.8703	29.6625	7.8	0	2	0	AVDAN-BOZKURT(DENIZLI)	İlksel
874	2020-06-14	08:55:55	38.497	39.2665	3	0	1.8	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
875	2020-06-14	06:47:16	38.2163	27.2563	7	0	1.5	0	YESILKOY-TORBALI(IZMIR)	İlksel
876	2020-06-14	06:03:40	39.1242	27.8287	8.9	0	2	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
877	2020-06-14	05:35:10	40.308	37.1873	5	0	2.2	0	CILEHANE-ALMUS(TOKAT)	İlksel
878	2020-06-14	05:34:17	39.2828	28.8648	4.4	0	2	0	CAMLIK-SIMAV(KUTAHYA)	İlksel
879	2020-06-14	02:55:23	37.4568	35.9317	22.4	0	1.6	0	ACARMANTAS-KOZAN(ADANA)	İlksel
880	2020-06-14	01:00:08	36.6862	28.7753	10.8	0	1.4	0	KAPIKARGIN-DALAMAN(MUGLA)	İlksel
881	2020-06-14	00:39:04	40.1707	34.6127	5	0	2	0	EKMEKCI-SUNGURLU(CORUM)	İlksel
882	2020-06-14	00:20:39	37.0948	27.9538	16.1	0	1.6	0	DEREKOY-MILAS(MUGLA)	İlksel
883	2020-06-13	23:25:44	38.0108	26.7625	7.9	0	2.3	0	EGEDENIZI	İlksel
884	2020-06-13	23:21:11	38.0387	26.7483	6.9	0	3	2.8	EGEDENIZI	İlksel
885	2020-06-13	22:36:00	37.9152	26.9767	9	0	1.7	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
886	2020-06-13	22:33:12	37.3982	38.5998	9.8	0	1.9	0	YALINTAS-BOZOVA(SANLIURFA)	İlksel
887	2020-06-13	22:08:01	40.8547	28.0912	11.7	0	2.6	0	MARMARADENIZI	İlksel
888	2020-06-13	20:21:10	38.4502	39.2763	7.9	0	2.5	0	SIVRICE(ELAZIG)	İlksel
889	2020-06-13	20:01:05	38.8458	26.4182	13	0	3.1	3	EGEDENIZI	İlksel
890	2020-06-13	19:07:44	38.4867	39.204	6.3	0	2.8	0	DEDEYOLU-SIVRICE(ELAZIG)	İlksel
891	2020-06-13	18:31:02	39.225	28.5535	4.9	0	2.2	0	MUMCUKOY-SINDIRGI(BALIKESIR)	İlksel
892	2020-06-13	17:20:06	38.401	39.1387	4.7	0	1.2	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
893	2020-06-13	17:16:31	37.6165	37.3758	13.9	0	1.5	0	KARAAGAC-PAZARCIK(KAHRAMANMARAS)	İlksel
894	2020-06-13	14:55:58	37.2168	36.0905	9.3	0	2.7	0	ORHANIYE-(OSMANIYE)	İlksel
895	2020-06-13	14:45:03	38.3328	38.9587	10.1	0	2.6	0	TOPALUSAGI-SIVRICE(ELAZIG)	İlksel
896	2020-06-13	11:41:41	39.911	35.7715	3.2	0	2.1	0	BUZLUK-KADISEHRI(YOZGAT)	İlksel
897	2020-06-14	10:57:04	38.8697	26.4268	5.2	0	2.1	0	EGEDENIZI	İlksel
898	2020-06-14	10:36:49	38.6895	38.1273	5.4	0	2.1	0	AKYAZI-YAZIHAN(MALATYA)	İlksel
899	2020-06-14	12:09:40	37.1892	27.9683	0	0	1.6	0	CAMLICA-YATAGAN(MUGLA)	İlksel
900	2020-06-14	13:16:29	39.3403	27.8748	5	0	2	0	KOZDEREGUVEN-(BALIKESIR)	İlksel
901	2020-06-14	15:02:13	35.3245	26.6698	49.4	0	3.3	0	GIRITADASI(AKDENIZ)	İlksel
902	2020-06-14	15:22:56	34.7182	25.4503	31.4	0	3	0	GIRITADASI(AKDENIZ)	İlksel
903	2020-06-14	16:09:54	38.2627	38.8482	1	0	2.2	0	ORMELI-PUTURGE(MALATYA)	İlksel
904	2020-06-15	17:32:03	39.4013	40.7553	11.8	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
905	2020-06-15	17:13:30	39.3588	40.473	17.2	0	2.2	0	CEVIZLI-ADAKLI(BINGOL)	İlksel
906	2020-06-15	17:00:23	39.38	40.7577	10.6	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
907	2020-06-15	16:34:41	39.3785	40.6693	5.3	0	3.2	3.2	DINARBEY-YEDISU(BINGOL)	İlksel
908	2020-06-15	16:18:55	39.3555	40.535	13.1	0	2.4	0	SENKOY-YEDISU(BINGOL)	İlksel
909	2020-06-15	15:50:34	39.3552	40.75	16.7	0	2.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
910	2020-06-15	15:11:30	38.4137	39.2403	2.4	0	2.1	0	SOGUKPINAR-SIVRICE(ELAZIG)	İlksel
911	2020-06-15	14:54:54	39.3485	40.6752	6.9	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
912	2020-06-15	14:41:10	39.3737	40.6868	13	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
913	2020-06-15	14:27:23	39.37	40.7713	15	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
914	2020-06-15	14:26:29	39.374	40.7348	16.7	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
915	2020-06-15	14:18:27	38.413	39.1673	1.1	0	1	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
916	2020-06-15	14:01:02	39.3655	40.6755	5.3	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
917	2020-06-15	13:53:35	39.3302	40.7493	7.5	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
918	2020-06-15	13:49:58	39.3688	40.736	7.3	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
919	2020-06-15	13:48:56	39.3905	40.8103	5.3	0	2	0	SARIKUSAK-KARLIOVA(BINGOL)	İlksel
920	2020-06-15	13:27:56	40.86	30.376	9.5	0	1.6	0	KAYRANCIK-ADAPAZARI(SAKARYA)	İlksel
921	2020-06-15	13:18:21	39.372	40.7522	18.4	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
922	2020-06-15	12:55:56	39.3827	40.7237	14.6	0	1.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
923	2020-06-15	12:52:04	39.3848	40.6945	17.2	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
924	2020-06-15	12:45:26	39.3643	40.679	7.4	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
925	2020-06-15	12:40:01	39.3557	40.7558	15.3	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
926	2020-06-15	12:33:42	39.3315	40.6997	7.8	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
927	2020-06-15	12:32:42	39.2013	28.478	22.9	0	1.7	0	CILBIRCI-SINDIRGI(BALIKESIR)	İlksel
928	2020-06-15	12:31:05	38.2682	38.6678	18	0	2.3	0	CAYKOY-PUTURGE(MALATYA)	İlksel
929	2020-06-15	12:25:25	39.3682	40.7105	15.6	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
930	2020-06-15	12:19:57	39.3702	40.7733	10.4	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
931	2020-06-15	12:16:25	39.3772	40.7273	7.4	0	2.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
932	2020-06-15	12:14:49	39.3627	40.7688	3.6	0	2.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
933	2020-06-15	12:09:18	39.3638	40.6958	3.9	0	2.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
934	2020-06-15	12:08:58	35.9703	26.969	12	0	2.4	0	AKDENIZ	İlksel
935	2020-06-15	12:03:10	39.3663	40.7537	14.6	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
936	2020-06-15	11:58:13	37.1458	28.1813	4.1	0	1.5	0	MEKE-(MUGLA)	İlksel
937	2020-06-15	11:50:03	39.8402	40.6223	5	0	2.6	0	KUKURTLU-ASKALE(ERZURUM)	İlksel
938	2020-06-15	11:42:29	39.3473	40.7413	15.3	0	1.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
939	2020-06-15	11:41:45	35.39	22.9853	10.7	0	3.4	3.4	GIRITADASI(AKDENIZ)	İlksel
940	2020-06-15	11:40:49	39.377	40.7058	19.2	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
941	2020-06-15	11:35:29	39.379	40.6825	21.1	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
942	2020-06-15	11:35:12	39.368	40.7308	10.9	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
943	2020-06-15	11:30:40	39.3785	40.7383	6.8	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
944	2020-06-15	11:29:36	39.6015	29.6342	0	0	1.5	0	GUMUSGOLCUK-TAVSANLI(KUTAHYA)	İlksel
945	2020-06-15	11:26:24	39.3782	40.7128	15.4	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
946	2020-06-15	11:24:45	39.3883	40.6995	19.4	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
947	2020-06-15	11:23:45	39.3813	40.6732	29.3	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
948	2020-06-15	11:22:02	39.3817	40.754	12.6	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
949	2020-06-15	11:20:27	39.3452	40.7428	5.4	0	2.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
950	2020-06-15	11:16:58	39.3538	40.7842	4	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
951	2020-06-15	11:14:54	39.3605	40.6595	12.4	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
952	2020-06-15	11:08:13	39.3833	40.7422	17.3	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
953	2020-06-15	10:52:46	39.3267	40.6862	7.9	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
954	2020-06-15	10:50:26	39.4125	40.7277	22.3	0	2	0	SOBECAYIR-CAT(ERZURUM)	İlksel
955	2020-06-15	10:47:58	39.3428	40.6833	1.8	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
956	2020-06-15	10:40:10	39.3642	40.707	7.2	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
957	2020-06-15	10:36:41	39.3367	40.749	5	0	3.1	3.2	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
958	2020-06-15	10:32:37	39.3655	40.7662	5	0	3.9	4	KAYNARPINAR-KARLIOVA(BINGOL)REVIZE01	REVIZE01(2020.06.15-10:32:37)
959	2020-06-15	10:27:12	39.3422	40.7242	9.2	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
960	2020-06-15	10:26:18	39.2985	40.4255	4.6	0	2	0	YELDEGIRMENI-ADAKLI(BINGOL)	İlksel
961	2020-06-15	10:25:10	39.273	40.6288	16.5	0	1.8	0	AKTAS-ADAKLI(BINGOL)	İlksel
962	2020-06-15	10:23:01	39.341	40.7685	19.3	0	1.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
963	2020-06-15	10:22:14	39.3587	40.6988	13.7	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
964	2020-06-15	10:21:50	39.3793	40.7253	8.9	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
965	2020-06-15	10:21:07	39.3678	40.7283	10.2	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
966	2020-06-15	10:18:30	39.3895	40.6763	16	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
967	2020-06-15	10:17:31	39.35	40.7462	14.6	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
968	2020-06-15	10:16:47	39.3625	40.7468	12.9	0	2.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
969	2020-06-15	10:15:13	39.3853	40.6983	13.3	0	2.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
970	2020-06-15	10:14:36	39.3468	40.6932	5	0	3.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
971	2020-06-15	10:10:10	39.364	40.6753	5.2	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
972	2020-06-15	10:08:03	39.369	40.7425	7.1	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
973	2020-06-15	10:06:03	39.3655	40.7527	15.4	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
974	2020-06-15	10:05:26	39.3928	40.7635	10.3	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
975	2020-06-15	10:01:57	39.3707	40.713	3.8	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
976	2020-06-15	10:00:39	39.3612	40.7027	7.5	0	2.4	0	DINARBEY-YEDISU(BINGOL)REVIZE01	REVIZE01(2020.06.15-10:00:38)
977	2020-06-15	09:51:28	39.3537	40.751	5	0	5.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
978	2020-06-15	09:46:39	39.3685	40.7445	5.4	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
979	2020-06-15	09:38:51	39.0143	29.9522	5.2	0	2.3	0	PINARCIK-ALTINTAS(KUTAHYA)	İlksel
980	2020-06-15	09:36:40	39.362	40.7	7.9	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
981	2020-06-15	09:24:37	39.3787	40.7547	13.1	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
982	2020-06-15	09:22:44	39.38	40.7413	14.3	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
983	2020-06-15	09:18:06	39.3667	40.548	11.8	0	1.9	0	SENKOY-YEDISU(BINGOL)	İlksel
984	2020-06-15	09:09:58	39.3755	40.7557	20.4	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
985	2020-06-15	09:06:33	39.353	40.6932	5	0	2.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
986	2020-06-15	08:56:30	40.8745	28.2572	13.8	0	1.6	0	SILIVRIACIKLARI-ISTANBUL(MARMARADENIZI)	İlksel
987	2020-06-15	08:46:35	38.9502	27.876	1.9	0	2.6	0	CAMONU-AKHISAR(MANISA)	İlksel
988	2020-06-15	08:30:56	39.3632	40.7387	7.3	0	2.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
989	2020-06-15	08:30:02	39.3593	40.7292	5	0	3.5	3.7	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
990	2020-06-15	08:27:54	38.3895	39.1375	4.9	0	0.8	0	USLU-SIVRICE(ELAZIG)REVIZE01	REVIZE01(2020.06.15-08:27:56)
991	2020-06-15	08:12:36	39.3402	40.7283	5	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
992	2020-06-15	08:03:58	37.1133	28.6143	7.9	0	2.4	0	ARICILAR-ULA(MUGLA)	İlksel
993	2020-06-15	07:55:28	39.3928	25.5612	9.1	0	2.5	0	EGEDENIZI	İlksel
994	2020-06-15	07:36:49	39.3682	40.644	6.3	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
995	2020-06-15	07:34:06	39.3302	40.7257	5	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
996	2020-06-15	07:24:58	39.3913	40.7048	6.7	0	1.9	0	DINARBEY-YEDISU(BINGOL)REVIZE01	REVIZE01(2020.06.15-07:24:58)
997	2020-06-15	07:13:11	39.3668	40.6185	11.1	0	1.8	0	ELMALI-YEDISU(BINGOL)	İlksel
998	2020-06-15	07:12:10	39.3735	40.6702	11	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
999	2020-06-15	07:09:02	38.2982	38.8512	19.7	0	1.4	0	GUNDEGER-PUTURGE(MALATYA)REVIZE01	REVIZE01(2020.06.15-07:09:02)
1000	2020-06-15	07:04:18	39.3535	40.648	4.6	0	1.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1001	2020-06-15	06:43:53	39.3457	40.6568	5.5	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1002	2020-06-15	06:21:35	39.3487	40.7258	5	0	2.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1003	2020-06-15	06:19:33	39.363	40.6128	5.1	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1004	2020-06-15	06:16:51	38.4183	39.1998	4.6	0	1.1	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
1005	2020-06-15	06:08:37	39.3722	40.7238	10.9	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1006	2020-06-15	06:04:18	39.3607	40.6467	11.8	0	1.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1007	2020-06-15	06:02:48	39.3925	40.7303	12.9	0	1.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1008	2020-06-15	05:54:22	39.3575	40.6433	12.4	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1009	2020-06-15	05:51:20	39.6432	26.111	5.4	0	1.7	0	KOSEDERE-AYVACIK(CANAKKALE)	İlksel
1010	2020-06-15	05:46:46	39.338	40.6937	5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1011	2020-06-15	05:24:50	39.3743	40.6862	5.6	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1012	2020-06-15	05:06:04	39.3682	40.6883	5.4	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1013	2020-06-15	04:53:25	36.8727	27.4557	5.3	0	1.7	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1014	2020-06-15	04:53:09	39.3585	40.6757	6.1	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1015	2020-06-15	04:32:44	39.3508	40.7322	10	0	1.8	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1016	2020-06-15	04:25:47	36.856	27.378	5	0	1.9	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1017	2020-06-15	04:25:28	39.328	40.7197	5	0	1.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1018	2020-06-15	04:24:52	39.385	40.7348	14.4	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1019	2020-06-15	04:23:29	39.351	40.7075	11	0	1.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1020	2020-06-15	04:21:05	39.3648	40.701	10.4	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1021	2020-06-15	04:14:29	39.3902	40.6677	18.3	0	1.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1022	2020-06-15	04:13:58	39.3642	40.69	14.6	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1023	2020-06-15	04:12:13	39.3707	40.7427	5.4	0	1.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1024	2020-06-15	04:08:42	39.381	40.6773	10.8	0	1.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1025	2020-06-15	03:58:46	38.7607	25.6607	6.9	0	2.2	0	EGEDENIZI	İlksel
1026	2020-06-15	03:58:46	38.8755	29.0192	22.8	0	1.2	0	CAKIRLAR-SIMAV(KUTAHYA)	İlksel
1027	2020-06-15	03:58:19	39.3623	40.7425	5	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1028	2020-06-15	03:56:12	39.3253	40.7152	5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1029	2020-06-15	03:50:08	39.3638	40.6723	5.5	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1030	2020-06-15	03:33:52	39.3385	40.7145	5	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1031	2020-06-15	03:31:50	39.3667	40.7158	13.4	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1032	2020-06-15	03:31:16	39.3628	40.6865	9.1	0	1.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1033	2020-06-15	03:25:01	39.3325	40.756	5	0	2.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1034	2020-06-15	03:14:40	39.3553	40.711	2	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1035	2020-06-15	03:03:33	39.3583	40.7457	4.2	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1036	2020-06-15	03:02:46	39.3455	40.6725	4.7	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1037	2020-06-15	02:59:17	39.3393	40.7505	5	0	2.8	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1038	2020-06-15	02:55:25	39.3483	40.6155	2.7	0	2.3	0	ELMALI-YEDISU(BINGOL)	İlksel
1039	2020-06-15	02:53:40	39.3778	40.6297	4.7	0	1.7	0	ELMALI-YEDISU(BINGOL)	İlksel
1040	2020-06-15	02:47:22	39.365	40.7428	3.6	0	1.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1041	2020-06-15	02:44:41	39.3588	40.7295	9.6	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1042	2020-06-15	02:43:21	39.3673	40.6977	13.1	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1043	2020-06-15	02:41:19	39.356	40.7538	5.1	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1044	2020-06-15	02:39:58	39.1042	29.1313	8.8	0	1.5	0	SENKOY-SIMAV(KUTAHYA)	İlksel
1045	2020-06-15	02:37:58	39.3553	40.6683	2.6	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1046	2020-06-15	02:34:21	39.352	40.6868	5.1	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1047	2020-06-15	02:25:17	38.4183	39.2812	8.4	0	1.3	0	YEDIKARDES-SIVRICE(ELAZIG)	İlksel
1048	2020-06-15	02:15:06	36.9842	28.5167	5.2	0	1.1	0	CORUS-ULA(MUGLA)	İlksel
1049	2020-06-15	02:12:15	39.3427	40.6397	5.4	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1050	2020-06-15	02:01:44	39.3442	40.7508	5	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1051	2020-06-15	01:53:17	39.3597	40.6673	5	0	3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1052	2020-06-15	01:48:13	39.3705	40.4715	8.6	0	1.9	0	GUZGULU-YEDISU(BINGOL)	İlksel
1053	2020-06-15	01:46:36	37.6033	38.6135	15.6	0	1.7	0	BELOREN-KAHTA(ADIYAMAN)	İlksel
1054	2020-06-15	01:40:35	39.3645	40.7027	5	0	3.8	3.9	DINARBEY-YEDISU(BINGOL)	İlksel
1055	2020-06-15	01:36:23	39.3702	40.7145	5	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1056	2020-06-15	01:33:58	39.4067	40.6452	20.6	0	1.7	0	ELMALI-YEDISU(BINGOL)REVIZE01	REVIZE01(2020.06.15-01:33:57)
1057	2020-06-15	01:32:58	39.3648	40.6205	4.5	0	1.7	0	ELMALI-YEDISU(BINGOL)	İlksel
1058	2020-06-15	01:31:08	39.349	40.6533	5.1	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1059	2020-06-15	01:20:58	39.3637	40.6892	5	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1060	2020-06-15	01:19:32	39.3442	40.7115	6	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1061	2020-06-15	01:11:18	39.3487	40.6808	10.8	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1062	2020-06-15	01:09:21	39.3483	40.7295	5	0	2.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1063	2020-06-15	01:04:59	39.3865	40.67	19.7	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1064	2020-06-15	01:04:33	39.3693	40.7258	7.7	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1065	2020-06-15	01:01:39	39.342	40.6937	5.5	0	1.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1066	2020-06-15	00:58:53	39.3453	40.702	1.6	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1067	2020-06-15	00:56:59	39.3508	40.7448	5.2	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1068	2020-06-15	00:55:33	39.33	40.7627	5	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1069	2020-06-15	00:54:31	39.3723	40.7238	5.2	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1070	2020-06-15	00:47:57	39.3958	40.6862	16	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1071	2020-06-15	00:47:10	39.3963	40.6687	18.4	0	1.5	0	ELMALI-YEDISU(BINGOL)	İlksel
1072	2020-06-15	00:46:09	39.372	40.6225	18.7	0	1.8	0	ELMALI-YEDISU(BINGOL)	İlksel
1073	2020-06-15	00:39:03	39.3728	40.7098	1.1	0	2.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1074	2020-06-15	00:38:13	39.3783	40.7172	8.4	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1075	2020-06-15	00:35:19	39.3918	40.7153	15	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1076	2020-06-15	00:34:21	39.3687	40.7002	15.8	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1077	2020-06-15	00:33:21	39.361	40.7187	8.9	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1078	2020-06-15	00:30:04	39.3973	40.676	15.3	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1079	2020-06-15	00:20:36	39.366	40.6808	3.2	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1080	2020-06-15	00:17:57	39.3622	40.7135	5	0	3.8	3.9	DINARBEY-YEDISU(BINGOL)	İlksel
1081	2020-06-15	00:17:04	39.3685	40.7305	15.2	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1082	2020-06-15	00:12:12	39.3487	40.6378	18.5	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1083	2020-06-15	00:06:19	39.3575	40.7195	5	0	3.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1084	2020-06-15	00:04:03	39.3793	40.649	14.9	0	1.5	0	ELMALI-YEDISU(BINGOL)	İlksel
1085	2020-06-15	00:00:37	39.3735	40.6672	13.2	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1086	2020-06-14	23:59:39	39.3937	40.7195	15.6	0	1.8	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1087	2020-06-14	23:57:33	39.3798	40.7102	14.6	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1088	2020-06-14	23:56:56	39.3862	40.7105	15.8	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1089	2020-06-14	23:55:20	39.3902	40.6563	17.7	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1090	2020-06-14	23:52:38	39.3617	40.7297	2.5	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1091	2020-06-14	23:46:18	39.393	40.6427	24.8	0	1.4	0	ELMALI-YEDISU(BINGOL)	İlksel
1092	2020-06-14	23:41:53	39.3663	40.7162	11.4	0	1.8	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1093	2020-06-14	23:40:07	37.0067	28.1468	18	0	1.2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1094	2020-06-14	23:37:01	39.3783	40.6302	15.9	0	1.9	0	ELMALI-YEDISU(BINGOL)	İlksel
1095	2020-06-14	23:34:01	39.0147	27.8365	12.7	0	1.6	0	GOKCEAHMET-AKHISAR(MANISA)	İlksel
1096	2020-06-14	23:33:59	39.3798	40.6497	15.6	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1097	2020-06-14	23:26:08	39.3677	40.6327	6.8	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1098	2020-06-14	23:21:16	39.3867	40.6385	20.6	0	2.1	0	ELMALI-YEDISU(BINGOL)	İlksel
1099	2020-06-14	23:20:01	37.3482	35.808	23	0	1.4	0	YASSICALI-KOZAN(ADANA)	İlksel
1100	2020-06-14	23:15:39	39.351	40.6888	4.1	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1101	2020-06-14	23:14:24	39.3697	40.7935	16.4	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)REVIZE01	REVIZE01(2020.06.14-23:14:23)
1102	2020-06-14	23:05:45	38.4317	39.2448	5	0	1.8	0	KURKKOY-SIVRICE(ELAZIG)	İlksel
1103	2020-06-14	23:03:28	39.375	40.6852	14.7	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1104	2020-06-14	23:01:13	39.384	40.7112	16.9	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1105	2020-06-14	22:58:35	39.3928	40.7152	19.3	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1106	2020-06-14	22:58:22	39.3655	40.711	15.5	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1107	2020-06-14	22:55:28	39.3682	40.6967	7.2	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1108	2020-06-14	22:54:41	39.3802	40.6218	15.5	0	1.8	0	ELMALI-YEDISU(BINGOL)REVIZE01	REVIZE01(2020.06.14-22:54:39)
1109	2020-06-14	22:53:18	39.3798	40.6423	16.3	0	1.9	0	ELMALI-YEDISU(BINGOL)	İlksel
1110	2020-06-14	22:51:24	39.3733	40.646	1.9	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
1111	2020-06-14	22:49:11	39.3945	40.7272	21.6	0	2.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1112	2020-06-14	22:46:24	40.8005	25.6082	7.6	0	1.9	0	EGEDENIZI	İlksel
1113	2020-06-14	22:43:25	39.3423	40.6835	5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1114	2020-06-14	22:39:42	39.3592	40.6432	4.5	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1115	2020-06-14	22:31:51	39.3833	40.6592	12.8	0	2	0	DINARBEY-YEDISU(BINGOL)REVIZE01	REVIZE01(2020.06.14-22:31:49)
1116	2020-06-14	22:29:09	39.37	40.674	4	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1117	2020-06-14	22:24:31	39.3838	40.6938	19.4	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1118	2020-06-14	22:17:41	39.3547	40.7287	3.4	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1119	2020-06-14	22:10:54	39.368	40.7073	8.3	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1120	2020-06-14	22:10:31	39.3797	40.6418	17.4	0	1.8	0	ELMALI-YEDISU(BINGOL)	İlksel
1121	2020-06-14	22:08:59	39.386	40.6168	17.4	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
1122	2020-06-14	22:04:23	39.393	40.7092	20.4	0	1.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1123	2020-06-14	22:02:52	39.3732	40.6642	15.6	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1124	2020-06-14	21:58:47	39.379	40.7255	17.4	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1125	2020-06-14	21:57:29	39.3927	40.6833	23.6	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1126	2020-06-14	21:57:13	39.3422	40.6857	14.8	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1127	2020-06-14	21:54:09	39.3448	40.7557	5	0	3.7	3.8	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1128	2020-06-14	21:48:06	39.3517	40.7218	5	0	2.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1129	2020-06-14	21:45:01	39.3607	40.71	5	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1130	2020-06-14	21:42:25	39.3627	40.6962	5	0	2.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1131	2020-06-14	21:40:54	39.3943	40.658	17.7	0	1.7	0	ELMALI-YEDISU(BINGOL)	İlksel
1132	2020-06-14	21:36:42	39.367	40.7083	1.2	0	1.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1133	2020-06-14	21:34:45	39.3668	40.738	5	0	1.8	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1134	2020-06-14	21:32:40	39.327	40.677	5	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1135	2020-06-14	21:28:21	39.3553	40.7067	5.3	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1136	2020-06-14	21:27:14	39.3773	40.6733	5.4	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1137	2020-06-14	21:26:22	39.3695	40.7085	4.1	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1138	2020-06-14	21:25:06	39.3322	40.6765	5	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1139	2020-06-14	21:24:30	36.1478	29.7135	5	0	1.3	0	BAYINDIR-KAS(ANTALYA)	İlksel
1140	2020-06-14	21:16:57	39.3458	40.6932	5.4	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1141	2020-06-14	21:13:27	39.3605	40.7007	3.8	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1142	2020-06-14	21:09:31	39.3483	40.7058	4.5	0	3	3.1	DINARBEY-YEDISU(BINGOL)	İlksel
1143	2020-06-14	21:03:12	39.3657	40.77	1.3	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1144	2020-06-14	21:01:51	34.0408	26.1498	7.7	0	3.2	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1145	2020-06-14	21:01:48	39.362	40.667	5.4	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1146	2020-06-14	21:00:13	39.3515	40.763	2.2	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1147	2020-06-14	20:59:21	40.9198	33.896	7.6	0	3.2	3.1	KARABEY-TOSYA(KASTAMONU)	İlksel
1148	2020-06-14	20:58:49	39.398	40.7155	5	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)REVIZE01	REVIZE01(2020.06.14-20:58:49)
1149	2020-06-14	20:56:23	39.3745	40.742	4.7	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1150	2020-06-14	20:54:25	39.3432	40.6992	5.2	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1151	2020-06-14	20:52:43	39.3573	40.6825	6.5	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1152	2020-06-14	20:52:13	39.3593	40.7047	5.2	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1153	2020-06-14	20:50:25	39.3452	40.7413	4.9	0	2.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1154	2020-06-14	20:47:06	39.3558	40.693	8.7	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1155	2020-06-14	20:46:16	39.361	40.691	2.1	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1156	2020-06-14	20:45:02	39.3788	40.6973	4.9	0	2.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1157	2020-06-14	20:43:23	39.3642	40.7272	5.5	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1158	2020-06-14	20:32:02	39.36	40.6883	5.9	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1159	2020-06-14	20:28:38	39.3228	40.7152	5	0	2.5	0	DINARBEY-YEDISU(BINGOL)REVIZE01	REVIZE01(2020.06.14-20:28:38)
1160	2020-06-14	20:26:37	39.363	40.7522	5.1	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1161	2020-06-14	20:23:08	39.3478	40.687	1.7	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1162	2020-06-14	20:17:44	39.3675	40.6727	9	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1163	2020-06-14	20:16:40	39.3475	40.6918	5	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1164	2020-06-14	20:13:13	39.3583	40.7378	4.4	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1165	2020-06-14	20:11:04	39.3565	40.685	5.4	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1166	2020-06-14	20:08:49	39.3537	40.7695	5.8	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1167	2020-06-14	20:06:23	39.3567	40.7077	2.8	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1168	2020-06-14	19:59:42	39.3557	40.739	1.4	0	3.6	3.6	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1169	2020-06-14	19:52:59	39.3777	40.6688	14.2	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1170	2020-06-14	19:51:30	39.3422	40.7468	8.7	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1171	2020-06-14	19:32:11	39.3667	40.7308	5	0	3.3	3.4	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1172	2020-06-14	19:27:34	39.3425	40.6673	4.9	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1173	2020-06-14	19:24:35	39.376	40.6875	5.1	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1174	2020-06-14	19:23:15	39.347	40.7067	8.3	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1175	2020-06-14	19:21:58	39.349	40.7385	10	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1176	2020-06-14	19:18:19	39.3508	40.7127	16.4	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1177	2020-06-14	19:14:15	39.3555	40.7327	5.3	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)REVIZE01	REVIZE01(2020.06.14-19:14:14)
1178	2020-06-14	19:09:19	39.3638	40.6385	16.9	0	2.6	0	ELMALI-YEDISU(BINGOL)	İlksel
1179	2020-06-14	19:09:18	38.4315	39.0785	8.4	0	2.2	0	GOZELI-SIVRICE(ELAZIG)	İlksel
1180	2020-06-14	19:06:35	39.4007	40.6592	5.3	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1181	2020-06-14	18:58:18	39.3293	40.735	5	0	3.6	3.8	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1182	2020-06-14	18:53:26	39.3773	40.6542	5	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1183	2020-06-14	18:50:36	36.8113	26.2	7.1	0	2.4	0	AKDENIZ	İlksel
1184	2020-06-14	18:49:34	39.3257	40.6978	5	0	2.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1185	2020-06-14	18:48:41	38.3908	39.0895	9.1	0	1.4	0	KALABA-SIVRICE(ELAZIG)	İlksel
1186	2020-06-14	18:45:17	39.3568	40.6702	2.8	0	2.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1187	2020-06-14	18:37:03	39.333	40.7573	5	0	3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1188	2020-06-14	18:32:05	39.3323	40.717	5	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1189	2020-06-14	18:28:48	39.371	40.7218	23.3	0	2.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1190	2020-06-14	18:25:00	39.373	40.7245	5	0	3.3	3.5	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1191	2020-06-14	18:22:07	39.3925	40.657	16.8	0	2.1	0	ELMALI-YEDISU(BINGOL)	İlksel
1192	2020-06-14	18:09:15	39.3665	40.7655	1.3	0	4.6	4.7	KAYNARPINAR-KARLIOVA(BINGOL)REVIZE01	REVIZE01(2020.06.14-18:09:14)
1193	2020-06-14	18:05:14	39.3652	40.6232	6.7	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1194	2020-06-14	18:02:40	36.9207	27.5215	4.9	0	1.8	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1195	2020-06-14	18:02:12	39.3722	40.6483	12.2	0	2.2	0	ELMALI-YEDISU(BINGOL)	İlksel
1196	2020-06-14	18:02:02	39.3822	40.6938	12.9	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1197	2020-06-14	17:57:18	37.1515	34.551	3.9	0	3.1	3	SEBIL-CAMLIYAYLA(MERSIN)	İlksel
1198	2020-06-14	17:53:46	39.372	40.6775	16.3	0	3.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1199	2020-06-14	17:48:55	39.38	40.6758	12.6	0	3.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1200	2020-06-14	17:47:48	39.3513	40.6867	3	0	3	2.8	DINARBEY-YEDISU(BINGOL)	İlksel
1201	2020-06-14	17:45:36	39.3755	40.6827	8.4	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1202	2020-06-14	17:43:49	39.3498	40.6403	5	0	2.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1203	2020-06-14	17:34:46	39.3607	40.7458	5	0	4.5	4.6	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1204	2020-06-14	17:30:31	39.3623	40.7552	5	0	3.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1205	2020-06-14	17:24:26	39.3495	40.735	5	0	5.8	5.8	KAYNARPINAR-KARLIOVA(BINGOL)REVIZE01	REVIZE01(2020.06.14-17:24:27)
1206	2020-06-13	00:05:47	38.2975	38.9065	25.9	0	1.4	0	TATLICAK-PUTURGE(MALATYA)	İlksel
1207	2020-06-12	04:27:08	38.4883	25.7885	5.7	0	1.9	0	SAKIZADASI(EGEDENIZI)	İlksel
1208	2020-06-15	18:07:21	38.5182	39.1058	11.7	0	1.5	0	BADEMPINARI-(ELAZIG)	İlksel
1209	2020-06-15	18:09:52	39.3568	40.7045	2.4	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1210	2020-06-15	18:23:02	39.3778	40.7005	13.9	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1211	2020-06-15	18:40:57	36.9968	28.5453	18.5	0	1.3	0	DOGUSBELEN-KOYCEGIZ(MUGLA)	İlksel
1212	2020-06-15	19:03:25	38.418	39.1398	4.6	0	1.6	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1213	2020-06-15	19:26:17	39.3812	40.7095	21.5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1214	2020-06-15	19:29:14	39.3485	40.6993	5	0	3.1	3.2	DINARBEY-YEDISU(BINGOL)	İlksel
1215	2020-06-15	19:52:35	39.374	40.6817	5	0	3.7	3.9	DINARBEY-YEDISU(BINGOL)	İlksel
1216	2020-06-15	19:41:45	39.397	40.6805	26.9	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1217	2020-06-15	19:42:41	39.4078	40.592	18.2	0	2	0	YESILGOL-YEDISU(BINGOL)	İlksel
1218	2020-06-15	20:02:36	39.3653	40.6925	5	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1219	2020-06-15	20:21:34	39.3653	40.7137	4.1	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1220	2020-06-15	21:04:03	38.9185	26.4582	5	0	2	0	EGEDENIZI	İlksel
1221	2020-06-15	21:06:47	38.9665	26.4235	5	0	1.8	0	MIDILLIADASI(EGEDENIZI)	İlksel
1222	2020-06-15	21:22:39	39.3383	40.6633	5	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1223	2020-06-15	21:48:25	39.3825	40.6325	18.5	0	1.6	0	ELMALI-YEDISU(BINGOL)	İlksel
1224	2020-06-15	18:05:52	39.2025	25.703	8.3	0	2.6	0	EGEDENIZI	İlksel
1225	2020-06-15	19:03:32	41.0442	31.2045	10.9	0	1.6	0	CICEKPINAR-AKCAKOCA(DUZCE)	İlksel
1226	2020-06-15	19:51:13	38.4268	26.6955	16.1	0	1.7	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
1227	2020-06-15	22:00:15	39.3948	40.7037	16.9	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1228	2020-06-15	22:03:43	38.3957	39.0993	5.3	0	0.9	0	KALABA-SIVRICE(ELAZIG)	İlksel
1229	2020-06-15	22:05:57	39.3765	40.6113	15.4	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
1230	2020-06-15	22:46:19	36.9995	28.5272	12.2	0	1.2	0	CORUS-ULA(MUGLA)	İlksel
1231	2020-06-15	23:08:23	39.3555	40.6758	7.3	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1232	2020-06-15	23:12:56	34.2893	25.912	5	0	4.2	4.5	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1233	2020-06-15	23:15:54	39.3677	40.6588	15.4	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1234	2020-06-16	10:44:24	39.327	40.6877	1.5	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1235	2020-06-16	10:02:07	36.4633	28.7193	2.5	0	3	2.9	AKDENIZ	İlksel
1236	2020-06-16	09:57:34	39.365	40.6907	2.5	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1237	2020-06-16	09:46:22	38.4597	39.2072	2.4	0	1.9	0	DEDEYOLU-SIVRICE(ELAZIG)	İlksel
1238	2020-06-16	07:37:40	39.3552	40.6923	4.9	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1239	2020-06-16	07:32:17	37.1735	28.7648	3.4	0	1.8	0	KARACAOREN-(MUGLA)	İlksel
1240	2020-06-16	07:21:06	37.4358	35.9915	4.3	0	1.5	0	KUCUKCINAR-SUMBAS(OSMANIYE)	İlksel
1241	2020-06-16	07:12:52	39.3368	40.7055	5	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1242	2020-06-16	07:10:18	39.351	40.6938	5	0	2.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1243	2020-06-16	06:28:48	33.868	25.9337	7.9	0	3.2	3.3	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1244	2020-06-16	06:17:53	36.604	36.4838	5	0	2.6	0	AYGIRGOLU-KIRIKHAN(HATAY)	İlksel
1245	2020-06-16	06:05:52	39.3818	40.6557	14.7	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
1246	2020-06-16	05:44:22	37.4043	35.9527	4.5	0	1.3	0	CAYGECIT-KADIRLI(OSMANIYE)	İlksel
1247	2020-06-16	05:21:57	36.9968	28.518	11.1	0	2.4	0	CORUS-ULA(MUGLA)	İlksel
1248	2020-06-16	04:34:48	39.1973	40.6903	4.9	0	1.6	0	KAYNAKDUZU-ADAKLI(BINGOL)	İlksel
1249	2020-06-16	04:34:13	39.3718	40.6443	13.4	0	1.9	0	ELMALI-YEDISU(BINGOL)	İlksel
1250	2020-06-16	04:12:29	39.3772	40.7355	7.1	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1251	2020-06-16	03:57:07	38.2655	38.7838	8.5	0	1.8	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
1252	2020-06-16	02:59:33	39.366	40.7467	5	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1253	2020-06-16	02:51:41	39.3743	40.6987	6	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1254	2020-06-16	02:41:27	39.6262	27.6185	7.1	0	1.2	0	GOKCEYAZI-IVRINDI(BALIKESIR)	İlksel
1255	2020-06-16	02:33:29	39.3575	40.775	4.4	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1256	2020-06-16	02:11:58	39.3493	40.724	7.1	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1257	2020-06-16	01:58:59	38.3668	39.1928	5	0	1.1	0	DOGANSU-SIVRICE(ELAZIG)	İlksel
1258	2020-06-16	01:57:18	38.441	39.2988	5	0	1.7	0	SIVRICE(ELAZIG)	İlksel
1259	2020-06-16	01:28:21	38.4167	26.7015	10.8	0	1.6	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
1260	2020-06-16	00:56:12	39.3392	40.7065	5	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1261	2020-06-16	00:48:25	38.0737	37.9517	5	0	2.3	0	GUROBASI-DOGANSEHIR(MALATYA)	İlksel
1262	2020-06-16	00:35:09	38.4565	39.1093	11.5	0	1.4	0	DEREBOYNU-SIVRICE(ELAZIG)	İlksel
1263	2020-06-16	00:24:24	36.8262	23.9112	18.6	0	3	0	YUNANISTAN	İlksel
1264	2020-06-16	00:23:07	38.5513	36.3803	5	0	3	0	BUYUKKABAKTEPE-PINARBASI(KAYSERI)	İlksel
1265	2020-06-16	00:10:39	39.365	40.7295	5.5	0	3.4	3.3	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1266	2020-06-15	23:44:18	39.361	40.6912	6.1	0	1.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1267	2020-06-15	22:33:17	39.3545	40.6528	7.8	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1268	2020-06-16	08:58:10	38.793	38.0387	7.5	0	1.9	0	YAGCA-HEKIMHAN(MALATYA)	İlksel
1269	2020-06-16	11:06:07	39.3678	40.6407	24.4	0	2.1	0	ELMALI-YEDISU(BINGOL)	İlksel
1270	2020-06-16	10:53:17	37.4822	36.005	1.8	0	2.5	0	HOYUK-SUMBAS(OSMANIYE)	İlksel
1271	2020-06-16	11:49:34	37.1328	28.1828	5	0	1.3	0	BAGYAKA-(MUGLA)	İlksel
1272	2020-06-16	11:58:02	37.2178	28.2602	0	0	2.2	0	KAFACA-(MUGLA)	İlksel
1273	2020-06-16	12:05:20	37.3012	27.9753	0	0	1.4	0	KOZAGAC-YATAGAN(MUGLA)	İlksel
1274	2020-06-16	11:49:35	37.1128	28.2973	0	0	1.3	0	YENICE-(MUGLA)	İlksel
1275	2020-06-16	10:24:23	36.1097	31.3125	26	0	2.1	0	AKDENIZ	İlksel
1276	2020-06-16	10:06:15	36.5867	36.4375	7.8	0	2	0	KARAMANKASI-KIRIKHAN(HATAY)	İlksel
1277	2020-06-16	10:28:22	39.3868	40.6867	16.3	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1278	2020-06-16	09:00:53	39.3545	40.7288	11	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1279	2020-06-17	07:01:32	34.3045	23.7163	30.6	0	2.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1280	2020-06-17	06:58:10	39.342	40.7483	3.9	0	2.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1281	2020-06-17	06:26:32	39.9783	33.4447	5	0	1.1	0	SAMANLIK-KALECIK(ANKARA)	İlksel
1282	2020-06-17	06:25:41	39.369	40.6735	15.6	0	1.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1283	2020-06-17	06:24:34	39.3447	40.6832	5	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1284	2020-06-17	06:14:49	39.385	40.7662	13.8	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1285	2020-06-17	06:07:18	39.383	40.7433	5.3	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1286	2020-06-17	05:09:02	37.0127	28.5507	19.7	0	1.5	0	KARABOGURTLEN-ULA(MUGLA)	İlksel
1287	2020-06-17	05:05:52	39.3537	40.6668	10.9	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1288	2020-06-17	04:39:58	39.3527	40.67	3.1	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1289	2020-06-17	04:27:30	39.357	40.6655	7.3	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1290	2020-06-17	04:16:28	33.5217	27.9955	5	0	3	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1291	2020-06-17	03:51:28	39.3695	40.7057	5.3	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1292	2020-06-17	03:33:05	37.5197	35.9653	6.9	0	1.9	0	ESKIMANTAS-KOZAN(ADANA)	İlksel
1293	2020-06-17	03:11:07	38.014	26.9508	7.3	0	1.6	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
1294	2020-06-17	02:54:29	39.346	40.7138	5	0	3.3	3.4	DINARBEY-YEDISU(BINGOL)	İlksel
1295	2020-06-17	02:43:34	37.085	28.7532	5	0	1.5	0	YAYLA-KOYCEGIZ(MUGLA)	İlksel
1296	2020-06-17	02:41:54	37.928	29.138	5.3	0	1.4	0	PAMUKKALE-(DENIZLI)	İlksel
1297	2020-06-17	02:06:32	39.3907	40.7467	5.1	0	1.4	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1298	2020-06-17	02:01:43	37.2092	37.4933	9	0	1.6	0	GUNGURGE-SEHITKAMIL(GAZIANTEP)	İlksel
1299	2020-06-17	01:50:32	39.33	40.7758	5.5	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1300	2020-06-17	01:48:32	38.7365	27.8208	9.5	0	1.5	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1301	2020-06-17	01:42:18	40.037	42.7387	7.9	0	1.8	0	YELLIKIRAN-KAGIZMAN(KARS)	İlksel
1302	2020-06-17	01:41:53	38.7387	27.8453	6.2	0	1.6	0	TIYENLI-GOLMARMARA(MANISA)	İlksel
1303	2020-06-17	01:39:29	33.8433	28.2318	2.3	0	2.8	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1304	2020-06-17	00:42:38	33.9993	28.1608	98.1	0	3.1	3.4	AKDENIZ	İlksel
1305	2020-06-17	00:22:38	39.3377	40.7088	5	0	2.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
1306	2020-06-16	23:20:36	36.0112	30.9442	49.9	0	2.4	0	AKDENIZ	İlksel
1307	2020-06-16	23:13:32	35.684	32.212	39	0	2	0	AKDENIZ	İlksel
1308	2020-06-16	23:05:19	35.5122	26.7072	5	0	2.5	0	AKDENIZ	İlksel
1309	2020-06-16	22:18:11	37.8008	29.9977	4.2	0	3.8	3.9	BASMAKCI-(BURDUR)	İlksel
1310	2020-06-16	22:15:37	35.4002	26.7987	11.4	0	3.2	3.1	GIRITADASI(AKDENIZ)	İlksel
1311	2020-06-16	20:57:16	38.9855	27.9055	3	0	1.8	0	YENICE-AKHISAR(MANISA)	İlksel
1312	2020-06-16	20:16:37	36.939	27.3162	13.1	0	3	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1313	2020-06-16	19:00:39	33.8658	25.8977	9.6	0	3.4	3.4	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1314	2020-06-16	16:25:27	39.0295	27.8617	10.8	0	2.2	0	MUSALAR-AKHISAR(MANISA)	İlksel
1315	2020-06-16	16:22:17	39.3645	40.6252	5.4	0	2.3	0	ELMALI-YEDISU(BINGOL)	İlksel
1316	2020-06-16	16:16:22	37.7803	37.5323	5	0	2.5	0	HACILAR-GOLBASI(ADIYAMAN)	İlksel
1317	2020-06-16	15:57:40	39.3725	40.6627	5	0	4.3	4.4	DINARBEY-YEDISU(BINGOL)	İlksel
1318	2020-06-16	15:16:11	38.7345	43.0797	5	0	2.5	0	VANGOLU	İlksel
1319	2020-06-16	15:02:09	35.536	32.1602	15.5	0	2.3	0	AKDENIZ	İlksel
1320	2020-06-16	14:46:21	39.3417	40.6582	5	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1321	2020-06-16	14:44:01	39.3647	40.7513	8.3	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1322	2020-06-16	14:42:04	38.1962	30.7615	5.2	0	1.5	0	GENCALI-SENIRKENT(ISPARTA)	İlksel
1323	2020-06-16	14:04:26	39.3518	40.6477	4.7	0	2.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1324	2020-06-16	14:02:49	39.3347	40.7742	5	0	3	3	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1325	2020-06-16	13:54:41	39.3323	40.6528	5	0	2.3	0	DINARBEY-YEDISU(BINGOL)	İlksel
1326	2020-06-16	13:32:22	39.3433	40.7133	2.1	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1327	2020-06-16	13:25:47	38.6098	39.4887	13	0	2.2	0	ELMAPINARI-(ELAZIG)	İlksel
1328	2020-06-16	13:00:14	39.3773	40.6053	14.1	0	2	0	ELMALI-YEDISU(BINGOL)	İlksel
1329	2020-06-16	12:55:40	39.3335	40.649	1.2	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1330	2020-06-16	12:27:15	36.9772	28.069	5	0	1.9	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1331	2020-06-16	10:41:20	40.4067	27.1845	11.8	0	1.8	0	ORTULUCE-BIGA(CANAKKALE)	İlksel
1332	2020-06-16	09:37:57	40.6108	30.3407	0	0	1.6	0	SEREFIYE-GEYVE(SAKARYA)	İlksel
1333	2020-06-16	09:12:34	38.4333	39.337	13.8	0	1.1	0	SIVRICE(ELAZIG)	İlksel
1334	2020-06-16	08:43:44	39.3583	40.6938	7.7	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1335	2020-06-16	08:36:35	39.3257	40.6395	7.6	0	1.9	0	AKTAS-ADAKLI(BINGOL)	İlksel
1336	2020-06-17	21:29:13	39.3873	40.656	5	0	2.8	0	ELMALI-YEDISU(BINGOL)	İlksel
1337	2020-06-17	17:50:50	37.2797	37.295	5	0	1.8	0	BAGBASI-SEHITKAMIL(GAZIANTEP)	İlksel
1338	2020-06-17	16:44:44	39.3673	40.6992	12.9	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1339	2020-06-17	16:43:08	36.6708	38.3922	5	0	2.2	0	SURIYE	İlksel
1340	2020-06-17	16:25:53	39.0833	27.8633	8.7	0	2	0	SELCIKLI-AKHISAR(MANISA)	İlksel
1341	2020-06-17	16:17:56	39.3587	40.7237	16.7	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1342	2020-06-17	16:15:58	39.3585	40.7423	17.1	0	1.7	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1343	2020-06-17	16:13:59	39.3958	40.658	22.8	0	2.3	0	ELMALI-YEDISU(BINGOL)	İlksel
1344	2020-06-17	16:05:06	39.9843	30.4435	5	0	1.8	0	BEHCETIYE-TEPEBASI(ESKISEHIR)	İlksel
1345	2020-06-17	15:53:27	39.3828	40.6983	15.9	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1346	2020-06-17	15:19:57	39.2667	27.744	7.3	0	2.2	0	KOZLUOREN-SOMA(MANISA)	İlksel
1347	2020-06-17	15:07:49	39.9827	42.2575	5	0	1.9	0	YUKARITAHIRHOCA-HORASAN(ERZURUM)	İlksel
1348	2020-06-17	14:52:08	37.2847	34.3937	5	0	1.5	0	DELIMAHMUTLU-HALKAPINAR(KONYA)	İlksel
1349	2020-06-17	14:27:39	33.5165	28.0143	9.6	0	3.3	3.4	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1350	2020-06-17	14:04:07	38.4035	39.1452	2	0	1.2	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1351	2020-06-17	13:56:21	39.333	40.7602	5	0	2.2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1352	2020-06-17	13:52:42	39.355	40.6523	5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1353	2020-06-17	13:48:49	39.3613	40.7165	6.6	0	2.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1354	2020-06-17	13:47:59	38.7588	26.4722	8.2	0	2.6	0	EGEDENIZI	İlksel
1355	2020-06-17	13:43:00	40.1077	28.4265	7.4	0	1.9	0	YAMANLI-MUSTAFAKEMALPASA(BURSA)	İlksel
1356	2020-06-17	13:33:32	39.612	30.6923	12.3	0	1.7	0	AKSAKLI-SEYITGAZI(ESKISEHIR)	İlksel
1357	2020-06-17	13:20:13	39.0548	27.7415	5.4	0	1.5	0	SELVILI-AKHISAR(MANISA)	İlksel
1358	2020-06-17	13:19:46	39.4283	40.5343	8.8	0	2	0	YEDISU(BINGOL)	İlksel
1359	2020-06-17	13:15:43	40.219	30.8008	5.3	0	1.7	0	HIMMETOGLU-GOYNUK(BOLU)	İlksel
1360	2020-06-17	13:12:08	39.5878	29.381	0	0	1.5	0	KOPRUCEK-TAVSANLI(KUTAHYA)	İlksel
1361	2020-06-17	13:09:30	40.2068	30.8	8.6	0	1.8	0	HIMMETOGLU-GOYNUK(BOLU)	İlksel
1362	2020-06-17	12:55:30	40.3418	27.8747	8	0	1.2	0	EDINCIK-BANDIRMA(BALIKESIR)	İlksel
1363	2020-06-17	12:46:33	37.2937	31.9175	0	0	1.9	0	SUSUZ-SEYDISEHIR(KONYA)	İlksel
1364	2020-06-17	12:36:46	39.8827	28.823	0	0	1.5	0	YENIDANISMENT-ORHANELI(BURSA)	İlksel
1365	2020-06-17	12:35:06	37.2263	28.3223	5	0	1.7	0	AKCAOVA-(MUGLA)	İlksel
1366	2020-06-17	12:33:09	37.536	35.4085	4	0	1.4	0	ALADAG(ADANA)	İlksel
1367	2020-06-17	12:26:19	39.3377	40.629	5	0	2.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1368	2020-06-17	12:18:25	37.2322	27.9192	0	0	1.5	0	CAMLIBELEN-MILAS(MUGLA)	İlksel
1369	2020-06-17	12:11:25	40.4775	29.274	0	0	1.5	0	FINDIKLI-ORHANGAZI(BURSA)	İlksel
1370	2020-06-17	12:11:24	38.3952	39.2052	4.5	0	0.5	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
1371	2020-06-17	12:10:05	40.7235	27.5098	8.4	0	1.7	0	GUZELKOYACIKLARI-TEKIRDAG(MARMARADENIZI)	İlksel
1372	2020-06-17	12:04:22	39.1117	27.5683	5.8	0	1.8	0	DEREKOY-SOMA(MANISA)	İlksel
1373	2020-06-17	12:02:24	37.203	27.9702	0	0	1.7	0	CAMLICA-YATAGAN(MUGLA)	İlksel
1374	2020-06-17	11:54:07	38.2692	38.7758	5.4	0	2	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
1375	2020-06-17	11:48:12	37.2532	28.3002	5	0	2.2	0	IKIZCE-(MUGLA)	İlksel
1376	2020-06-17	11:47:13	37.5088	38.61	5	0	4.3	4.2	GAZIBEY-(SANLIURFA)	İlksel
1377	2020-06-17	11:45:10	40.1152	24.491	31	0	2.3	0	YUNANISTAN	İlksel
1378	2020-06-17	11:41:54	37.1155	28.4128	0	0	1.5	0	ULA(MUGLA)	İlksel
1379	2020-06-17	11:34:31	39.0817	27.5492	2.2	0	1.8	0	EGNEZ-SOMA(MANISA)	İlksel
1380	2020-06-17	11:31:00	39.3445	40.5635	6.3	0	2.3	0	CATMAOLUK-ADAKLI(BINGOL)	İlksel
1381	2020-06-17	10:40:36	36.5228	28.9783	2.6	0	1.8	0	OLUDENIZACIKLARI-MUGLA(AKDENIZ)	İlksel
1382	2020-06-17	10:16:33	39.3452	40.6442	5	0	2.1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1383	2020-06-17	10:13:47	38.4422	26.6817	3.6	0	1.7	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
1384	2020-06-17	10:00:00	39.3147	40.4893	4.8	0	1.8	0	AYSAKLI-ADAKLI(BINGOL)	İlksel
1385	2020-06-17	09:55:30	37.8315	29.2023	0	0	1.7	0	KOCADERE-(DENIZLI)	İlksel
1386	2020-06-17	09:05:50	39.3628	40.6313	9.2	0	2.1	0	ELMALI-YEDISU(BINGOL)	İlksel
1387	2020-06-17	08:49:27	39.3427	40.669	1.9	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1388	2020-06-17	08:40:55	39.4162	40.7018	16.3	0	2.1	0	SOBECAYIR-CAT(ERZURUM)	İlksel
1389	2020-06-17	08:08:14	36.1788	29.2692	7.5	0	1.5	0	KALKANACIKLARI-ANTALYA(AKDENIZ)	İlksel
1390	2020-06-17	07:52:27	39.8383	26.075	26.3	0	1.3	0	BOZCAADA(CANAKKALE)	İlksel
1391	2020-06-17	21:48:55	39.3502	40.7512	4.9	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1392	2020-06-17	23:04:02	36.817	26.2083	5.7	0	2.8	0	AKDENIZ	İlksel
1393	2020-06-18	15:59:33	39.1038	29.0372	8.8	0	2.5	0	GOKCELER-SIMAV(KUTAHYA)	İlksel
1394	2020-06-18	14:29:26	38.5217	27.0362	11.2	0	1.7	0	CIGLI(IZMIR)	İlksel
1395	2020-06-18	13:34:07	38.9407	27.7688	0	0	1.5	0	EROGLU-AKHISAR(MANISA)	İlksel
1396	2020-06-18	13:12:20	39.7085	26.4638	4	0	1.3	0	ALIKABAKLAR-BAYRAMIC(CANAKKALE)	İlksel
1397	2020-06-18	13:02:14	37.7883	30.0098	3.8	0	1.4	0	BASMAKCI-(BURDUR)	İlksel
1398	2020-06-18	12:49:09	36.5465	29.2618	14.7	0	3.4	3.2	KABAAGAC-FETHIYE(MUGLA)	İlksel
1399	2020-06-18	12:34:46	39.1587	27.739	0	0	1.6	0	KUCUKYAYA-KIRKAGAC(MANISA)	İlksel
1400	2020-06-18	12:29:50	37.3355	31.952	0	0	1.9	0	GOLYUZU-SEYDISEHIR(KONYA)	İlksel
1401	2020-06-18	12:10:56	37.3078	30.3502	3.5	0	1.7	0	GARIPCE-KORKUTELI(ANTALYA)	İlksel
1402	2020-06-18	12:09:28	37.2713	28.005	0	0	1.4	0	BENCIK-YATAGAN(MUGLA)	İlksel
1403	2020-06-18	12:08:58	36.3612	35.9445	11.7	0	2.7	0	HUYUK-ISKENDERUN(HATAY)	İlksel
1404	2020-06-18	12:02:48	37.1792	28.071	5.1	0	1.6	0	CIRPI-(MUGLA)	İlksel
1405	2020-06-18	12:00:22	39.2365	26.352	5	0	1.7	0	MIDILLIADASI(EGEDENIZI)	İlksel
1406	2020-06-18	11:59:23	37.2762	27.9422	0	0	1.5	0	KORUCUK-MILAS(MUGLA)	İlksel
1407	2020-06-18	11:54:00	36.1932	33.684	0	0	1.5	0	YESILOVACIK-SILIFKE(MERSIN)	İlksel
1408	2020-06-18	11:40:45	38.261	39.1392	12.1	0	1.3	0	KONURTAY-DOGANYOL(MALATYA)	İlksel
1409	2020-06-18	11:38:35	40.8118	25.6358	8.8	0	2.2	0	EGEDENIZI	İlksel
1410	2020-06-18	11:35:27	37.0775	26.5263	1.3	0	1.6	0	ONIKIADALAR(AKDENIZ)	İlksel
1411	2020-06-18	10:59:19	37.1273	26.5458	13.9	0	1.6	0	ONIKIADALAR(AKDENIZ)	İlksel
1412	2020-06-18	10:42:31	40.3927	31.0953	5	0	1.7	0	UZUNCAM-MUDURNU(BOLU)	İlksel
1413	2020-06-18	09:52:22	39.5762	40.5635	1.2	0	2	0	ILISU-TERCAN(ERZINCAN)	İlksel
1414	2020-06-18	08:14:35	38.8137	26.9905	5.5	0	1.6	0	ALIAGA(IZMIR)	İlksel
1415	2020-06-18	08:11:11	39.0532	27.8552	7.4	0	2.2	0	MUSALAR-AKHISAR(MANISA)	İlksel
1416	2020-06-18	07:40:56	35.533	26.7098	4.5	0	2.5	0	AKDENIZ	İlksel
1417	2020-06-18	07:31:39	39.153	27.8057	7.1	0	2.5	0	HAMITLI-KIRKAGAC(MANISA)	İlksel
1418	2020-06-18	07:23:06	37.648	35.596	4.8	0	1.9	0	ERGENUSAGI-KOZAN(ADANA)	İlksel
1419	2020-06-18	06:56:29	37.933	27.2308	5.4	0	2	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
1420	2020-06-18	06:03:43	35.908	27.4578	7.5	0	1.8	0	AKDENIZ	İlksel
1421	2020-06-18	05:47:13	39.3715	40.768	7.1	0	2.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1422	2020-06-18	05:40:38	39.3533	40.6562	5.3	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1423	2020-06-18	05:37:38	36.4145	27.31	3.4	0	2.2	0	KOSADASI(AKDENIZ)	İlksel
1424	2020-06-18	03:51:06	39.364	40.6437	15.2	0	1	0	DINARBEY-YEDISU(BINGOL)	İlksel
1425	2020-06-18	03:35:41	39.3655	40.7353	5	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1426	2020-06-18	03:10:09	38.2303	38.81	5	0	2.4	0	ORMANICI-PUTURGE(MALATYA)	İlksel
1427	2020-06-18	02:50:04	33.9232	24.572	76.8	0	4.5	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1428	2020-06-18	02:43:51	37.3222	36.0857	13.2	0	1.2	0	ANBERINARKI-KADIRLI(OSMANIYE)	İlksel
1429	2020-06-18	02:30:20	38.4355	39.1557	4.9	0	1.9	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1430	2020-06-18	02:21:36	39.3843	40.6767	5.4	0	0.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1431	2020-06-18	01:46:26	39.3753	40.7578	3.4	0	1.6	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1432	2020-06-18	01:36:58	39.3505	40.7238	5	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1433	2020-06-18	01:25:57	38.3202	38.9227	17.6	0	1.4	0	UZUNHUSEYIN-KALE(MALATYA)	İlksel
1434	2020-06-18	01:22:00	39.3603	40.7658	5	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1435	2020-06-18	00:14:52	39.3643	40.7413	2.9	0	1.8	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1436	2020-06-17	23:47:51	37.9225	26.146	8.1	0	2	0	EGEDENIZI	İlksel
1437	2020-06-18	16:03:43	40.8733	27.9433	6.9	0	2	0	MARMARAEREGLISIACIKLARI-TEKIRDAG(MARMARA	DENIZIİlksel
1438	2020-06-18	15:46:53	37.0242	28.4033	0	0	1.5	0	CITLIK-ULA(MUGLA)	İlksel
1439	2020-06-18	16:21:09	37.029	28.4662	0	0	1.7	0	KIZILYAKA-ULA(MUGLA)	İlksel
1440	2020-06-18	18:20:11	37.9737	32.1582	3.2	0	1.6	0	AKPINAR-SELCUKLU(KONYA)	İlksel
1441	2020-06-18	16:45:39	38.497	39.335	13.4	0	1.3	0	GUNEYKOY-SIVRICE(ELAZIG)	İlksel
1442	2020-06-18	19:36:16	36.8355	26.3332	8.7	0	2	0	AKDENIZ	İlksel
1443	2020-06-18	20:14:18	38.4185	39.2725	5.1	0	2.2	0	DUZBAHCE-SIVRICE(ELAZIG)	İlksel
1444	2020-06-18	20:30:21	39.064	25.8687	9.9	0	2.4	0	EGEDENIZI	İlksel
1445	2020-06-18	20:46:39	39.3382	40.6743	5	0	2.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1446	2020-06-18	21:08:45	39.3508	40.7117	5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1447	2020-06-18	22:11:58	40.9288	40.7515	3.5	0	2.5	0	GURPINAR-CAYELI(RIZE)	İlksel
1448	2020-06-18	23:07:04	38.5963	39.4688	9.8	0	2	0	ELMAPINARI-(ELAZIG)	İlksel
1449	2020-06-19	00:23:00	40.8002	25.5692	5	0	3.8	3.6	EGEDENIZI	İlksel
1450	2020-06-19	00:41:04	40.826	28.0247	15	0	1.8	0	MARMARADENIZI	İlksel
1451	2020-06-19	10:54:56	40.4713	32.9375	8	0	2.6	2.5	ULUAGAC-CUBUK(ANKARA)	İlksel
1452	2020-06-19	10:43:21	34.3417	25.5623	18.5	0	4.8	5	GIRITADASIACIKLARI(AKDENIZ)REVIZE01	REVIZE01(2020.06.19-10:43:22)
1453	2020-06-19	08:34:42	36.7758	26.1892	13.5	0	2.1	0	AKDENIZ	İlksel
1454	2020-06-19	07:46:57	38.9438	27.8908	11.6	0	1.9	0	HASKOY-AKHISAR(MANISA)	İlksel
1455	2020-06-19	07:18:38	39.3943	40.7787	6.3	0	3	3	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1456	2020-06-19	07:14:18	39.3567	40.7142	5.7	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1457	2020-06-19	07:11:09	38.194	39.23	1.7	0	2.1	0	DEGIRMENSUYU-CUNGUS(DIYARBAKIR)	İlksel
1458	2020-06-19	06:55:00	40.7922	25.5772	7.2	0	2.2	0	EGEDENIZI	İlksel
1459	2020-06-19	06:49:37	39.1155	40.7385	18.7	0	2	0	KIZILAGAC-KARLIOVA(BINGOL)	İlksel
1460	2020-06-19	05:56:53	39.3848	38.3202	3.4	0	2	0	COBANDURAGI-DIVRIGI(SIVAS)	İlksel
1461	2020-06-19	05:17:18	39.9057	32.8037	7.9	0	1.7	0	CANKAYA(ANKARA)	İlksel
1462	2020-06-19	04:10:01	34.73	24.1305	25.6	0	2.5	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1463	2020-06-19	04:09:01	39.3473	29.3587	7.2	0	1.3	0	SARIAYAK-EMET(KUTAHYA)	İlksel
1464	2020-06-19	04:08:17	35.2753	23.4212	36	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
1465	2020-06-19	03:21:01	40.3912	28.7783	14.9	0	1.5	0	ZEYTINBAGI-MUDANYA(BURSA)	İlksel
1466	2020-06-19	03:16:26	35.3045	27.5775	4.9	0	2.1	0	AKDENIZ	İlksel
1467	2020-06-19	02:04:58	39.3832	40.7662	6.6	0	2.1	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1468	2020-06-19	01:54:15	36.3297	33.6803	10.5	0	1.1	0	CAMLICA-SILIFKE(MERSIN)	İlksel
1469	2020-06-19	01:50:53	39.3507	40.7253	5	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1470	2020-06-19	11:42:01	36.2535	33.6615	0	0	1.4	0	ISIKLI-SILIFKE(MERSIN)	İlksel
1471	2020-06-19	12:16:29	38.4198	38.8042	8.9	0	1.8	0	GULENKOY-KALE(MALATYA)	İlksel
1472	2020-06-19	12:16:30	38.4043	38.8517	15.6	0	1.9	0	KARAAGAC-KALE(MALATYA)REVIZE01	REVIZE01(2020.06.19-12:16:29)
1473	2020-06-19	12:16:30	38.4022	38.8608	15.8	0	1.7	0	YENIDAMLAR-KALE(MALATYA)REVIZE02	REVIZE02(2020.06.19-12:16:29)
1474	2020-06-19	12:05:48	37.3987	27.9768	0	0	1.7	0	GOKGEDIKKOYU-YATAGAN(MUGLA)	İlksel
1475	2020-06-19	12:05:48	37.3887	27.9998	0	0	1.7	0	ZEYTIN-YATAGAN(MUGLA)REVIZE01	REVIZE01(2020.06.19-12:05:48)
1476	2020-06-19	13:04:23	37.4135	28.337	0	0	2.1	0	KAVAKLIDERE(MUGLA)	İlksel
1477	2020-06-19	14:38:47	38.266	38.7635	1	0	3.5	3.4	BALPINARI-PUTURGE(MALATYA)	İlksel
1478	2020-06-19	11:53:49	37.2793	28.1477	0	0	1.6	0	GOKPINAR-YATAGAN(MUGLA)	İlksel
1479	2020-06-19	11:53:51	37.1337	27.7815	0	0	1.7	0	SOGUTCUK-MILAS(MUGLA)	İlksel
1480	2020-06-19	17:44:25	37.6405	29.2307	0	0	2	0	SARIABAT-TAVAS(DENIZLI)	İlksel
1481	2020-06-19	17:43:50	36.1297	33.2332	3.7	0	1.3	0	KARADERE-AYDINCIK(MERSIN)	İlksel
1482	2020-06-19	19:32:37	34.9612	25.6397	5	0	3.1	0	GIRITADASI(AKDENIZ)	İlksel
1483	2020-06-19	20:17:26	36.4887	28.6738	5.5	0	1.6	0	AKDENIZ	İlksel
1484	2020-06-19	21:31:45	39.9033	30.8242	0	0	2.2	0	BEYAZALTIN-TEPEBASI(ESKISEHIR)	İlksel
1485	2020-06-19	22:18:49	39.33	27.709	5	0	1.6	0	TURKPIYALA-SOMA(MANISA)	İlksel
1486	2020-06-19	22:29:25	35.597	26.7723	6	0	2.7	0	AKDENIZ	İlksel
1487	2020-06-19	22:41:45	38.8203	26.4108	6.8	0	1.6	0	EGEDENIZI	İlksel
1488	2020-06-19	22:51:47	40.7883	25.5848	8.8	0	1.8	0	EGEDENIZI	İlksel
1489	2020-06-19	23:34:11	34.5752	25.6195	18.9	0	4.6	4.6	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1490	2020-06-20	00:02:16	36.8795	27.91	16.5	0	2	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1491	2020-06-20	00:17:16	34.6763	25.5258	75.5	0	4.3	4.2	GIRITADASI(AKDENIZ)	İlksel
1492	2020-06-20	10:01:08	38.4315	39.2137	3.1	0	2.4	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
1493	2020-06-20	09:56:10	40.8117	25.5437	8.8	0	3.6	3.5	EGEDENIZI	İlksel
1494	2020-06-20	05:47:30	37.9265	26.3968	5	0	2.1	0	EGEDENIZI	İlksel
1495	2020-06-20	05:26:45	34.6222	25.3438	54	0	2.8	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1496	2020-06-20	04:30:06	34.5083	25.6052	80.4	0	2.6	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1497	2020-06-20	04:00:51	37.0818	26.3242	85.3	0	1.7	0	AKDENIZ	İlksel
1498	2020-06-20	03:57:40	38.353	26.4843	5.2	0	1.4	0	ILDIR-CESME(IZMIR)	İlksel
1499	2020-06-20	02:56:17	39.3722	40.6552	13.7	0	1.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
1500	2020-06-20	02:45:06	36.8957	27.4957	17.9	0	1.3	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1501	2020-06-20	01:56:22	37.7992	29.396	20.9	0	1.3	0	ASAGIDAGDERE-HONAZ(DENIZLI)	İlksel
1502	2020-06-20	01:22:53	38.8227	43.5108	3.2	0	2	0	BAGDASAN-(VAN)	İlksel
1503	2020-06-20	01:03:24	40.8388	31.771	5.4	0	2.1	0	DEGIRMENBELI-(BOLU)	İlksel
1504	2020-06-20	10:17:14	36.0138	28.3808	5	0	2.2	0	AKDENIZ	İlksel
1505	2020-06-20	10:47:29	38.4105	38.7335	25.4	0	2.1	0	SALKIMLI-KALE(MALATYA)	İlksel
1506	2020-06-20	10:53:49	38.3422	38.9057	18.3	0	1.6	0	KARAHUSEYIN-KALE(MALATYA)	İlksel
1507	2020-06-20	11:28:33	38.0228	26.8763	12.4	0	1.7	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
1508	2020-06-20	13:50:20	36.7232	26.3017	5.1	0	2.2	0	AKDENIZ	İlksel
1509	2020-06-20	14:22:20	39.5607	25.9868	7.3	0	2.3	0	GULPINARACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
1510	2020-06-20	18:07:10	40.7805	25.5882	8.1	0	1.8	0	EGEDENIZI	İlksel
1511	2020-06-20	18:34:56	39.577	26.0787	2.5	0	2.5	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
1512	2020-06-20	19:00:08	38.5328	39.3287	6.6	0	2.3	0	CEVIZDERE-(ELAZIG)	İlksel
1513	2020-06-20	19:13:36	34.1568	25.5813	5	0	3.5	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1514	2020-06-20	19:29:34	38.3953	39.2208	2.7	0	1.6	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
1515	2020-06-20	20:29:33	37.0287	28.5552	7.7	0	1.6	0	KARABOGURTLEN-ULA(MUGLA)	İlksel
1516	2020-06-20	20:51:31	40.8447	28.2047	8.7	0	1.6	0	SILIVRIACIKLARI-ISTANBUL(MARMARADENIZI)	İlksel
1517	2020-06-20	21:17:54	35.6545	27.6783	6.3	0	2.1	0	AKDENIZ	İlksel
1518	2020-06-20	21:22:32	41.7373	32.6938	5	0	2.6	0	OREN-(BARTIN)	İlksel
1519	2020-06-20	21:31:36	39.3588	40.7652	2.5	0	1.9	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1520	2020-06-20	21:21:10	38.9905	27.8727	5.4	0	1.5	0	KARABORKLU-AKHISAR(MANISA)	İlksel
1521	2020-06-20	21:25:59	38.934	27.9117	0	0	1.4	0	HASKOY-AKHISAR(MANISA)	İlksel
1522	2020-06-20	22:25:36	38.3768	39.2858	19.4	0	1.4	0	ALAATTINKOY-SIVRICE(ELAZIG)	İlksel
1523	2020-06-20	22:52:33	34.7847	34.2545	31.1	0	2.9	0	AKDENIZ	İlksel
1524	2020-06-20	23:18:03	39.0803	27.8248	5.7	0	1.6	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
1525	2020-06-20	23:47:26	39.345	40.7028	5	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1526	2020-06-21	00:01:42	38.9565	27.776	25.8	0	1	0	EROGLU-AKHISAR(MANISA)	İlksel
1527	2020-06-21	00:14:36	35.831	31.9663	28.7	0	1.7	0	AKDENIZ	İlksel
1528	2020-06-21	00:38:36	38.4887	39.3145	3.9	0	2	0	GUNEYKOY-SIVRICE(ELAZIG)	İlksel
1529	2020-06-21	15:52:43	40.1565	31.7493	5	0	2.1	0	CANTIRLI-BEYPAZARI(ANKARA)	İlksel
1530	2020-06-21	15:06:57	40.4492	27.5613	5.1	0	1.7	0	HARMANLI-ERDEK(BALIKESIR)	İlksel
1531	2020-06-21	15:04:44	40.8043	25.579	6.2	0	2.4	0	EGEDENIZI	İlksel
1532	2020-06-21	14:57:06	37.1305	34.6028	5.1	0	2.3	0	KORMENLIK-CAMLIYAYLA(MERSIN)	İlksel
1533	2020-06-21	14:09:33	39.0103	27.806	12	0	2.2	0	KADIDAGI-AKHISAR(MANISA)	İlksel
1534	2020-06-21	12:29:10	38.4035	39.2103	4.8	0	1.2	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
1535	2020-06-21	11:07:47	38.7113	27.7372	12.8	0	1.5	0	ALIBEYLI-SARUHANLI(MANISA)	İlksel
1536	2020-06-21	09:33:30	40.8047	25.6007	6.9	0	2.7	0	EGEDENIZI	İlksel
1537	2020-06-21	07:10:26	37.6685	29.3583	12.5	0	1.3	0	KOCAPINAR-SERINHISAR(DENIZLI)	İlksel
1538	2020-06-21	06:51:26	38.3378	39.0318	7.5	0	1.2	0	ILINCAK-SIVRICE(ELAZIG)	İlksel
1539	2020-06-21	06:47:25	45.6082	26.3917	132	0	3.1	0	ROMANYA	İlksel
1540	2020-06-21	06:38:15	37.6958	29.3375	5.5	0	1.8	0	AYDINLAR-HONAZ(DENIZLI)	İlksel
1541	2020-06-21	06:26:17	37.1292	28.9898	4.9	0	2	0	SANDALCIK-ACIPAYAM(DENIZLI)	İlksel
1542	2020-06-21	06:24:14	37.7167	29.3195	11.2	0	1.5	0	MENTESE-HONAZ(DENIZLI)	İlksel
1543	2020-06-21	06:04:48	37.5225	35.995	5	0	2.3	0	GAFARLI-SUMBAS(OSMANIYE)	İlksel
1544	2020-06-21	05:56:18	37.7942	28.9903	4.8	0	1.3	0	BASKARCI-(DENIZLI)	İlksel
1545	2020-06-21	05:42:00	34.3687	25.5385	5	0	3.1	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1546	2020-06-21	05:21:47	38.7135	43.1555	8.9	0	2.1	0	VANGOLU	İlksel
1547	2020-06-21	04:09:38	37.1718	29.0132	7.9	0	2.4	0	ALPA-TAVAS(DENIZLI)	İlksel
1548	2020-06-21	03:57:17	38.3278	38.9783	15.8	0	1.3	0	TOPALUSAGI-SIVRICE(ELAZIG)	İlksel
1549	2020-06-21	03:27:12	37.533	35.9955	3.7	0	1.7	0	GAFARLI-SUMBAS(OSMANIYE)	İlksel
1550	2020-06-21	03:16:14	40.7965	25.5848	6.7	0	1.9	0	EGEDENIZI	İlksel
1551	2020-06-21	03:08:38	37.6625	35.5708	8.4	0	1	0	KOPRUCUK-ALADAG(ADANA)	İlksel
1552	2020-06-21	02:47:20	41.885	32.594	12	0	2	0	KARAMAN-KURUCASILE(BARTIN)	İlksel
1553	2020-06-21	02:40:11	38.0528	26.9357	5.6	0	1.8	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
1554	2020-06-21	02:31:58	34.0402	25.7232	80.4	0	2.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1555	2020-06-21	02:22:29	38.4495	39.332	9.1	0	0.9	0	SIVRICE(ELAZIG)	İlksel
1556	2020-06-21	18:11:53	38.4255	27.6912	6.8	0	2.9	0	ZEAMET-KEMALPASA(IZMIR)	İlksel
1557	2020-06-21	18:11:15	40.052	43.0202	5	0	3.1	3.3	ALTINGEDIK-KAGIZMAN(KARS)	İlksel
1558	2020-06-21	18:54:55	40.0372	43.0373	4.9	0	2.9	0	EVYAPAN-KAGIZMAN(KARS)	İlksel
1559	2020-06-21	18:50:40	39.3455	40.7127	5	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1560	2020-06-21	19:14:25	40.0293	43.0402	5	0	3.4	3.4	EVYAPAN-KAGIZMAN(KARS)	İlksel
1561	2020-06-21	19:25:31	40.0023	43.1068	8	0	2	0	DUMANLI-(AGRI)	İlksel
1562	2020-06-21	19:29:48	40.0332	43.0463	20.8	0	2	0	EVYAPAN-KAGIZMAN(KARS)	İlksel
1563	2020-06-21	19:24:30	36.3825	27.4033	7.4	0	2.2	0	ONIKIADALAR(AKDENIZ)	İlksel
1564	2020-06-21	20:55:59	38.2922	38.7408	12.7	0	2.1	0	BALPINARI-PUTURGE(MALATYA)	İlksel
1565	2020-06-21	20:59:10	38.9965	27.9723	20.1	0	1.7	0	DOGANKAYA-AKHISAR(MANISA)	İlksel
1566	2020-06-21	20:07:02	39.1003	27.8277	5.6	0	1.7	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
1567	2020-06-21	21:07:50	38.6902	42.6225	6.3	0	2.2	0	SOGANLI-AHLAT(BITLIS)	İlksel
1568	2020-06-21	21:14:45	36.8622	27.3192	27	0	1.4	0	KOSADASI(AKDENIZ)	İlksel
1569	2020-06-21	21:28:23	40.0507	42.97	5	0	2.6	0	ALTINGEDIK-KAGIZMAN(KARS)	İlksel
1570	2020-06-21	21:48:54	37.0493	28.7675	12.5	0	1.8	0	YAYLA-KOYCEGIZ(MUGLA)	İlksel
1571	2020-06-21	21:55:18	40.0367	43.0267	5	0	3.1	3.2	EVYAPAN-KAGIZMAN(KARS)	İlksel
1572	2020-06-21	22:17:57	40.0325	43.0265	6.5	0	3.9	4.1	EVYAPAN-KAGIZMAN(KARS)	İlksel
1573	2020-06-21	22:27:18	40.0513	43.0268	5	0	2.7	0	ALTINGEDIK-KAGIZMAN(KARS)	İlksel
1574	2020-06-21	22:31:19	40.0432	43.012	5	0	3.1	3.2	ALTINGEDIK-KAGIZMAN(KARS)	İlksel
1575	2020-06-21	23:18:06	36.4063	27.3992	5	0	1.7	0	KOSADASI(AKDENIZ)	İlksel
1576	2020-06-21	23:52:32	39.1298	27.8065	5	0	1.5	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
1577	2020-06-22	00:14:19	39.8767	43.2657	1.9	0	3.5	3.5	SARIHARMAN-(AGRI)	İlksel
1578	2020-06-22	00:30:30	37.4005	31.1805	139.8	0	1.8	0	DEGIRMENOZU-MANAVGAT(ANTALYA)	İlksel
1579	2020-06-22	10:28:59	39.0145	27.8503	10.8	0	2.5	0	GOKCEAHMET-AKHISAR(MANISA)	İlksel
1580	2020-06-22	05:35:54	38.9117	35.6572	3	0	2.5	0	SARAYCIK-KOCASINAN(KAYSERI)	İlksel
1581	2020-06-22	05:14:29	40.6142	32.9558	11.5	0	2.3	0	DODURGA-ORTA(CANKIRI)	İlksel
1582	2020-06-22	05:07:00	39.3863	40.7467	8	0	1.5	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1583	2020-06-22	05:02:53	39.3625	40.6458	6.1	0	2.4	0	DINARBEY-YEDISU(BINGOL)	İlksel
1584	2020-06-22	04:06:07	39.3542	40.7005	2.9	0	2.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1585	2020-06-22	01:25:34	39.397	40.5747	7.5	0	1.8	0	YESILGOL-YEDISU(BINGOL)	İlksel
1586	2020-06-22	01:17:30	37.4925	35.9905	7.6	0	2.3	0	AKDAM-SUMBAS(OSMANIYE)	İlksel
1587	2020-06-22	13:45:07	37.3275	35.8742	17.5	0	2.3	0	COKAK-KOZAN(ADANA)	İlksel
1588	2020-06-22	15:07:45	40.8167	25.579	5.4	0	2.2	2	EGEDENIZI	İlksel
1589	2020-06-22	11:49:29	39.3897	27.8713	9	0	1.5	0	YESILLER-(BALIKESIR)	İlksel
1590	2020-06-22	11:55:34	37.1783	28.0707	18.7	0	1.7	0	CIRPI-(MUGLA)	İlksel
1591	2020-06-22	14:50:56	39.352	40.6435	5.1	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1592	2020-06-22	16:18:52	39.3107	40.7205	3.1	0	2	0	CEVRELI-ADAKLI(BINGOL)	İlksel
1593	2020-06-22	16:26:51	38.3787	38.9282	21.6	0	1.3	0	GELINDERE-SIVRICE(ELAZIG)	İlksel
1594	2020-06-22	19:20:40	36.8795	27.2735	5.4	0	2.1	0	KOSADASI(AKDENIZ)	İlksel
1595	2020-06-22	20:03:52	39.3297	40.7142	5	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1596	2020-06-22	22:16:21	35.9068	28.0837	5	0	2.5	0	AKDENIZ	İlksel
1597	2020-06-22	21:44:04	37.0607	26.9778	52.8	0	1.5	0	ONIKIADALAR(AKDENIZ)	İlksel
1598	2020-06-22	23:07:01	35.9075	28.0452	6.1	0	1.7	0	AKDENIZ	İlksel
1599	2020-06-22	23:13:15	35.9928	28.0602	6	0	1.3	0	AKDENIZ	İlksel
1600	2020-06-22	23:53:37	39.4683	40.7188	6.6	0	2	0	MOLLAOMER-CAT(ERZURUM)	İlksel
1601	2020-06-23	00:06:40	37.0118	36.1297	7.2	0	1.7	0	BUYUKTUYSUZ-TOPRAKKALE(OSMANIYE)	İlksel
1602	2020-06-23	00:16:18	40.1197	34.505	7	0	2	0	KAMISLI-SUNGURLU(CORUM)	İlksel
1603	2020-06-23	00:39:44	37.909	29.2678	3.2	0	1.5	0	BAKLANCAKIRLAR-CAL(DENIZLI)	İlksel
1604	2020-06-23	00:42:40	36.2632	29.2367	30.4	0	1.3	0	GELEMIS-KAS(ANTALYA)	İlksel
1605	2020-06-23	09:34:51	39.3818	40.6942	5.4	0	2.2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1606	2020-06-23	09:28:26	38.1335	26.6467	11	0	1.4	0	SEFERIHISARACIKLARI-IZMIR(EGEDENIZI)	İlksel
1607	2020-06-23	08:54:19	40.7213	32.935	7.8	0	4.3	4.2	HACILAR-CERKES(CANKIRI)	İlksel
1608	2020-06-23	08:26:00	37.6807	29.2463	0	0	1.6	0	KARATAS-(DENIZLI)	İlksel
1609	2020-06-23	08:17:12	38.4058	39.364	13.2	0	1.1	0	ELMASUYU-SIVRICE(ELAZIG)	İlksel
1610	2020-06-23	06:45:40	36.972	26.6627	7.9	0	1.7	0	ONIKIADALAR(AKDENIZ)	İlksel
1611	2020-06-23	05:20:00	38.3535	39.2617	14.9	0	1.6	0	YUKARICANAKCI-SIVRICE(ELAZIG)	İlksel
1612	2020-06-23	05:19:19	39.448	26.026	9.6	0	1.3	0	BABAKALE-AYVACIK(CANAKKALE)	İlksel
1613	2020-06-23	05:02:38	40.5135	28.9318	1.8	0	1.5	0	HAYRIYE-ARMUTLU(YALOVA)	İlksel
1614	2020-06-23	04:46:25	38.3623	39.1798	15.5	0	1.4	0	DOGANSU-SIVRICE(ELAZIG)	İlksel
1615	2020-06-23	03:39:34	39.5063	26.323	12.4	0	1.3	0	BEHRAM-AYVACIK(CANAKKALE)	İlksel
1616	2020-06-23	03:05:40	37.3155	38.6847	29	0	1.7	0	KIRKPINAR-(SANLIURFA)	İlksel
1617	2020-06-23	01:39:16	36.4133	34.7502	2.6	0	2.2	0	AKDENIZ	İlksel
1618	2020-06-23	01:24:13	38.3873	39.2048	5.4	0	1.5	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
1619	2020-06-23	10:36:33	34.51	32.408	9.6	0	2.6	0	AKDENIZ	İlksel
1620	2020-06-23	11:09:14	37.2388	28.2173	0	0	1.8	0	PASAPINARI-(MUGLA)	İlksel
1621	2020-06-23	11:11:51	39.7367	38.8778	2.3	0	2.5	0	SARIKOC-REFAHIYE(ERZINCAN)	İlksel
1622	2020-06-23	11:36:57	37.2957	35.8255	18.7	0	1.5	0	GOKCEYOL-KOZAN(ADANA)	İlksel
1623	2020-06-23	11:58:30	37.1975	27.8573	0	0	1.4	0	CAMKOY-MILAS(MUGLA)	İlksel
1624	2020-06-23	12:14:55	37.1712	27.8827	0	0	1.5	0	KARACAAGAC-MILAS(MUGLA)	İlksel
1625	2020-06-23	12:19:20	38.4058	39.1803	4.2	0	1.2	0	KOSEBAYIR-SIVRICE(ELAZIG)	İlksel
1626	2020-06-23	12:28:09	37.2242	28.2002	0	0	2	0	PASAPINARI-(MUGLA)	İlksel
1627	2020-06-23	12:13:33	37.036	39.1977	6.3	0	2	0	BAKIRTAS-(SANLIURFA)	İlksel
1628	2020-06-23	12:36:44	40.6318	27.6202	13.4	0	1.5	0	MARMARADENIZI	İlksel
1629	2020-06-23	12:44:27	40.2128	30.803	12.4	0	1.9	0	HIMMETOGLU-GOYNUK(BOLU)	İlksel
1630	2020-06-23	12:46:32	40.2228	30.7718	8.7	0	1.7	0	HIMMETOGLU-GOYNUK(BOLU)	İlksel
1631	2020-06-23	13:19:59	38.4195	39.1717	4.9	0	0.9	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1632	2020-06-23	13:20:33	40.4433	29.207	0	0	0.9	0	CIHATLI-GEMLIK(BURSA)	İlksel
1633	2020-06-23	13:37:18	39.078	41.576	17.8	0	2.3	0	KAYALIDERE-VARTO(MUS)	İlksel
1634	2020-06-23	13:36:04	38.4075	39.3095	13.2	0	1.8	0	YEDIKARDES-SIVRICE(ELAZIG)	İlksel
1635	2020-06-23	20:11:58	36.3973	29.772	22.4	0	2.7	0	CESME-KAS(ANTALYA)	İlksel
1636	2020-06-23	19:55:23	38.3283	38.7785	6.2	0	2.9	0	CANAKCI-KALE(MALATYA)	İlksel
1637	2020-06-23	19:17:33	38.4018	39.1342	5.2	0	1.8	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1638	2020-06-23	17:11:07	38.3868	44.0655	5	0	3.5	3.6	KEPIR-SARAY(VAN)	İlksel
1639	2020-06-23	16:54:02	39.999	43.0607	10.1	0	2.4	0	EVYAPAN-KAGIZMAN(KARS)	İlksel
1640	2020-06-23	16:46:38	40.0292	43.1202	2.2	0	2.6	0	SAGBAS-KAGIZMAN(KARS)	İlksel
1641	2020-06-23	16:23:00	36.934	27.6025	29.8	0	1.8	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1642	2020-06-23	16:14:28	37.2173	37.5098	0	0	2	0	BUYUKKARAKUYU-YAVUZELI(GAZIANTEP)	İlksel
1643	2020-06-23	15:52:54	38.583	39.541	7.7	0	1.6	0	KORUCU-(ELAZIG)	İlksel
1644	2020-06-23	15:49:17	38.7973	27.0255	7.7	0	1.9	0	GUZELHISAR-ALIAGA(IZMIR)	İlksel
1645	2020-06-23	14:07:27	39.6275	25.9777	15.6	0	1	0	TAVAKLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
1646	2020-06-23	23:03:25	39.3045	28.0548	9.7	0	2.3	0	CAKILLI-SINDIRGI(BALIKESIR)	İlksel
1647	2020-06-23	23:25:44	39.3028	28.0552	9.3	0	2.6	0	CAKILLI-SINDIRGI(BALIKESIR)	İlksel
1648	2020-06-23	23:52:23	36.7907	31.2937	87	0	2.3	0	COLAKLI-MANAVGAT(ANTALYA)	İlksel
1649	2020-06-24	09:16:59	38.7407	33.2565	9.6	0	2.9	0	SAGLIK-CIHANBEYLI(KONYA)	İlksel
1650	2020-06-24	05:06:14	39.9808	27.6903	7.5	0	2.2	0	CATAK-GONEN(BALIKESIR)	İlksel
1651	2020-06-24	04:39:04	36.9483	27.5465	26	0	1.1	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1652	2020-06-24	04:25:12	34.3815	25.7843	5	0	3.1	3.4	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1653	2020-06-24	04:21:02	40.2218	28.9747	7.8	0	1.9	0	NILUFER(BURSA)	İlksel
1654	2020-06-24	04:09:24	37.0038	28.2282	12.5	0	2.1	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1655	2020-06-24	03:55:20	35.8993	29.8932	15.1	0	1.6	0	AKDENIZ	İlksel
1656	2020-06-24	03:33:25	38.4167	38.8268	14.7	0	1.9	0	GULENKOY-KALE(MALATYA)	İlksel
1657	2020-06-24	03:26:20	38.9742	27.8955	3.7	0	1.5	0	CAMONU-AKHISAR(MANISA)	İlksel
1658	2020-06-24	03:09:27	36.1407	27.601	9.3	0	2	0	AKDENIZ	İlksel
1659	2020-06-24	03:04:56	37.9388	32.5593	2	0	1.3	0	SELCUKLU(KONYA)	İlksel
1660	2020-06-24	02:52:22	38.3722	26.881	6.8	0	2.2	0	GUZELBAHCE(IZMIR)	İlksel
1661	2020-06-24	02:50:33	38.2388	38.7283	21.1	0	1.6	0	BALPINARI-PUTURGE(MALATYA)	İlksel
1662	2020-06-24	02:12:00	38.4108	39.1548	4.4	0	1.2	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1663	2020-06-24	02:05:14	38.9665	27.8718	10.6	0	2.5	0	KARABORKLU-AKHISAR(MANISA)	İlksel
1664	2020-06-24	01:08:56	39.2448	42.0808	7.1	0	1.8	0	KURGANLI-BULANIK(MUS)	İlksel
1665	2020-06-24	11:53:20	38.1633	40.267	6.3	0	2.4	0	SARICA-EGIL(DIYARBAKIR)	İlksel
1666	2020-06-24	11:25:05	39.5937	37.544	12.5	0	2.8	0	INANDIK-HAFIK(SIVAS)	İlksel
1667	2020-06-24	12:07:17	37.085	27.9505	0	0	1.6	0	DEREKOY-MILAS(MUGLA)	İlksel
1668	2020-06-24	11:59:19	37.481	27.9085	0	0	1.3	0	AKKOVANLIK-MILAS(MUGLA)	İlksel
1669	2020-06-24	12:14:39	37.1692	27.8287	0	0	1.4	0	IKIZKOY-MILAS(MUGLA)	İlksel
1670	2020-06-24	12:10:21	37.1452	27.8353	0	0	1.7	0	PINARARASI-MILAS(MUGLA)	İlksel
1671	2020-06-24	11:35:03	36.6198	36.321	9.9	0	1.6	0	KALEDIBI-ISKENDERUN(HATAY)	İlksel
1672	2020-06-24	10:24:02	39.7693	30.2372	0	0	1.8	0	YUKARIKARTAL-TEPEBASI(ESKISEHIR)	İlksel
1673	2020-06-24	10:01:32	36.5255	28.6903	21.1	0	1.3	0	AKDENIZ	İlksel
1674	2020-06-24	11:36:42	40.9255	33.0395	4.7	0	2	0	KARACAHOYUK-CERKES(CANKIRI)	İlksel
1675	2020-06-24	12:27:37	39.3478	40.6658	8.5	0	1.8	0	DINARBEY-YEDISU(BINGOL)	İlksel
1676	2020-06-24	12:01:25	37.2602	31.8518	0	0	1.6	0	MADENLI-SEYDISEHIR(KONYA)	İlksel
1677	2020-06-24	12:57:58	34.3005	28.1273	9.2	0	3.1	2.7	AKDENIZ	İlksel
1678	2020-06-24	13:04:52	38.1392	32.1147	15.3	0	1.5	0	CESMECIK-KADINHANI(KONYA)	İlksel
1679	2020-06-24	12:20:23	39.1288	27.8598	17.4	0	1.1	0	BOSTANCI-KIRKAGAC(MANISA)	İlksel
1680	2020-06-24	11:37:16	39.8008	28.8287	21.5	0	1.2	0	AKTAS-BUYUKORHAN(BURSA)	İlksel
1681	2020-06-24	09:32:16	38.6577	26.4543	7.3	0	1.8	0	TEPEBOZ-KARABURUN(IZMIR)	İlksel
1682	2020-06-24	14:06:30	38.9718	35.7113	7.4	0	1.8	0	KARAKAYA-BUNYAN(KAYSERI)	İlksel
1683	2020-06-24	14:52:31	36.928	37.5307	0	0	2.1	0	YAKACIK-OGUZELI(GAZIANTEP)	İlksel
1684	2020-06-24	15:02:22	38.4042	39.1452	5.1	0	1.1	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1685	2020-06-24	15:09:15	37.1008	27.4797	4.5	0	1.2	0	GULLUKKORFEZI(EGEDENIZI)	İlksel
1686	2020-06-24	14:50:05	40.5313	28.944	5	0	1.6	0	SELIMIYE-ARMUTLU(YALOVA)	İlksel
1687	2020-06-24	16:34:57	38.2733	38.8038	7.8	0	2.4	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
1688	2020-06-24	15:05:50	39.972	27.108	6.7	0	1.1	0	SAMETELI-CAN(CANAKKALE)	İlksel
1689	2020-06-24	16:42:49	38.2815	38.884	20.3	0	1.2	0	TATLICAK-PUTURGE(MALATYA)	İlksel
1690	2020-06-24	17:29:18	39.4558	29.1598	8	0	1.5	0	CAYIRKOY-TAVSANLI(KUTAHYA)	İlksel
1691	2020-06-24	19:52:22	40.5042	30.335	7.5	0	3.1	3	DOGANTEPE-GEYVE(SAKARYA)	İlksel
1692	2020-06-24	19:51:57	40.7795	28.963	16.9	0	2.1	0	MARMARADENIZI	İlksel
1693	2020-06-24	21:15:25	39.6597	26.0037	13.7	0	2.4	0	TAVAKLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
1694	2020-06-24	21:22:28	38.4315	39.134	16	0	1.9	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
1695	2020-06-24	21:23:55	38.4115	38.9643	21.3	0	1.5	0	YARUSAGI-SIVRICE(ELAZIG)	İlksel
1696	2020-06-24	21:34:43	36.1303	27.1608	8	0	3.8	3.8	AKDENIZ	İlksel
1697	2020-06-24	21:57:27	38.3655	39.2098	6.3	0	0.7	0	DOGANSU-SIVRICE(ELAZIG)	İlksel
1698	2020-06-24	21:13:51	39.3918	40.7633	8	0	2	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1699	2020-06-24	22:22:26	40.244	42.0688	6.5	0	2.1	0	ASAGICAMLIKALE-HORASAN(ERZURUM)	İlksel
1700	2020-06-24	22:39:40	36.2533	27.3165	6.4	0	2.4	0	ONIKIADALAR(AKDENIZ)	İlksel
1701	2020-06-25	13:03:28	38.4658	44.1332	5.2	0	5.2	5.4	ORENBURC-SARAY(VAN)REVIZE01	REVIZE01(2020.06.25-13:03:27)
1702	2020-06-25	12:46:02	37.0903	27.965	0	0	2	0	PINARKOY-MILAS(MUGLA)	İlksel
1703	2020-06-25	12:13:02	37.1833	27.8775	0	0	1.6	0	IKIZKOY-MILAS(MUGLA)	İlksel
1704	2020-06-25	12:05:53	36.061	33.5615	5	0	1.4	0	AYDINLIKACIKLARI-MERSIN(AKDENIZ)	İlksel
1705	2020-06-25	12:04:38	37.1193	28.2643	25.2	0	1.8	0	YENIBAGYAKA-(MUGLA)	İlksel
1706	2020-06-25	12:02:49	37.1213	28.2058	21.9	0	1.6	0	YENIKOY-(MUGLA)	İlksel
1707	2020-06-25	10:46:49	36.6987	28.0305	11.6	0	2.1	0	BOZBURUN-MARMARIS(MUGLA)	İlksel
1708	2020-06-25	10:20:58	35.5535	26.737	11.9	0	2.9	0	AKDENIZ	İlksel
1709	2020-06-25	10:20:11	38.1688	28.1115	4	0	2	0	KAYMAKCI-ODEMIS(IZMIR)	İlksel
1710	2020-06-25	08:45:32	35.4438	26.1372	10.9	0	3	0	GIRITADASI(AKDENIZ)	İlksel
1711	2020-06-25	06:47:25	39.359	40.703	5.3	0	1.9	0	DINARBEY-YEDISU(BINGOL)	İlksel
1712	2020-06-25	06:36:45	39.3882	40.6898	7.6	0	2	0	DINARBEY-YEDISU(BINGOL)	İlksel
1713	2020-06-25	05:57:13	35.451	26.7648	5	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
1714	2020-06-25	05:54:48	35.3895	26.7897	8.1	0	3	0	GIRITADASI(AKDENIZ)	İlksel
1715	2020-06-25	05:50:30	35.7947	32.4403	7.6	0	2.1	0	AKDENIZ	İlksel
1716	2020-06-25	05:38:20	39.4378	27.9377	3.8	0	1.9	0	AKCAKOY-(BALIKESIR)	İlksel
1717	2020-06-25	05:32:50	40.8028	25.5917	6.5	0	2.1	0	EGEDENIZI	İlksel
1718	2020-06-25	04:47:22	38.4075	44.9165	5	0	2	0	IRAN	İlksel
1719	2020-06-25	04:39:08	36.128	27.1795	2	0	1.6	0	AKDENIZ	İlksel
1720	2020-06-25	04:33:35	35.3423	26.7943	4.4	0	2	0	GIRITADASI(AKDENIZ)	İlksel
1721	2020-06-25	04:21:51	35.43	26.7502	4.8	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
1722	2020-06-25	04:18:44	36.7097	30.4082	6.7	0	2	0	UCOLUK-KONYAALTI(ANTALYA)	İlksel
1723	2020-06-25	04:08:44	35.3758	26.089	4.4	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
1724	2020-06-25	03:50:11	35.3963	26.7602	3.5	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
1725	2020-06-25	03:48:31	35.3612	26.7803	6.6	0	2.4	0	GIRITADASI(AKDENIZ)	İlksel
1726	2020-06-25	03:41:07	36.9555	27.5732	3.8	0	1.4	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1727	2020-06-25	03:39:57	39.0663	27.9482	3.4	0	1.4	0	CANAKCI-AKHISAR(MANISA)	İlksel
1728	2020-06-25	03:36:37	33.5268	27.913	7.3	0	2.8	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1729	2020-06-25	02:02:49	38.4355	40.1355	12.5	0	1.4	0	GELINCIK-DICLE(DIYARBAKIR)	İlksel
1730	2020-06-25	01:31:39	38.4207	39.1872	5	0	0.7	0	YEDIPINAR-SIVRICE(ELAZIG)	İlksel
1731	2020-06-25	01:11:29	39.3638	40.69	4.1	0	1.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1732	2020-06-25	13:56:59	38.3915	44.2167	5.4	0	2.5	0	KOCBASI-SARAY(VAN)	İlksel
1733	2020-06-25	14:08:28	38.7365	33.2597	1.5	0	3.1	3	SAGLIK-CIHANBEYLI(KONYA)	İlksel
1734	2020-06-25	14:55:39	37.4357	35.8878	5.2	0	2.8	0	COBANPINARI-KOZAN(ADANA)	İlksel
1735	2020-06-25	16:29:43	38.22	27.1998	9.5	0	2.7	0	DEVELI-MENDERES(IZMIR)	İlksel
1736	2020-06-25	16:49:45	38.4588	39.2583	9.9	0	2.1	0	ALINCIK-SIVRICE(ELAZIG)	İlksel
1737	2020-06-25	17:29:21	38.292	38.8458	21	0	1.6	0	GUNDEGER-PUTURGE(MALATYA)	İlksel
1738	2020-06-25	18:15:06	36.9942	37.4453	0	0	1.9	0	OGUZELI(GAZIANTEP)	İlksel
1739	2020-06-25	20:52:30	39.5923	26.1123	16.4	0	1.8	0	TUZLA-AYVACIK(CANAKKALE)	İlksel
1740	2020-06-25	19:56:57	37.3447	23.4475	10.2	0	2.9	0	YUNANISTAN	İlksel
1741	2020-06-25	22:03:39	38.5577	44.1038	5	0	2.2	0	ZINCIRKIRAN-SARAY(VAN)	İlksel
1742	2020-06-25	22:26:05	38.4968	44.0182	5	0	2.5	0	CARDAK-SARAY(VAN)	İlksel
1743	2020-06-25	22:42:48	37.5077	35.997	8.8	0	1.6	0	GAFARLI-SUMBAS(OSMANIYE)	İlksel
1744	2020-06-25	22:54:51	37.4073	35.9215	8.9	0	2.2	0	KOSELI-SUMBAS(OSMANIYE)	İlksel
1745	2020-06-25	23:38:16	37.8697	27.631	13	0	1.6	0	GERMENCIK(AYDIN)	İlksel
1746	2020-06-25	23:08:43	37.8383	29.4808	5.3	0	1.1	0	ALIKURT-BOZKURT(DENIZLI)	İlksel
1747	2020-06-26	00:31:32	39.5713	26.0922	7.8	0	1.8	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
1748	2020-06-26	00:35:01	36.9858	28.6333	12.7	0	1.4	0	ZAFERLER-KOYCEGIZ(MUGLA)	İlksel
1749	2020-06-26	00:50:31	38.9508	27.7878	8.6	0	2.6	0	DAYIOGLU-AKHISAR(MANISA)	İlksel
1750	2020-06-26	11:04:51	38.7423	27.804	7.8	0	3	3	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1751	2020-06-26	10:36:26	38.771	27.7785	6.8	0	3.7	3.5	SAZOBA-AKHISAR(MANISA)	İlksel
1752	2020-06-26	10:34:13	38.7903	27.8755	0	0	1.3	0	AKSELENDI-AKHISAR(MANISA)	İlksel
1753	2020-06-26	10:28:56	38.7735	27.779	4.5	0	2.8	0	SAZOBA-AKHISAR(MANISA)	İlksel
1754	2020-06-26	10:21:12	38.7937	27.8063	6	0	5.5	5.3	SAZOBA-AKHISAR(MANISA)REVIZE01	REVIZE01(2020.06.26-10:21:12)
1755	2020-06-26	09:01:06	39.9803	38.7078	9.9	0	3.1	2.7	ALTKOY-REFAHIYE(ERZINCAN)	İlksel
1756	2020-06-26	06:34:23	39.0277	27.9065	2.5	0	1.7	0	KARAKOY-AKHISAR(MANISA)	İlksel
1757	2020-06-26	05:10:12	38.4972	39.3255	16.5	0	2.1	0	GUNEYKOY-SIVRICE(ELAZIG)	İlksel
1758	2020-06-26	05:08:45	37.3387	36.0907	18.6	0	1.5	0	ANBERINARKI-KADIRLI(OSMANIYE)	İlksel
1759	2020-06-26	03:57:34	39.5517	26.0718	8.5	0	2	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
1760	2020-06-26	03:30:59	35.6648	27.127	5.9	0	3.2	3.3	AKDENIZ	İlksel
1761	2020-06-26	03:24:56	38.4915	44.353	5	0	2.2	0	KAPIKOY-SARAY(VAN)	İlksel
1762	2020-06-26	02:46:45	39.4527	27.9328	4.1	0	2.1	0	AKCAKOY-(BALIKESIR)	İlksel
1763	2020-06-26	02:00:11	38.4187	39.2442	5.9	0	1.7	0	SOGUKPINAR-SIVRICE(ELAZIG)	İlksel
1764	2020-06-26	01:49:57	40.5555	28.8562	12	0	1.8	0	ARMUTLU(YALOVA)	İlksel
1765	2020-06-26	11:22:38	38.762	27.7695	5.5	0	1.5	0	SAZOBA-AKHISAR(MANISA)	İlksel
1766	2020-06-26	10:39:09	38.8503	27.8145	0	0	1.7	0	MORALILAR-AKHISAR(MANISA)	İlksel
1767	2020-06-26	11:25:36	38.8203	27.8135	0	0	1.6	0	SAZOBA-AKHISAR(MANISA)	İlksel
1768	2020-06-26	10:40:02	38.773	27.8205	5.3	0	2	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1769	2020-06-26	11:06:40	38.7192	27.8592	3.1	0	1.8	0	DEYNEKLER-GOLMARMARA(MANISA)	İlksel
1770	2020-06-26	11:27:09	38.8058	27.8272	0	0	1.6	0	SAZOBA-AKHISAR(MANISA)	İlksel
1771	2020-06-26	11:28:47	38.8053	27.8107	0	0	1.6	0	SAZOBA-AKHISAR(MANISA)	İlksel
1772	2020-06-26	11:34:43	38.7923	27.7937	5.6	0	2.2	0	SAZOBA-AKHISAR(MANISA)	İlksel
1773	2020-06-26	11:03:06	38.7415	27.8135	12.8	0	2.3	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1774	2020-06-26	11:59:21	38.7843	27.8145	5.5	0	2.1	0	SAZOBA-AKHISAR(MANISA)	İlksel
1775	2020-06-26	11:37:53	38.8118	27.8183	0	0	1.2	0	SAZOBA-AKHISAR(MANISA)	İlksel
1776	2020-06-26	11:01:08	38.8148	27.8055	19.4	0	2.5	0	SAZOBA-AKHISAR(MANISA)	İlksel
1777	2020-06-26	11:38:25	38.8723	27.971	12.7	0	1.3	0	TOPLUCA-AKHISAR(MANISA)	İlksel
1778	2020-06-26	10:24:12	38.7838	27.837	9.6	0	2.4	0	AKSELENDI-AKHISAR(MANISA)	İlksel
1779	2020-06-26	10:25:32	38.7767	27.8527	10.4	0	2.4	0	AKSELENDI-AKHISAR(MANISA)	İlksel
1780	2020-06-26	11:41:06	38.7082	27.7922	6.8	0	2	0	DEYNEKLER-GOLMARMARA(MANISA)	İlksel
1781	2020-06-26	10:25:56	38.8588	27.7882	13.7	0	1.7	0	RAHMIYE-AKHISAR(MANISA)	İlksel
1782	2020-06-26	10:27:23	38.7663	27.819	4.5	0	1.3	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1783	2020-06-26	10:35:41	38.8288	27.9012	5.3	0	0.9	0	KULAKSIZLAR-AKHISAR(MANISA)	İlksel
1784	2020-06-26	10:43:15	38.7767	27.7675	11.7	0	2	0	SAZOBA-AKHISAR(MANISA)	İlksel
1785	2020-06-26	10:43:45	38.8095	27.831	9	0	1.8	0	SAZOBA-AKHISAR(MANISA)	İlksel
1786	2020-06-26	12:29:53	38.7515	27.7928	8.1	0	2.4	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1787	2020-06-26	11:15:25	38.8173	27.7815	23	0	1.3	0	BEYOBA-AKHISAR(MANISA)	İlksel
1788	2020-06-26	12:32:14	38.8638	27.844	0	0	1.9	0	MORALILAR-AKHISAR(MANISA)	İlksel
1789	2020-06-26	10:52:01	38.7755	27.8118	9.9	0	1.9	0	SAZOBA-AKHISAR(MANISA)	İlksel
1790	2020-06-26	12:32:41	38.7898	27.9475	27.7	0	1.6	0	KARAYAGCI-AKHISAR(MANISA)	İlksel
1791	2020-06-26	11:17:23	38.8483	27.8217	12.3	0	1.9	0	MORALILAR-AKHISAR(MANISA)	İlksel
1792	2020-06-26	11:18:43	38.7825	27.7932	14.4	0	2.6	0	SAZOBA-AKHISAR(MANISA)	İlksel
1793	2020-06-26	13:22:39	38.8245	27.8592	14.9	0	1.4	0	SARICALI-AKHISAR(MANISA)	İlksel
1794	2020-06-26	12:16:21	40.8608	28.0122	11.7	0	2	0	MARMARAEREGLISIACIKLARI-TEKIRDAG(MARMARA	DENIZIİlksel
1795	2020-06-26	13:02:17	37.1722	28.2632	5.5	0	1.7	0	DAGDIBI-(MUGLA)	İlksel
1796	2020-06-26	13:36:33	38.8188	27.793	16.9	0	1.3	0	BEYOBA-AKHISAR(MANISA)	İlksel
1797	2020-06-26	14:21:48	38.7895	27.7528	6.5	0	2.2	0	BEYOBA-AKHISAR(MANISA)	İlksel
1798	2020-06-26	14:09:55	38.7388	27.7935	15.7	0	1.6	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1799	2020-06-26	14:06:19	39.5728	27.6453	8.2	0	1.8	0	KUTLUDUGUN-(BALIKESIR)	İlksel
1800	2020-06-26	15:18:26	38.7867	27.7555	4.6	0	2.5	0	BEYOBA-AKHISAR(MANISA)	İlksel
1801	2020-06-26	13:31:06	38.3972	38.7735	27.7	0	1.1	0	KOZLUK-KALE(MALATYA)	İlksel
1802	2020-06-26	13:24:22	39.9068	35.1528	23.3	0	2.1	0	BOGAZCUMAFAKILI-SORGUN(YOZGAT)	İlksel
1803	2020-06-26	13:10:37	39.9218	28.8283	0	0	1.4	0	DUNDAR-ORHANELI(BURSA)	İlksel
1804	2020-06-26	13:09:38	37.1743	28.3315	0	0	1.5	0	AKKAYA-(MUGLA)	İlksel
1805	2020-06-26	15:01:57	38.4088	39.115	9.7	0	1.6	0	KAMISLIK-SIVRICE(ELAZIG)	İlksel
1806	2020-06-26	13:10:28	37.15	28.2217	3.9	0	1.7	0	YENIKOY-(MUGLA)REVIZE01	REVIZE01(2020.06.26-13:10:37)
1807	2020-06-26	15:56:02	35.4042	26.7737	13.5	0	4	4.2	GIRITADASI(AKDENIZ)	İlksel
1808	2020-06-26	15:59:41	35.5335	26.801	7.9	0	3.2	0	AKDENIZ	İlksel
1809	2020-06-26	16:15:51	40.6943	27.6455	2	0	1.9	0	SARAYLAR-MARMARA(BALIKESIR)	İlksel
1810	2020-06-26	15:56:37	38.2785	39.1395	28.2	0	1.8	0	BEHRAMLI-DOGANYOL(MALATYA)	İlksel
1811	2020-06-26	12:59:37	38.8058	27.8817	0	0	1.2	0	SARICALI-AKHISAR(MANISA)	İlksel
1812	2020-06-26	12:52:56	38.8117	27.9027	0	0	1.2	0	KULAKSIZLAR-AKHISAR(MANISA)	İlksel
1813	2020-06-26	17:11:17	38.8133	27.7273	7.7	0	3.7	3.6	KEMIKLIDERE-SARUHANLI(MANISA)	İlksel
1814	2020-06-26	17:46:39	38.7783	27.7908	6.4	0	2.7	0	SAZOBA-AKHISAR(MANISA)	İlksel
1815	2020-06-26	17:15:43	38.829	27.8305	14.2	0	1.4	0	MORALILAR-AKHISAR(MANISA)	İlksel
1816	2020-06-26	17:18:06	38.7322	27.7193	5.1	0	1.1	0	LUTFIYE-SARUHANLI(MANISA)	İlksel
1817	2020-06-26	18:10:04	35.5633	26.6505	9.1	0	3.1	0	AKDENIZ	İlksel
1818	2020-06-26	17:58:58	39.2593	42.972	5.3	0	3	0	ALATAY-PATNOS(AGRI)	İlksel
1819	2020-06-26	18:14:55	35.5208	26.6773	9	0	3.7	3.9	AKDENIZ	İlksel
1820	2020-06-26	18:02:50	39.3643	40.7598	12.9	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1821	2020-06-26	18:08:36	36.1258	33.0912	24.4	0	1.6	0	TEKMEN-BOZYAZI(MERSIN)	İlksel
1822	2020-06-26	18:06:06	36.1073	33.5487	11.4	0	1.3	0	YANISLI-GULNAR(MERSIN)	İlksel
1823	2020-06-26	18:18:17	35.5908	26.6388	7.4	0	2.9	0	AKDENIZ	İlksel
1824	2020-06-26	18:52:03	35.537	26.6877	8.3	0	2.9	0	AKDENIZ	İlksel
1825	2020-06-26	19:01:06	35.4655	26.7238	13.5	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
1826	2020-06-26	19:11:34	35.2542	26.86	12.8	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
1827	2020-06-26	19:18:29	39.0303	25.7047	10	0	2.8	0	EGEDENIZI	İlksel
1828	2020-06-26	19:41:13	38.789	27.8542	14.8	0	1.7	0	AKSELENDI-AKHISAR(MANISA)	İlksel
1829	2020-06-26	20:54:42	37.4133	31.4737	5.5	0	2.5	0	GOYNEM-DEREBUCAK(KONYA)	İlksel
1830	2020-06-26	21:03:34	35.1147	26.9813	16.8	0	2.8	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1831	2020-06-26	21:39:04	37.695	27.5638	8	0	2.1	0	ARSLANYAYLASI-SOKE(AYDIN)	İlksel
1832	2020-06-26	21:49:17	35.535	26.671	3.3	0	2.7	0	AKDENIZ	İlksel
1833	2020-06-26	22:17:59	38.7307	27.7977	5.2	0	1.5	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1834	2020-06-26	22:31:04	38.7613	27.814	15.5	0	2.1	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1835	2020-06-26	22:36:35	35.5488	26.6488	8.3	0	4.5	4.8	AKDENIZ	İlksel
1836	2020-06-26	22:42:32	35.5158	26.6908	5	0	2.2	0	AKDENIZ	İlksel
1837	2020-06-26	22:49:03	35.5363	26.7017	5.4	0	2.1	0	AKDENIZ	İlksel
1838	2020-06-26	22:52:11	35.551	26.6937	7	0	2.5	0	AKDENIZ	İlksel
1839	2020-06-26	22:55:29	35.5333	26.7137	8.1	0	2.7	0	AKDENIZ	İlksel
1840	2020-06-26	23:01:39	35.5648	26.6777	5.1	0	3.3	3.3	AKDENIZ	İlksel
1841	2020-06-26	23:03:13	35.5225	26.6813	6.5	0	3.2	3.3	AKDENIZ	İlksel
1842	2020-06-26	23:20:41	35.5782	26.6625	5.4	0	3.2	3.3	AKDENIZ	İlksel
1843	2020-06-26	23:14:54	37.0245	28.5288	5.2	0	1.4	0	KARABOGURTLEN-ULA(MUGLA)	İlksel
1844	2020-06-26	23:18:04	35.556	26.6225	5	0	2.2	0	AKDENIZ	İlksel
1845	2020-06-26	23:19:37	38.7885	27.7985	20.8	0	1	0	SAZOBA-AKHISAR(MANISA)	İlksel
1846	2020-06-26	23:26:07	35.5468	26.6895	8.6	0	2.1	0	AKDENIZ	İlksel
1847	2020-06-26	23:30:42	35.5093	26.6822	8.4	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
1848	2020-06-26	23:34:16	35.496	26.7013	8.4	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
1849	2020-06-26	23:40:54	35.5703	26.6278	6.5	0	3.5	3.3	AKDENIZ	İlksel
1850	2020-06-26	23:36:43	35.5305	26.6827	5	0	2.4	0	AKDENIZ	İlksel
1851	2020-06-26	23:45:21	35.534	26.6942	5	0	3.1	3.3	AKDENIZ	İlksel
1852	2020-06-26	23:47:16	35.525	26.6748	5	0	2.4	0	AKDENIZ	İlksel
1853	2020-06-26	23:53:52	35.5407	26.6793	5	0	2.8	0	AKDENIZ	İlksel
1854	2020-06-27	00:01:04	38.7902	27.8145	15.1	0	2.7	0	SAZOBA-AKHISAR(MANISA)	İlksel
1855	2020-06-27	00:05:02	38.4975	39.2243	7.5	0	2	0	KAVAKTEPE-(ELAZIG)	İlksel
1856	2020-06-27	18:10:33	38.233	38.6955	4.4	0	2.3	0	KOKPINAR-PUTURGE(MALATYA)	İlksel
1857	2020-06-27	17:41:13	35.4992	26.6947	7.9	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
1858	2020-06-27	16:39:13	39.9103	24.9947	9.8	0	2.2	0	EGEDENIZI	İlksel
1859	2020-06-27	16:32:35	39.8927	39.4237	5.6	0	2.4	0	AKDAG-KELKIT(GUMUSHANE)	İlksel
1860	2020-06-27	16:25:55	40.335	27.3627	9.4	0	1.8	0	BOZLAR-BIGA(CANAKKALE)	İlksel
1861	2020-06-27	15:03:09	35.475	26.7387	5.3	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
1862	2020-06-27	14:43:03	36.8052	28.6667	21.1	0	1.5	0	GOKBEL-ORTACA(MUGLA)	İlksel
1863	2020-06-27	14:40:09	38.7787	27.8197	15.6	0	1.3	0	SAZOBA-AKHISAR(MANISA)	İlksel
1864	2020-06-27	13:41:56	38.8018	27.8512	9.8	0	1.2	0	SARICALI-AKHISAR(MANISA)	İlksel
1865	2020-06-27	13:41:35	38.7835	27.8977	7.9	0	1.7	0	AKCESME-AKHISAR(MANISA)	İlksel
1866	2020-06-27	12:36:36	37.0642	27.9398	0	0	1.7	0	CAMLICA-MILAS(MUGLA)	İlksel
1867	2020-06-27	12:35:24	39.2517	40.9973	9.1	0	1.5	0	TOKLULAR-KARLIOVA(BINGOL)	İlksel
1868	2020-06-27	12:29:01	39.364	40.7483	5	0	2.3	0	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
1869	2020-06-27	11:59:21	35.5488	26.7058	8.5	0	2.6	0	AKDENIZ	İlksel
1870	2020-06-27	11:51:04	37.2102	27.873	0	0	1.3	0	KAYADERE-MILAS(MUGLA)	İlksel
1871	2020-06-27	11:50:36	39.0195	27.8208	2.8	0	1.2	0	KADIDAGI-AKHISAR(MANISA)	İlksel
1872	2020-06-27	11:49:50	37.1235	27.8055	0	0	1.6	0	CIFTLIKKOY-MILAS(MUGLA)	İlksel
1873	2020-06-27	11:33:07	37.286	31.8943	0	0	2.1	0	MADENLI-SEYDISEHIR(KONYA)	İlksel
1874	2020-06-27	10:55:59	35.4398	26.7558	8.1	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
1875	2020-06-27	10:54:37	38.2548	38.8168	16	0	1.8	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
1876	2020-06-27	10:50:42	35.5765	26.7672	7.3	0	2.3	0	AKDENIZ	İlksel
1877	2020-06-27	10:45:46	35.4907	26.7168	3	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
1878	2020-06-27	09:48:38	38.3852	32.0955	7.5	0	1.7	0	DUGER-ILGIN(KONYA)	İlksel
1879	2020-06-27	09:11:31	35.5063	26.6967	8.3	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
1880	2020-06-27	09:02:13	35.3878	26.8155	3.9	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
1881	2020-06-27	08:56:53	35.5217	26.6998	5	0	2	0	AKDENIZ	İlksel
1882	2020-06-27	08:46:09	38.8083	27.7498	21.9	0	1.7	0	BEYOBA-AKHISAR(MANISA)	İlksel
1883	2020-06-27	08:33:24	38.7608	27.771	11.4	0	2.1	0	SAZOBA-AKHISAR(MANISA)	İlksel
1884	2020-06-27	07:46:15	38.7858	27.8618	13.4	0	2.3	0	AKSELENDI-AKHISAR(MANISA)	İlksel
1885	2020-06-27	07:30:20	35.5558	26.7305	6.5	0	3	2.8	AKDENIZ	İlksel
1886	2020-06-27	07:26:07	38.788	27.768	13.4	0	2.3	0	BEYOBA-AKHISAR(MANISA)	İlksel
1887	2020-06-27	07:19:13	40.0647	43.0473	12.1	0	2.3	0	ALTINGEDIK-KAGIZMAN(KARS)	İlksel
1888	2020-06-27	06:50:26	40.343	27.5608	14	0	2.5	0	ERDEKKORFEZI(MARMARADENIZI)	İlksel
1889	2020-06-27	06:25:37	35.4983	26.739	7.9	0	3.1	3	GIRITADASI(AKDENIZ)	İlksel
1890	2020-06-27	06:09:50	35.4155	26.7628	7.6	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
1891	2020-06-27	05:53:13	40.2588	28.0157	12.7	0	1.6	0	YENISIGIRCI-BANDIRMA(BALIKESIR)	İlksel
1892	2020-06-27	05:40:35	38.8337	27.7892	15.1	0	1.4	0	RAHMIYE-AKHISAR(MANISA)	İlksel
1893	2020-06-27	05:39:03	41.373	44.0767	2.1	0	3	0	GURCISTAN	İlksel
1894	2020-06-27	05:31:44	40.1942	31.8057	4	0	2.3	0	SARIAGIL-BEYPAZARI(ANKARA)	İlksel
1895	2020-06-27	05:12:59	38.7842	27.7845	14.4	0	2.1	0	SAZOBA-AKHISAR(MANISA)	İlksel
1896	2020-06-27	05:03:28	39.3373	40.71	5	0	2.6	0	DINARBEY-YEDISU(BINGOL)	İlksel
1897	2020-06-27	04:33:25	35.4897	26.7472	4.8	0	2	0	GIRITADASI(AKDENIZ)	İlksel
1898	2020-06-27	04:27:02	40.0377	43.0293	5	0	2.9	0	EVYAPAN-KAGIZMAN(KARS)	İlksel
1899	2020-06-27	04:16:40	35.5358	26.7017	5.7	0	2.8	0	AKDENIZ	İlksel
1900	2020-06-27	04:09:16	38.7693	27.7973	5.3	0	1	0	SAZOBA-AKHISAR(MANISA)	İlksel
1901	2020-06-27	04:06:36	35.4305	26.763	5.3	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
1902	2020-06-27	04:03:24	38.7627	27.8088	15.2	0	2.5	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1903	2020-06-27	04:02:11	38.7543	27.8545	16.3	0	1.4	0	TIYENLI-GOLMARMARA(MANISA)	İlksel
1904	2020-06-27	03:58:38	35.5428	26.7355	5	0	2.8	0	AKDENIZ	İlksel
1905	2020-06-27	03:57:01	35.4988	26.7035	5	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
1906	2020-06-27	03:47:19	38.3107	39.1387	4.9	0	1.1	0	YALINCA-DOGANYOL(MALATYA)	İlksel
1907	2020-06-27	03:37:32	35.172	26.922	5.4	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
1908	2020-06-27	03:36:31	35.5093	26.7068	5	0	2.4	0	AKDENIZ	İlksel
1909	2020-06-27	03:29:28	38.4565	39.3765	8.7	0	1.6	0	SUREK-SIVRICE(ELAZIG)	İlksel
1910	2020-06-27	03:20:11	37.0825	28.6055	11	0	1.4	0	BALCILAR-KOYCEGIZ(MUGLA)	İlksel
1911	2020-06-27	02:44:06	35.5052	26.7025	2.4	0	3.7	3.9	GIRITADASI(AKDENIZ)	İlksel
1912	2020-06-27	02:27:22	35.4437	26.8015	7.7	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
1913	2020-06-27	02:23:15	35.5925	26.7388	6	0	2.1	0	AKDENIZ	İlksel
1914	2020-06-27	02:18:34	35.5765	26.6478	5	0	2.5	0	AKDENIZ	İlksel
1915	2020-06-27	02:10:28	35.6333	26.6772	5	0	3.6	3.8	AKDENIZ	İlksel
1916	2020-06-27	02:09:05	35.5493	26.7092	4.2	0	2.8	0	AKDENIZ	İlksel
1917	2020-06-27	01:58:23	38.7512	27.8043	17	0	2.7	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1918	2020-06-27	01:34:29	38.7738	27.7497	12	0	2.2	0	KEMIKLIDERE-SARUHANLI(MANISA)	İlksel
1919	2020-06-27	01:29:09	37.8537	27.2228	5.4	0	2.5	0	KUSADASIKORFEZI(EGEDENIZI)	İlksel
1920	2020-06-27	01:15:15	35.6095	26.739	5.2	0	3.5	3.4	AKDENIZ	İlksel
1921	2020-06-27	01:08:07	35.5678	26.7003	5.2	0	3.8	4	AKDENIZ	İlksel
1922	2020-06-27	01:05:00	38.7698	27.7587	7.9	0	2.3	0	SAZOBA-AKHISAR(MANISA)	İlksel
1923	2020-06-27	01:01:06	38.8023	27.767	17.9	0	1.7	0	BEYOBA-AKHISAR(MANISA)	İlksel
1924	2020-06-27	00:57:25	38.7775	27.7745	13.3	0	1.6	0	SAZOBA-AKHISAR(MANISA)	İlksel
1925	2020-06-27	00:53:29	36.5862	28.866	25.7	0	1.6	0	FETHIYEKORFEZI(AKDENIZ)	İlksel
1926	2020-06-27	00:53:28	38.7627	27.82	14.6	0	1.5	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1927	2020-06-27	00:33:50	35.5325	26.6753	4.1	0	2.7	0	AKDENIZ	İlksel
1928	2020-06-27	00:31:45	35.4502	26.7315	13.7	0	2	0	GIRITADASI(AKDENIZ)	İlksel
1929	2020-06-27	00:29:55	35.3932	26.7723	8.9	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
1930	2020-06-27	00:28:30	35.2155	26.9043	14.8	0	2.4	0	GIRITADASI(AKDENIZ)	İlksel
1931	2020-06-27	18:35:54	38.9693	33.6215	2.2	0	1.6	0	SEYMENLI-SEREFLIKOCHISAR(ANKARA)	İlksel
1932	2020-06-27	21:01:57	38.7932	27.788	6.3	0	2.6	0	SAZOBA-AKHISAR(MANISA)	İlksel
1933	2020-06-27	21:03:50	38.7942	27.8083	14.5	0	1.7	0	SAZOBA-AKHISAR(MANISA)	İlksel
1934	2020-06-27	22:03:48	38.6118	23.686	29.6	0	2.8	0	YUNANISTAN	İlksel
1935	2020-06-27	22:40:17	33.6972	28.3383	8.6	0	3	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
1936	2020-06-27	22:47:06	36.9002	27.3538	5	0	1.5	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1937	2020-06-28	00:03:12	36.1127	27.1942	7	0	2.9	0	AKDENIZ	İlksel
1938	2020-06-28	14:41:46	35.508	26.6998	4.9	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
1939	2020-06-28	14:38:39	35.5035	26.7195	4.2	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
1940	2020-06-28	14:34:02	38.7463	27.8283	14.7	0	1.9	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1941	2020-06-28	14:32:36	35.2267	26.8725	8	0	3	0	GIRITADASI(AKDENIZ)	İlksel
1942	2020-06-28	14:30:59	35.5068	26.7072	5	0	2.4	0	GIRITADASI(AKDENIZ)	İlksel
1943	2020-06-28	14:23:47	35.5	26.6897	5	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
1944	2020-06-28	14:18:34	35.56	26.6617	5.5	0	4.2	4.5	AKDENIZ	İlksel
1945	2020-06-28	14:17:03	36.2815	28.9252	23.7	0	1.6	0	AKDENIZ	İlksel
1946	2020-06-28	13:43:37	39.3788	40.5905	5	0	2.6	0	ELMALI-YEDISU(BINGOL)	İlksel
1947	2020-06-28	12:38:14	38.7522	27.7875	6.4	0	1.9	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1948	2020-06-28	11:08:06	38.8277	27.9297	9.6	0	2.5	0	BOYALILAR-AKHISAR(MANISA)	İlksel
1949	2020-06-28	11:07:27	35.573	26.6998	5.5	0	1.9	0	AKDENIZ	İlksel
1950	2020-06-28	11:06:16	39.9497	39.8332	14.2	0	2.7	0	BUYUKGELENGEC-CAYIRLI(ERZINCAN)	İlksel
1951	2020-06-28	09:16:02	37.1767	30.3458	16.1	0	1.6	0	CAYKENARI-KORKUTELI(ANTALYA)	İlksel
1952	2020-06-28	08:58:07	39.5615	26.0672	3.4	0	1.8	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
1953	2020-06-28	08:53:06	38.7488	26.5503	2.3	0	2	0	EGEDENIZI	İlksel
1954	2020-06-28	08:51:06	39.5597	26.0622	6.4	0	2.3	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
1955	2020-06-28	08:50:14	39.5248	26.0648	24.7	0	1.4	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
1956	2020-06-28	05:48:40	38.519	44.0598	4.4	0	1.9	0	CARDAK-SARAY(VAN)	İlksel
1957	2020-06-28	05:42:12	36.2807	28.9353	10.6	0	1.7	0	AKDENIZ	İlksel
1958	2020-06-28	05:38:32	36.2687	28.9565	12.2	0	2	0	AKDENIZ	İlksel
1959	2020-06-28	05:33:48	38.9503	27.9737	8.6	0	1.4	0	KABAAGACKIRAN-AKHISAR(MANISA)	İlksel
1960	2020-06-28	05:22:09	37.3328	28.268	10.9	0	1.5	0	DESTIN-YATAGAN(MUGLA)	İlksel
1961	2020-06-28	04:42:49	40.8662	28.3028	7.3	0	2	0	MARMARADENIZI	İlksel
1962	2020-06-28	04:22:15	38.4328	39.3062	2.2	0	2	0	SIVRICE(ELAZIG)	İlksel
1963	2020-06-28	04:15:39	38.7345	27.8182	5.8	0	1.8	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
1964	2020-06-28	04:11:12	39.1888	41.4468	12.1	0	2	0	VARTO(MUS)	İlksel
1965	2020-06-28	04:08:31	38.4908	39.303	5	0	2.3	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
1966	2020-06-28	04:06:42	36.8518	27.4502	7.9	0	1.1	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
1967	2020-06-28	03:46:29	38.7253	26.5827	13.3	0	2	0	IZMIRKORFEZI(EGEDENIZI)	İlksel
1968	2020-06-28	03:12:02	35.336	26.8307	3.6	0	2.6	0	GIRITADASI(AKDENIZ)	İlksel
1969	2020-06-28	03:11:40	38.851	27.7207	16.4	0	1.2	0	KAYISLAR-SARUHANLI(MANISA)	İlksel
1970	2020-06-28	02:36:19	40.8037	25.5695	8.9	0	2.4	0	EGEDENIZI	İlksel
1971	2020-06-28	02:28:38	38.7708	27.7693	9.6	0	2.1	0	SAZOBA-AKHISAR(MANISA)	İlksel
1972	2020-06-28	02:25:09	35.5068	26.735	5	0	2.7	0	AKDENIZ	İlksel
1973	2020-06-28	01:41:07	41.4407	43.8282	4.9	0	2.8	0	GURCISTAN	İlksel
1974	2020-06-28	01:40:56	36.1378	27.151	6.6	0	2.9	0	AKDENIZ	İlksel
1975	2020-06-28	01:37:33	35.4865	26.7195	11.8	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
1976	2020-06-28	14:59:08	34.1278	28.5342	5	0	2.8	0	AKDENIZ	İlksel
1977	2020-06-28	16:05:07	35.5488	26.644	5.5	0	2.6	0	AKDENIZ	İlksel
1978	2020-06-28	16:16:45	35.4888	26.698	5.4	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
1979	2020-06-28	16:42:13	35.3518	26.809	18.4	0	3.4	3.3	GIRITADASI(AKDENIZ)	İlksel
1980	2020-06-28	16:52:31	40.8662	28.0675	14.2	0	2.4	0	MARMARADENIZI	İlksel
1981	2020-06-28	16:56:08	39.8985	27.053	11.5	0	2.2	0	ESKIYAYLA-CAN(CANAKKALE)	İlksel
1982	2020-06-28	17:13:37	35.5345	26.6783	8.6	0	2.9	0	AKDENIZ	İlksel
1983	2020-06-28	17:42:40	35.5722	26.653	7.7	0	2.4	0	AKDENIZ	İlksel
1984	2020-06-28	17:48:36	35.342	26.82	13.1	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
1985	2020-06-28	18:10:03	36.9565	31.1742	20	0	2.3	0	SARIABALI-SERIK(ANTALYA)	İlksel
1986	2020-06-28	18:10:58	35.5187	26.719	5.3	0	3.2	0	AKDENIZ	İlksel
1987	2020-06-28	18:18:41	38.3785	39.2365	9.4	0	1.3	0	DORTBOLUK-SIVRICE(ELAZIG)	İlksel
1988	2020-06-28	18:26:00	35.5388	26.6873	2.4	0	2.3	0	AKDENIZ	İlksel
1989	2020-06-28	19:15:25	35.6297	26.6657	3.2	0	2.4	0	AKDENIZ	İlksel
1990	2020-06-28	19:44:35	35.6108	26.6193	2	0	2.6	0	AKDENIZ	İlksel
1991	2020-06-28	20:00:41	35.4452	27.0502	10.6	0	2.2	0	AKDENIZ	İlksel
1992	2020-06-28	20:03:54	35.5155	26.7425	4	0	2.3	0	AKDENIZ	İlksel
1993	2020-06-28	20:06:30	38.4032	39.393	5.3	0	1.5	0	ELMASUYU-SIVRICE(ELAZIG)	İlksel
1994	2020-06-29	13:37:29	40.3792	28.7267	5.4	0	2.1	0	YALICIFTLIK-MUDANYA(BURSA)	İlksel
1995	2020-06-29	13:33:37	38.2177	38.6513	5	0	2.2	0	KAVAKLIDERE-PUTURGE(MALATYA)	İlksel
1996	2020-06-29	13:24:30	36.6582	28.2575	61.6	0	2.1	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
1997	2020-06-29	13:03:42	40.1638	34.8642	5	0	2.4	0	ALACA(CORUM)	İlksel
1998	2020-06-29	13:03:28	37.2383	27.8763	0	0	1.4	0	KALINAGIL-MILAS(MUGLA)	İlksel
1999	2020-06-29	12:17:06	37.0212	35.8903	7.8	0	2.2	0	DEGIRMENDERE-CEYHAN(ADANA)	İlksel
2000	2020-06-29	12:11:09	37.1658	28.3117	0	0	1.9	0	AKKAYA-(MUGLA)	İlksel
2001	2020-06-29	11:53:26	37.2308	28.1973	0	0	1.3	0	PASAPINARI-(MUGLA)	İlksel
2002	2020-06-29	11:51:04	36.7087	28.2577	68.3	0	2.3	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2003	2020-06-29	10:40:33	35.5163	26.7363	5.3	0	2.2	0	AKDENIZ	İlksel
2004	2020-06-29	10:32:03	35.5028	26.749	5	0	2.4	0	AKDENIZ	İlksel
2005	2020-06-29	10:23:31	36.9267	29.2953	5.3	0	1.9	0	GURSU-CAMELI(DENIZLI)	İlksel
2006	2020-06-29	09:41:20	35.5215	26.7025	2.1	0	3.3	3.5	AKDENIZ	İlksel
2007	2020-06-29	09:25:38	38.797	24.829	9.3	0	2.8	0	EGEDENIZI	İlksel
2008	2020-06-29	07:49:36	38.3872	39.0963	7.5	0	1.3	0	KALABA-SIVRICE(ELAZIG)	İlksel
2009	2020-06-29	07:43:20	36.6737	28.2472	65.5	0	3.3	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2010	2020-06-29	07:23:28	38.303	38.7392	14.3	0	2	0	KAMISTAS-(MALATYA)	İlksel
2011	2020-06-29	07:06:23	36.719	28.218	75.2	0	4.7	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2012	2020-06-29	06:52:51	35.3347	26.8212	18.6	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
2013	2020-06-29	06:52:03	35.4803	26.7397	5.4	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
2014	2020-06-29	06:41:36	35.9932	27.4527	5.8	0	2.5	0	AKDENIZ	İlksel
2015	2020-06-29	06:12:28	35.5488	26.7387	3.2	0	2.7	0	AKDENIZ	İlksel
2016	2020-06-29	05:53:52	39.5685	26.0792	3.7	0	2.3	0	GULPINAR-AYVACIK(CANAKKALE)	İlksel
2017	2020-06-29	05:04:54	40.7648	25.5588	5	0	2.4	0	EGEDENIZI	İlksel
2018	2020-06-29	04:47:55	38.817	27.7635	16.7	0	1.9	0	BEYOBA-AKHISAR(MANISA)	İlksel
2019	2020-06-29	04:44:52	35.4667	26.7457	2.1	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
2020	2020-06-29	04:37:39	34.511	32.5367	9.8	0	2.6	0	AKDENIZ	İlksel
2021	2020-06-29	04:00:06	36.6223	28.2507	54.1	0	1.2	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2022	2020-06-29	03:35:45	36.6813	28.2457	55.4	0	1.7	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2023	2020-06-29	03:34:34	38.4327	38.9533	5.3	0	2.3	0	SARITAS-BASKIL(ELAZIG)	İlksel
2024	2020-06-29	03:21:08	40.8193	25.6278	9.9	0	1.6	0	EGEDENIZI	İlksel
2025	2020-06-29	03:14:43	35.5235	26.7092	5.1	0	1.8	0	AKDENIZ	İlksel
2026	2020-06-29	03:11:21	38.2703	38.7278	4.9	0	1.5	0	BALPINARI-PUTURGE(MALATYA)	İlksel
2027	2020-06-29	03:11:08	35.4853	26.7345	7.7	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
2028	2020-06-29	03:02:56	34.6137	24.8217	13	0	3	3.2	GIRITADASIACIKLARI(AKDENIZ)	İlksel
2029	2020-06-29	02:55:21	40.1807	31.7322	2	0	1.8	0	SEKLI-BEYPAZARI(ANKARA)	İlksel
2030	2020-06-29	02:55:09	36.3057	27.3737	1.5	0	2	0	KOSADASI(AKDENIZ)	İlksel
2031	2020-06-29	02:45:22	35.5567	26.6593	5	0	3.1	3.1	AKDENIZ	İlksel
2032	2020-06-29	02:28:42	40.1957	28.8872	7.1	0	1.6	0	TAHTALI-NILUFER(BURSA)	İlksel
2033	2020-06-29	02:06:10	38.4293	39.1242	5.4	0	1.9	0	KAMISLIK-SIVRICE(ELAZIG)	İlksel
2034	2020-06-29	01:51:02	39.1345	43.8295	5	0	1.6	0	AYRANCILAR-CALDIRAN(VAN)	İlksel
2035	2020-06-29	01:08:55	36.6273	28.2523	42.8	0	1.9	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2036	2020-06-29	00:53:03	35.4743	26.7573	5	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
2037	2020-06-29	00:31:54	35.5555	26.6802	8.8	0	2.5	0	AKDENIZ	İlksel
2038	2020-06-29	00:22:35	40.8745	27.9438	18.2	0	1.7	0	MARMARAEREGLISIACIKLARI-TEKIRDAG(MARMARA	DENIZIİlksel
2039	2020-06-29	00:09:28	36.6532	28.2073	63.3	0	1.4	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2040	2020-06-29	00:07:46	36.5968	28.2222	63.2	0	1.9	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2041	2020-06-28	23:53:11	36.6193	28.1872	54.7	0	1.2	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2042	2020-06-28	23:25:24	36.7338	28.2487	66	0	2.1	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2043	2020-06-28	22:34:38	38.3297	38.8975	16.3	0	2.1	0	UZUNHUSEYIN-KALE(MALATYA)	İlksel
2044	2020-06-28	22:26:31	36.6957	28.2475	65	0	1.7	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2045	2020-06-28	22:24:19	34.5942	32.49	11.3	0	3.2	3.2	AKDENIZ	İlksel
2046	2020-06-28	22:18:48	36.7023	28.227	61.1	0	1.7	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2047	2020-06-28	22:12:48	36.645	28.2872	68.5	0	2	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2048	2020-06-28	21:52:56	35.5607	26.6973	5.6	0	2.1	0	AKDENIZ	İlksel
2049	2020-06-28	21:49:54	36.7182	28.2342	64.1	0	2.5	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2050	2020-06-28	21:36:50	35.555	26.705	5	0	2.4	0	AKDENIZ	İlksel
2051	2020-06-28	21:08:11	39.0362	43.6063	5	0	1.4	0	UNSELI-MURADIYE(VAN)	İlksel
2052	2020-06-28	21:05:33	36.665	28.2288	57.9	0	1.5	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2053	2020-06-28	21:02:15	38.3693	39.2662	21	0	1.8	0	YUKARICANAKCI-SIVRICE(ELAZIG)	İlksel
2054	2020-06-28	21:01:34	36.6412	28.2673	64.3	0	2.4	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2055	2020-06-28	21:00:43	36.6965	28.2728	64.6	0	2.1	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2056	2020-06-28	20:55:35	36.4032	28.454	23.7	0	1.5	0	AKDENIZ	İlksel
2057	2020-06-28	20:55:05	36.4142	28.4795	11.7	0	1.9	0	AKDENIZ	İlksel
2058	2020-06-28	20:53:08	36.647	28.2442	62	0	1.8	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2059	2020-06-28	20:52:53	38.3773	38.7742	17.6	0	2.1	0	TEPEKOY-KALE(MALATYA)	İlksel
2060	2020-06-28	20:51:56	36.6807	28.1992	63.3	0	2.4	0	BAYIR-MARMARIS(MUGLA)	İlksel
2061	2020-06-28	20:50:56	36.6632	28.2268	69	0	2.9	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2062	2020-06-28	20:43:28	36.6858	28.2608	65.5	0	5.4	0	OSMANIYE-MARMARIS(MUGLA)REVIZE01	REVIZE01(2020.06.28-20:43:28)
2063	2020-06-28	20:29:01	38.2477	38.8343	5	0	2.6	0	ORMELI-PUTURGE(MALATYA)	İlksel
2064	2020-06-29	13:28:24	35.504	26.7207	4.4	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
2065	2020-06-29	13:10:49	35.4122	26.7775	2	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
2066	2020-06-29	13:19:48	39.8883	28.9092	0	0	1.6	0	SADAGI-ORHANELI(BURSA)	İlksel
2067	2020-06-29	14:55:11	40.8133	27.9223	7	0	2.5	0	MARMARADENIZI	İlksel
2068	2020-06-29	14:18:20	39.1457	43.9573	4.9	0	2.3	0	KALKANDELEN-CALDIRAN(VAN)	İlksel
2069	2020-06-29	15:05:47	35.4928	26.7328	7.8	0	3.3	0	GIRITADASI(AKDENIZ)	İlksel
2070	2020-06-29	12:32:43	38.6813	39.8643	12.2	0	1.9	0	SEYDILI-PALU(ELAZIG)	İlksel
2071	2020-06-29	12:25:40	39.9267	28.8038	5	0	1.9	0	DUNDAR-ORHANELI(BURSA)	İlksel
2072	2020-06-29	16:39:33	38.7773	27.8257	12.5	0	1.7	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2073	2020-06-29	16:51:35	41.0027	29.3172	0	0	1	0	EMIRLI-PENDIK(ISTANBUL)	İlksel
2074	2020-06-29	16:54:14	36.6937	28.1918	70	0	3.4	3.1	BAYIR-MARMARIS(MUGLA)	İlksel
2075	2020-06-29	17:12:14	39.0782	27.8415	7.4	0	2.1	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
2076	2020-06-29	17:42:17	38.7928	27.7488	10.7	0	2.1	0	BEYOBA-AKHISAR(MANISA)	İlksel
2077	2020-06-29	18:09:43	39.3525	26.1345	7.2	0	2	0	MIDILLIADASI(EGEDENIZI)	İlksel
2078	2020-06-29	18:43:12	35.4492	26.7347	5	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
2079	2020-06-29	19:12:45	36.6668	28.2212	61.8	0	2.3	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2080	2020-06-29	20:12:58	36.931	28.357	5	0	1.4	0	CETIBELI-MARMARIS(MUGLA)	İlksel
2081	2020-06-29	20:13:59	36.9258	28.3188	9.3	0	1.7	0	BELDIBI-MARMARIS(MUGLA)	İlksel
2082	2020-06-29	21:24:47	38.556	44.0268	3.7	0	2.7	0	YUNKUSAK-OZALP(VAN)	İlksel
2083	2020-06-29	22:16:37	38.3588	38.7482	11.7	0	2	0	SARIOT-KALE(MALATYA)	İlksel
2084	2020-06-29	22:56:44	35.515	26.7043	7.9	0	3.7	3.9	AKDENIZ	İlksel
2085	2020-06-29	22:56:03	39.3598	24.3178	17	0	2.8	0	EGEDENIZI	İlksel
2086	2020-06-29	23:14:47	35.5545	26.691	4.1	0	3.8	4	AKDENIZ	İlksel
2087	2020-06-29	23:48:44	35.354	26.7782	5	0	2.7	0	GIRITADASI(AKDENIZ)	İlksel
2088	2020-06-30	18:03:57	38.5243	39.299	5.4	0	2.8	0	ACIPAYAM-(ELAZIG)	İlksel
2089	2020-06-30	17:46:00	35.4605	26.7302	5	0	3.1	0	GIRITADASI(AKDENIZ)	İlksel
2090	2020-06-30	17:32:54	36.4925	33.6373	29.9	0	1.5	0	HOCALI-MUT(MERSIN)	İlksel
2091	2020-06-30	17:18:59	36.4328	28.7778	5	0	2.9	0	AKDENIZ	İlksel
2092	2020-06-30	17:16:57	40.4925	29.2693	0	0	0.5	0	FINDIKLI-ORHANGAZI(BURSA)	İlksel
2093	2020-06-30	14:43:33	36.1075	27.7263	74.5	0	1.9	0	RODOSADASI(AKDENIZ)	İlksel
2094	2020-06-30	14:38:07	36.6977	30.4755	18.8	0	2.4	0	UCOLUK-KONYAALTI(ANTALYA)	İlksel
2095	2020-06-30	13:58:11	35.9883	31.4292	6.8	0	3	2.9	AKDENIZ	İlksel
2096	2020-06-30	12:16:55	38.5063	39.3083	5	0	2.8	0	GUNEYKOY-SIVRICE(ELAZIG)	İlksel
2097	2020-06-30	12:03:25	37.1718	27.8525	0	0	1.5	0	IKIZKOY-MILAS(MUGLA)	İlksel
2098	2020-06-30	12:00:10	37.1862	28.3045	1.1	0	1.6	0	AKKAYA-(MUGLA)	İlksel
2099	2020-06-30	11:59:05	39.3323	40.6253	7.5	0	1.8	0	AKTAS-ADAKLI(BINGOL)	İlksel
2100	2020-06-30	11:27:48	36.8928	27.5747	5.2	0	1.5	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
2101	2020-06-30	11:02:10	35.4442	26.7458	5.7	0	3	0	GIRITADASI(AKDENIZ)	İlksel
2102	2020-06-30	10:58:15	38.4012	39.13	5.2	0	2.6	0	KAVAKKOY-SIVRICE(ELAZIG)	İlksel
2103	2020-06-30	09:38:41	35.4215	26.8118	8.7	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
2104	2020-06-30	09:19:42	38.29	38.851	22	0	2.1	0	GUNDEGER-PUTURGE(MALATYA)	İlksel
2105	2020-06-30	09:12:38	35.5163	26.7197	4.5	0	3.5	3.6	AKDENIZ	İlksel
2106	2020-06-30	09:08:43	40.7327	28.9475	10.3	0	1.5	0	CINARCIKACIKLARI-YALOVA(MARMARADENIZI)	İlksel
2107	2020-06-30	08:55:40	35.311	26.8548	8.1	0	2.8	0	GIRITADASI(AKDENIZ)	İlksel
2108	2020-06-30	08:11:03	36.9358	28.7332	23	0	1.3	0	MERKEZ-KOYCEGIZ(MUGLA)	İlksel
2109	2020-06-30	08:08:22	38.99	27.9062	1.5	0	1.7	0	YENICE-AKHISAR(MANISA)	İlksel
2110	2020-06-30	07:55:29	38.3342	44.174	16.5	0	2.4	0	TURANKOY-SARAY(VAN)	İlksel
2111	2020-06-30	07:24:39	39.3523	40.6667	4.8	0	2.5	0	DINARBEY-YEDISU(BINGOL)	İlksel
2112	2020-06-30	07:18:50	39.4987	27.602	6.5	0	1.9	0	ISADERE-SAVASTEPE(BALIKESIR)	İlksel
2113	2020-06-30	07:07:20	39.5232	27.5803	6.7	0	2.9	0	KUCUKFINDIK-IVRINDI(BALIKESIR)	İlksel
2114	2020-06-30	07:03:36	39.0885	27.8432	10.8	0	1.6	0	KARAKURT-KIRKAGAC(MANISA)	İlksel
2115	2020-06-30	06:46:28	38.2593	38.7988	7.7	0	2	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
2116	2020-06-30	06:42:15	35.4855	26.7327	5.3	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
2117	2020-06-30	06:39:23	36.4283	28.7058	8.4	0	2.8	0	AKDENIZ	İlksel
2118	2020-06-30	06:33:45	36.1305	28.4905	4.4	0	1.5	0	AKDENIZ	İlksel
2119	2020-06-30	06:29:54	36.1962	29.1417	17.3	0	1.5	0	AKDENIZ	İlksel
2120	2020-06-30	06:03:03	40.1305	28.3128	7.5	0	1.6	0	YOLAGZI-KARACABEY(BURSA)	İlksel
2121	2020-06-30	05:55:38	40.0998	28.1068	6.4	0	1.4	0	ILICABOGAZI-SUSURLUK(BALIKESIR)	İlksel
2122	2020-06-30	05:43:09	35.3635	26.854	6.6	0	2.9	0	GIRITADASI(AKDENIZ)	İlksel
2123	2020-06-30	05:42:13	35.5285	26.7902	7.5	0	2.7	0	AKDENIZ	İlksel
2124	2020-06-30	05:23:13	35.3233	26.849	18.5	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
2125	2020-06-30	05:20:32	35.5488	26.739	8.2	0	1.9	0	AKDENIZ	İlksel
2126	2020-06-30	05:15:00	35.5433	26.7103	3.4	0	3.3	3.2	AKDENIZ	İlksel
2127	2020-06-30	05:09:16	35.2907	26.8452	17	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
2128	2020-06-30	05:07:04	35.1718	26.983	10.3	0	2.5	0	GIRITADASI(AKDENIZ)	İlksel
2129	2020-06-30	04:57:13	38.4857	44.2353	9.2	0	2	0	KECIKAYASI-SARAY(VAN)	İlksel
2130	2020-06-30	04:56:55	38.204	38.6	8.8	0	1.6	0	SOGUTLU-PUTURGE(MALATYA)	İlksel
2131	2020-06-30	04:51:46	35.3797	26.8222	7.5	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
2132	2020-06-30	04:50:36	35.5603	26.7057	4.8	0	2.8	0	AKDENIZ	İlksel
2133	2020-06-30	04:48:34	35.4822	26.7255	3.1	0	2	0	GIRITADASI(AKDENIZ)	İlksel
2134	2020-06-30	04:27:00	35.4483	26.7462	3.3	0	1.9	0	GIRITADASI(AKDENIZ)	İlksel
2135	2020-06-30	04:26:20	35.312	26.8367	5.4	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
2136	2020-06-30	04:22:47	35.4582	26.7533	5.5	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
2137	2020-06-30	04:12:46	35.5028	26.743	4.7	0	2.8	0	AKDENIZ	İlksel
2138	2020-06-30	04:07:56	35.5322	26.7285	4.6	0	2.8	0	AKDENIZ	İlksel
2139	2020-06-30	04:02:28	35.4332	26.8097	5.5	0	2.1	0	GIRITADASI(AKDENIZ)	İlksel
2140	2020-06-30	03:58:17	35.5592	26.7265	4.7	0	3.3	0	AKDENIZ	İlksel
2141	2020-06-30	03:53:15	37.2577	38.619	7.4	0	1.6	0	BUGLUCA-BOZOVA(SANLIURFA)	İlksel
2142	2020-06-30	03:44:36	35.58	26.6698	5	0	3.8	0	AKDENIZ	İlksel
2143	2020-06-30	03:32:16	35.541	26.6892	1.4	0	2.2	0	AKDENIZ	İlksel
2144	2020-06-30	03:32:15	39.0735	27.8273	18.8	0	1.6	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
2145	2020-06-30	03:15:03	38.48	44.0253	8.8	0	2	0	YESILAGAC-SARAY(VAN)	İlksel
2146	2020-06-30	03:14:22	35.5103	26.6968	2	0	2.4	0	AKDENIZ	İlksel
2147	2020-06-30	02:13:59	38.7707	27.7662	13.5	0	2.1	0	SAZOBA-AKHISAR(MANISA)	İlksel
2148	2020-06-30	02:11:05	35.4748	26.5613	16.4	0	2	0	GIRITADASI(AKDENIZ)	İlksel
2149	2020-06-30	01:38:46	41.1952	29.3792	0	0	2.3	0	KURNA-SILE(ISTANBUL)REVIZE01	REVIZE01(2020.06.30-01:38:46)
2150	2020-06-30	01:09:56	35.6105	26.6587	5	0	2.2	0	AKDENIZ	İlksel
2151	2020-06-30	01:08:23	35.5005	26.662	5	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
2152	2020-06-30	00:59:49	35.5472	26.6878	2.6	0	3	0	AKDENIZ	İlksel
2153	2020-06-30	00:57:07	35.4803	26.7878	5	0	2.2	0	GIRITADASI(AKDENIZ)	İlksel
2154	2020-06-30	00:52:57	38.574	39.4363	13.4	0	1.1	0	KARASAZ-(ELAZIG)	İlksel
2155	2020-06-29	21:37:55	35.6885	30.9188	12.5	0	1.8	0	AKDENIZ	İlksel
2156	2020-06-29	12:23:47	37.1015	27.9783	0	0	1.9	0	PINARKOY-MILAS(MUGLA)	İlksel
2157	2020-06-29	11:32:07	38.3793	39.0803	13.8	0	0.6	0	KALABA-SIVRICE(ELAZIG)	İlksel
2158	2020-06-29	11:29:38	38.3452	38.7637	20.7	0	1.6	0	CANAKCI-KALE(MALATYA)	İlksel
2159	2020-06-29	09:16:22	38.7668	27.7842	8	0	1.7	0	SAZOBA-AKHISAR(MANISA)	İlksel
2160	2020-06-29	06:41:34	36.0018	27.3412	7.7	0	2.5	0	AKDENIZREVIZE01	REVIZE01(2020.06.29-06:41:36)
2161	2020-06-30	19:25:30	37.9095	32.2293	2.7	0	1.4	0	ULUMUHSINE-SELCUKLU(KONYA)	İlksel
2162	2020-06-30	20:08:49	36.399	28.7128	8.4	0	2.3	0	AKDENIZ	İlksel
2163	2020-06-30	20:09:49	35.5912	26.6208	5.5	0	3.2	0	AKDENIZ	İlksel
2164	2020-06-30	21:30:33	37.7847	29.0988	7.6	0	2.2	0	DENIZLI(DENIZLI)	İlksel
2165	2020-06-30	22:12:51	38.7942	27.8115	15.1	0	1.8	0	SAZOBA-AKHISAR(MANISA)	İlksel
2166	2020-06-30	23:38:46	36.7913	27.3482	6.6	0	2.5	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
2167	2020-06-30	23:41:02	40.832	28.135	10.8	0	1.7	0	MARMARADENIZI	İlksel
2168	2020-07-01	00:26:56	38.7333	27.8698	5	0	1.5	0	HACIBASTANLAR-GOLMARMARA(MANISA)	İlksel
2169	2020-07-01	00:17:29	35.586	26.6858	3.6	0	2.2	0	AKDENIZ	İlksel
2170	2020-07-02	20:24:24	38.8547	42.6193	5	0	3.3	3.2	GOLUSTU-ADILCEVAZ(BITLIS)	İlksel
2171	2020-07-02	18:30:12	41.0428	29.3215	0	0	1.3	0	KURTDOGMUS-PENDIK(ISTANBUL)	İlksel
2172	2020-07-02	17:58:51	37.1667	27.601	4.9	0	1.9	0	MESELIK-MILAS(MUGLA)	İlksel
2173	2020-07-02	17:50:38	38.2478	38.6712	6.6	0	2.2	0	CAYKOY-PUTURGE(MALATYA)	İlksel
2174	2020-07-02	17:49:26	37.9107	27.2832	9.1	0	2.3	0	SULTANIYE-SELCUK(IZMIR)	İlksel
2175	2020-07-02	16:59:28	38.2948	38.7233	23.9	0	1.3	0	KAMISTAS-(MALATYA)	İlksel
2176	2020-07-02	16:54:45	36.0177	29.8938	1.2	0	2	0	KASACIKLARI-ANTALYA(AKDENIZ)	İlksel
2177	2020-07-02	16:53:50	38.9832	27.9425	1.3	0	1	0	DOGANKAYA-AKHISAR(MANISA)	İlksel
2178	2020-07-02	15:14:50	37.8332	30.681	4.6	0	2.1	0	KUCUKGOKCELI-(ISPARTA)	İlksel
2179	2020-07-02	15:05:23	37.6202	30.3607	10.3	0	1.8	0	KAYAALTI-(BURDUR)	İlksel
2180	2020-07-02	14:54:38	36.186	33.698	0	0	1.1	0	YESILOVACIK-SILIFKE(MERSIN)	İlksel
2181	2020-07-02	14:54:31	38.8058	27.763	0	0	2.3	0	BEYOBA-AKHISAR(MANISA)	İlksel
2182	2020-07-02	14:50:37	37.5	35.2217	8.3	0	2.1	0	POSYAGBASAN-ALADAG(ADANA)	İlksel
2183	2020-07-02	14:31:39	40.1873	42.6773	1.6	0	2.3	0	BELENCIK-SARIKAMIS(KARS)	İlksel
2184	2020-07-02	13:46:13	37.7772	30.5318	15.4	0	1.9	0	DEREGUMU-(ISPARTA)	İlksel
2185	2020-07-02	13:20:34	39.6033	26.0333	5.4	0	2.1	0	TAVAKLIACIKLARI-CANAKKALE(EGEDENIZI)	İlksel
2186	2020-07-02	13:16:11	38.3412	38.9848	29.4	0	0.7	0	TOPALUSAGI-SIVRICE(ELAZIG)	İlksel
2187	2020-07-02	12:54:03	39.869	28.8025	0	0	1.5	0	YENIDANISMENT-ORHANELI(BURSA)	İlksel
2188	2020-07-02	12:31:26	35.5198	31.5773	5	0	2.6	0	AKDENIZ	İlksel
2189	2020-07-02	12:28:10	38.6987	44.5197	2.5	0	2.5	0	TURKIYE-IRANSINIRBOLGESI	İlksel
2190	2020-07-02	12:03:51	37.2058	27.8375	0	0	1.6	0	CAMKOY-MILAS(MUGLA)	İlksel
2191	2020-07-02	11:45:37	39.4745	40.7815	62.2	0	2	0	CAYIRTEPE-CAT(ERZURUM)	İlksel
2192	2020-07-02	11:37:12	37.3185	31.9138	0	0	1.9	0	SUSUZ-SEYDISEHIR(KONYA)	İlksel
2193	2020-07-02	11:21:41	39.4717	26.398	9	0	2.1	0	EDREMITKORFEZI(EGEDENIZI)	İlksel
2194	2020-07-02	11:09:58	36.9685	29.5093	4.9	0	1.5	0	ASMABAG-ALTINYAYLA(BURDUR)	İlksel
2195	2020-07-02	10:50:45	38.7595	27.7868	10.5	0	1.2	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2196	2020-07-02	10:49:05	39.062	27.8405	5.2	0	1.3	0	MUSALAR-AKHISAR(MANISA)	İlksel
2197	2020-07-02	10:37:42	35.7053	29.9008	14.4	0	1.8	0	AKDENIZ	İlksel
2198	2020-07-02	09:29:22	40.1887	42.6833	5	0	2.8	0	BELENCIK-SARIKAMIS(KARS)	İlksel
2199	2020-07-02	06:53:10	37.2608	36.0487	5	0	2.4	0	KARABACAK-KADIRLI(OSMANIYE)	İlksel
2200	2020-07-02	06:45:24	35.5932	30.8165	8.4	0	2.7	0	AKDENIZ	İlksel
2201	2020-07-02	04:44:47	38.2923	38.7493	11.3	0	2.1	0	BALPINARI-PUTURGE(MALATYA)	İlksel
2202	2020-07-02	04:00:52	38.511	27.5132	13.4	0	1.6	0	SANCAKLIUZUNCINAR-(MANISA)	İlksel
2203	2020-07-02	03:56:29	39.5318	27.5705	7.9	0	1.9	0	KUCUKFINDIK-IVRINDI(BALIKESIR)	İlksel
2204	2020-07-02	02:44:16	38.7628	27.755	6.2	0	1.9	0	LUTFIYE-SARUHANLI(MANISA)	İlksel
2205	2020-07-02	01:14:52	38.4383	39.2618	3.1	0	1.9	0	DUZBAHCE-SIVRICE(ELAZIG)	İlksel
2206	2020-07-02	00:18:50	37.0553	27.7203	7.3	0	1.6	0	GOKPINAR-BODRUM(MUGLA)	İlksel
2207	2020-07-01	23:38:23	38.4205	39.3483	8	0	0.9	0	ELMASUYU-SIVRICE(ELAZIG)	İlksel
2208	2020-07-01	22:59:53	38.4187	38.8662	19.9	0	1.5	0	KUTLUGUN-BASKIL(ELAZIG)	İlksel
2209	2020-07-01	21:49:13	39.204	40.3168	7.7	0	1.7	0	DEMIRKANAT-KIGI(BINGOL)	İlksel
2210	2020-07-01	21:18:58	35.3328	26.8272	5	0	2.3	0	GIRITADASI(AKDENIZ)	İlksel
2211	2020-07-01	20:09:19	38.4362	39.3575	4.6	0	1.3	0	SUREK-SIVRICE(ELAZIG)	İlksel
2212	2020-07-01	19:53:06	38.747	27.7908	15.1	0	2.1	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2213	2020-07-01	19:28:06	38.5207	27.5478	16.5	0	2.5	0	SANCAKLIBOZKOY-(MANISA)	İlksel
2214	2020-07-01	18:41:20	34.9632	27.181	5	0	3.1	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
2215	2020-07-01	17:01:35	36.9427	28.9452	3.3	0	1.6	0	AKKOPRU-KOYCEGIZ(MUGLA)	İlksel
2216	2020-07-01	16:16:47	38.627	27.5278	14.9	0	1.5	0	YENIHARMANDALI-(MANISA)	İlksel
2217	2020-07-01	16:02:39	38.3502	38.8177	8.8	0	2.4	0	AKUSAGI-KALE(MALATYA)	İlksel
2218	2020-07-01	16:00:36	38.6275	27.5235	13.3	0	2.2	0	YENIHARMANDALI-(MANISA)	İlksel
2219	2020-07-01	15:55:39	38.5272	27.541	8.3	0	2.9	2.8	SANCAKLIBOZKOY-(MANISA)	İlksel
2220	2020-07-01	15:45:16	36.6808	28.2405	67.5	0	2.4	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2221	2020-07-01	15:34:36	38.7273	27.812	6.9	0	1.8	0	TIYENLI-GOLMARMARA(MANISA)	İlksel
2222	2020-07-01	15:25:10	38.5363	27.5453	3.6	0	2.6	0	KARAOGLANLI-(MANISA)	İlksel
2223	2020-07-01	15:23:25	38.7478	27.7888	4.5	0	2.1	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2224	2020-07-01	15:19:14	38.5308	27.5383	11.3	0	1.9	0	SANCAKLIUZUNCINAR-(MANISA)	İlksel
2225	2020-07-01	14:57:02	36.578	28.5372	46.8	0	1.5	0	AKDENIZ	İlksel
2226	2020-07-01	14:47:53	36.3987	32.2417	24.6	0	2	0	HOCALAR-ALANYA(ANTALYA)	İlksel
2227	2020-07-01	14:43:16	38.7313	27.788	11.2	0	1.5	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2228	2020-07-01	14:06:22	39.5185	27.5698	5.4	0	1.7	0	KUCUKFINDIK-IVRINDI(BALIKESIR)	İlksel
2229	2020-07-01	13:56:09	38.5475	27.504	5.4	0	2.3	0	SANCAKLIKAYADIBI-(MANISA)	İlksel
2230	2020-07-01	13:44:27	38.5318	27.5242	7.9	0	3	3	SANCAKLIKAYADIBI-(MANISA)	İlksel
2231	2020-07-01	13:17:08	40.5178	27.4925	6	0	1.6	0	AVSA-MARMARA(BALIKESIR)	İlksel
2232	2020-07-01	13:11:56	38.5647	27.5098	15.7	0	1.6	0	SANCAKLIKAYADIBI-(MANISA)	İlksel
2233	2020-07-01	13:05:30	38.5345	27.5372	14.2	0	2.3	0	SANCAKLIKAYADIBI-(MANISA)	İlksel
2234	2020-07-01	12:59:44	38.5215	27.5458	12.7	0	3.6	3.6	SANCAKLIBOZKOY-(MANISA)	İlksel
2235	2020-07-01	12:48:03	37.764	32.3473	0	0	1.5	0	KARADIGINDERESI-MERAM(KONYA)	İlksel
2236	2020-07-01	12:35:14	36.418	28.7302	7	0	1.9	0	AKDENIZ	İlksel
2237	2020-07-01	12:27:13	37.456	28.3097	0	0	1.7	0	SALKIM-KAVAKLIDERE(MUGLA)	İlksel
2238	2020-07-01	12:09:26	40.276	32.4323	4.2	0	2.3	0	AKCAOREN-KIZILCAHAMAM(ANKARA)	İlksel
2239	2020-07-01	12:01:53	37.2397	27.8817	5	0	1.7	0	KALINAGIL-MILAS(MUGLA)	İlksel
2240	2020-07-01	11:49:48	37.2118	27.8682	0	0	1.2	0	KAYADERE-MILAS(MUGLA)	İlksel
2241	2020-07-01	11:11:42	38.1283	30.9	5.1	0	1.8	0	YENICE-GELENDOST(ISPARTA)	İlksel
2242	2020-07-01	10:52:50	40.013	27.0982	9.1	0	1.2	0	KALBURCU-CAN(CANAKKALE)	İlksel
2243	2020-07-01	10:34:42	36.6583	28.2197	64.4	0	1.5	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2244	2020-07-01	10:02:00	37.3743	26.671	16	0	2.5	0	ONIKIADALAR(AKDENIZ)	İlksel
2245	2020-07-01	09:56:23	36.4788	26.4797	125.8	0	2.3	0	AKDENIZ	İlksel
2246	2020-07-01	09:42:42	37.3702	29.216	10	0	1.6	0	CUBUKCULAR-ACIPAYAM(DENIZLI)	İlksel
2247	2020-07-01	09:31:21	38.744	27.8143	10.6	0	1.6	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2248	2020-07-01	09:03:57	38.7563	27.7753	12.1	0	1.8	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2249	2020-07-01	08:30:54	38.7592	27.7913	11.7	0	2.3	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2250	2020-07-01	08:09:38	38.751	27.8195	9.7	0	2.1	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2251	2020-07-01	08:08:17	38.7238	27.803	6.8	0	2.4	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2252	2020-07-01	07:09:08	38.3433	38.9145	8.9	0	2.3	0	KARAHUSEYIN-KALE(MALATYA)	İlksel
2253	2020-07-01	06:58:29	40.3615	27.389	4.2	0	2	0	BOZLAR-BIGA(CANAKKALE)	İlksel
2254	2020-07-01	06:57:34	39.0095	25.8718	22	0	2.1	0	EGEDENIZI	İlksel
2255	2020-07-01	06:52:34	38.7462	27.7778	7.8	0	2	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2256	2020-07-01	06:50:10	38.7422	27.798	13.3	0	2.8	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2257	2020-07-01	06:10:55	38.751	27.7997	12.4	0	1.6	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2258	2020-07-01	05:34:32	38.2842	38.8097	5	0	2	0	KARSIYAKA-PUTURGE(MALATYA)	İlksel
2259	2020-07-01	05:32:24	35.5237	26.713	8.3	0	2.5	0	AKDENIZ	İlksel
2260	2020-07-01	05:21:15	36.72	28.2405	57.7	0	2.3	0	OSMANIYE-MARMARIS(MUGLA)	İlksel
2261	2020-07-01	04:27:42	38.2588	38.8405	3.8	0	2.2	0	ORMELI-PUTURGE(MALATYA)	İlksel
2262	2020-07-01	03:51:33	38.2622	38.7495	13.4	0	2.4	0	BALPINARI-PUTURGE(MALATYA)	İlksel
2263	2020-07-01	03:17:54	38.2098	26.724	9.9	0	2	0	SEFERIHISARACIKLARI-IZMIR(EGEDENIZI)	İlksel
2264	2020-07-01	02:57:07	36.9182	27.3523	4.9	0	1.1	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
2265	2020-07-01	02:54:00	37.042	27.6342	7.1	0	1.3	0	PINARLIBELEN-BODRUM(MUGLA)	İlksel
2266	2020-07-01	02:46:15	38.924	26.5138	15.7	0	1.7	0	EGEDENIZI	İlksel
2267	2020-07-01	02:40:07	34.6535	23.7382	28.8	0	3	2.9	GIRITADASI(AKDENIZ)	İlksel
2268	2020-07-01	02:28:16	38.2657	38.7533	8.4	0	3.1	3.2	BALPINARI-PUTURGE(MALATYA)	İlksel
2269	2020-07-01	01:35:44	39.0235	25.747	5.3	0	1.8	0	EGEDENIZI	İlksel
2270	2020-07-01	01:08:25	39.821	41.9863	8	0	1.8	0	GUZELHISAR-KOPRUKOY(ERZURUM)	İlksel
2271	2020-07-01	01:02:56	39.7655	41.9003	13.1	0	1.8	0	TOPCU-KOPRUKOY(ERZURUM)	İlksel
2272	2020-07-02	21:06:10	36.9832	28.514	9.8	0	2.4	0	CORUS-ULA(MUGLA)	İlksel
2273	2020-07-02	21:21:07	36.976	28.4855	11	0	2.2	0	CORUS-ULA(MUGLA)	İlksel
2274	2020-07-02	22:31:20	38.4003	39.1227	5.7	0	3.1	3	KAMISLIK-SIVRICE(ELAZIG)	İlksel
2275	2020-07-02	22:26:59	38.5157	27.5167	16.1	0	2	0	SANCAKLIUZUNCINAR-(MANISA)	İlksel
2276	2020-07-02	22:57:49	38.4515	39.285	3.5	0	1.3	0	SIVRICE(ELAZIG)	İlksel
2277	2020-07-02	23:02:21	40.1083	33.2765	5.7	0	2.2	0	KOZAYAGI-AKYURT(ANKARA)	İlksel
2278	2020-07-05	00:50:24	38.7792	27.7765	15.2	0	1.2	0	SAZOBA-AKHISAR(MANISA)	İlksel
2279	2020-07-05	00:43:37	37.6493	26.9385	12.2	0	1.6	0	EGEDENIZI	İlksel
2280	2020-07-04	23:12:40	39.336	40.7553	1	0	3.4	3.5	KAYNARPINAR-KARLIOVA(BINGOL)	İlksel
2281	2020-07-04	22:38:17	36.6848	28.2285	66.4	0	2.3	0	BAYIR-MARMARIS(MUGLA)	İlksel
2282	2020-07-04	21:54:09	39.5093	27.5737	7.4	0	2	0	CUKUROBA-IVRINDI(BALIKESIR)	İlksel
2283	2020-07-04	21:23:58	37.7127	26.8782	8.4	0	2.1	0	SISAMADASI(EGEDENIZI)	İlksel
2284	2020-07-04	21:20:18	38.779	27.7743	13.3	0	1.9	0	SAZOBA-AKHISAR(MANISA)	İlksel
2285	2020-07-04	20:37:29	38.2465	26.5187	5	0	1.6	0	ZEYTINELI-URLA(IZMIR)	İlksel
2286	2020-07-04	20:14:56	37.2753	38.8103	28.9	0	1.4	0	YAYLACIK-(SANLIURFA)	İlksel
2287	2020-07-04	20:10:48	40.516	33.9507	5	0	2.1	0	KUZUKOY-(CANKIRI)	İlksel
2288	2020-07-04	19:53:25	37.529	35.9403	6.4	0	1.9	0	ESKIMANTAS-KOZAN(ADANA)	İlksel
2289	2020-07-04	19:48:23	37.0227	28.5313	15.2	0	1.1	0	KARABOGURTLEN-ULA(MUGLA)	İlksel
2290	2020-07-04	18:20:10	38.4123	39.329	10.2	0	1.1	0	SIVRICE(ELAZIG)	İlksel
2291	2020-07-04	17:56:39	39.3235	40.1983	12.6	0	2.1	0	DEMIRDOS-KIGI(BINGOL)	İlksel
2292	2020-07-04	17:38:51	35.4825	27.7862	9.8	0	2.7	0	AKDENIZ	İlksel
2293	2020-07-04	16:36:22	40.4935	29.2642	0	0	1.2	0	FINDIKLI-ORHANGAZI(BURSA)	İlksel
2294	2020-07-04	16:08:05	37.246	37.524	5	0	1.7	0	BUYUKKARAKUYU-YAVUZELI(GAZIANTEP)	İlksel
2295	2020-07-04	15:58:51	37.759	29.9957	23.3	0	1.3	0	ULUPINAR-(BURDUR)	İlksel
2296	2020-07-04	15:16:30	38.741	38.323	24.8	0	1.8	0	ISAKOY-ARGUVAN(MALATYA)	İlksel
2297	2020-07-04	15:04:39	38.6898	38.0492	9.7	0	1.9	0	ALICAN-YAZIHAN(MALATYA)	İlksel
2298	2020-07-04	14:35:27	38.3788	38.9773	28.2	0	1.7	0	TASLIYAYLA-SIVRICE(ELAZIG)	İlksel
2299	2020-07-04	14:20:08	40.644	27.1345	3	0	1	0	IGDEBAGLARI-SARKOY(TEKIRDAG)	İlksel
2300	2020-07-04	14:18:41	38.38	39.1775	3.4	0	1.5	0	KOSEBAYIR-SIVRICE(ELAZIG)	İlksel
2301	2020-07-04	14:11:06	39.0998	27.7895	5.2	0	1.2	0	ILYASLAR-KIRKAGAC(MANISA)	İlksel
2302	2020-07-04	13:17:35	39.1423	27.5422	0	0	1.7	0	AVDAN-SOMA(MANISA)	İlksel
2303	2020-07-04	13:15:38	38.2183	38.8713	7.9	0	1.9	0	PUTURGE(MALATYA)	İlksel
2304	2020-07-04	12:43:39	39.4318	27.2147	9.3	0	1.8	0	KUCUKILICA-IVRINDI(BALIKESIR)	İlksel
2305	2020-07-04	12:36:01	39.4857	33.4833	9.8	0	1.7	0	HACIYUSUFLU-CELEBI(KIRIKKALE)	İlksel
2306	2020-07-04	12:30:36	36.9327	28.0865	20.5	0	1.9	0	GOKOVAKORFEZI(AKDENIZ)	İlksel
2307	2020-07-04	12:18:27	37.1642	27.9007	0	0	1.6	0	KARACAAGAC-MILAS(MUGLA)	İlksel
2308	2020-07-04	12:14:50	37.2427	28.1333	0	0	1.6	0	CAYBUKU-(MUGLA)	İlksel
2309	2020-07-04	11:32:50	39.1122	29.4393	11.5	0	1.5	1.5	AKKAYA-GEDIZ(KUTAHYA)	İlksel
2310	2020-07-04	10:51:11	35.5988	26.6532	5.3	0	3.3	3.3	AKDENIZ	İlksel
2311	2020-07-04	10:40:13	37.3953	37.1302	12.3	0	1.4	0	NARLI-PAZARCIK(KAHRAMANMARAS)	İlksel
2312	2020-07-04	09:28:08	40.8257	31.7223	5	0	1.9	0	COBANKAYA-(BOLU)	İlksel
2313	2020-07-04	09:25:01	36.4942	28.6678	1	0	2.4	0	AKDENIZ	İlksel
2314	2020-07-04	09:23:14	36.4885	28.6663	5	0	2.7	0	AKDENIZ	İlksel
2315	2020-07-04	09:11:18	36.4672	28.7138	3.5	0	2.3	0	AKDENIZ	İlksel
2316	2020-07-04	08:43:18	38.7158	39.2668	20.3	0	1.6	0	GUNEYCAYIRI-(ELAZIG)	İlksel
2317	2020-07-04	08:39:59	38.8035	39.9792	23.5	0	2.1	0	BAYRAMYAZI-KOVANCILAR(ELAZIG)	İlksel
2318	2020-07-04	08:10:01	36.5173	27.0155	5	0	2.8	0	ONIKIADALAR(AKDENIZ)	İlksel
2319	2020-07-04	07:45:01	39.6877	25.6383	10	0	1.9	0	EGEDENIZI	İlksel
2320	2020-07-04	07:12:54	36.656	28.2038	51.1	0	1.6	0	BOZBURUNACIKLARI-MUGLA(AKDENIZ)	İlksel
2321	2020-07-04	06:13:21	40.2413	26.3005	11.1	0	3.1	0	KOCADERE-ECEABAT(CANAKKALE)	İlksel
2322	2020-07-04	05:58:34	38.0183	42.9675	5	0	3.1	3.3	CILGA-CATAK(VAN)	İlksel
2323	2020-07-04	05:36:11	36.2378	28.9388	14.7	0	3.4	3.2	AKDENIZ	İlksel
2324	2020-07-04	05:24:53	40.8087	27.8825	16	0	2	0	MARMARADENIZI	İlksel
2325	2020-07-04	05:24:33	38.5177	39.345	12.1	0	2	0	CEVIZDERE-(ELAZIG)	İlksel
2326	2020-07-04	05:23:39	38.4058	39.0507	24.4	0	1.5	0	GOZELI-SIVRICE(ELAZIG)	İlksel
2327	2020-07-04	05:01:37	40.2437	26.3035	6.9	0	2.2	0	KOCADERE-ECEABAT(CANAKKALE)	İlksel
2328	2020-07-04	04:37:34	38.7175	27.8967	8.2	0	1.3	0	GOLMARMARA(MANISA)	İlksel
2329	2020-07-04	03:23:24	36.9507	29.0562	5	0	1.1	0	GURLEYIK-DALAMAN(MUGLA)	İlksel
2330	2020-07-04	03:16:06	38.7338	27.8997	5.1	0	1.2	0	HACIBASTANLAR-GOLMARMARA(MANISA)	İlksel
2331	2020-07-04	01:27:07	41.9908	29.4008	5	0	1.8	0	KARADENIZ	İlksel
2332	2020-07-04	01:09:45	33.8648	25.8968	5	0	2.9	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
2333	2020-07-04	00:52:03	34.2505	26.1817	16.2	0	2.8	0	GIRITADASIACIKLARI(AKDENIZ)	İlksel
2334	2020-07-04	00:25:51	38.3348	38.8928	11.7	0	2.1	0	UZUNHUSEYIN-KALE(MALATYA)	İlksel
2335	2020-07-04	00:19:45	38.515	27.5277	10.6	0	3.7	3.6	SANCAKLIUZUNCINAR-(MANISA)	İlksel
2336	2020-07-03	23:54:55	35.0635	26.3858	5	0	3.2	3.2	GIRITADASI(AKDENIZ)	İlksel
2337	2020-07-03	21:34:38	38.8243	26.4178	5	0	1.7	0	EGEDENIZI	İlksel
2338	2020-07-03	20:48:37	37.787	29.3643	0	0	1.4	0	DERECIFTLIK-HONAZ(DENIZLI)	İlksel
2339	2020-07-03	19:50:37	37.3433	30.7953	124.7	0	2.1	0	COBANPINARI-BUCAK(BURDUR)	İlksel
2340	2020-07-03	19:19:37	39.3567	40.7142	5	0	2.7	0	DINARBEY-YEDISU(BINGOL)	İlksel
2341	2020-07-03	19:18:49	37.5377	32.0235	6.7	0	1.7	0	DIKILITAS-SEYDISEHIR(KONYA)	İlksel
2342	2020-07-03	19:06:41	39.8742	39.204	9.4	0	2.4	0	KOCYATAGI-(ERZINCAN)	İlksel
2343	2020-07-03	18:05:39	37.7725	30.2413	5	0	2.3	0	ARDICLI-KECIBORLU(ISPARTA)	İlksel
2344	2020-07-03	17:11:32	36.1373	29.5638	5	0	1.5	0	KAS(ANTALYA)	İlksel
2345	2020-07-03	16:10:23	37.1465	37.4965	0	0	2	0	SUBOGAZI-SEHITKAMIL(GAZIANTEP)	İlksel
2346	2020-07-03	16:07:50	36.3582	28.9572	25.8	0	2.2	0	OLUDENIZACIKLARI-MUGLA(AKDENIZ)	İlksel
2347	2020-07-03	16:06:53	38.9475	30.0737	5	0	2.1	0	ZAFERTEPECALKOY-ALTINTAS(KUTAHYA)	İlksel
2348	2020-07-03	15:21:17	37.9128	28.8068	13.8	0	2	0	TEKKEKOY-SARAYKOY(DENIZLI)	İlksel
2349	2020-07-03	14:51:12	39.7292	25.6355	8.9	0	1.7	0	EGEDENIZI	İlksel
2350	2020-07-03	14:34:48	38.3473	38.9132	19.4	0	1.5	0	KARAHUSEYIN-KALE(MALATYA)	İlksel
2351	2020-07-03	14:27:19	38.1028	27.5427	19.1	0	1.4	0	ISIKLAR-TIRE(IZMIR)	İlksel
2352	2020-07-03	14:12:58	38.269	38.7528	5.8	0	2	0	BALPINARI-PUTURGE(MALATYA)	İlksel
2353	2020-07-03	13:35:11	38.451	39.3102	14.6	0	0.7	0	SIVRICE(ELAZIG)	İlksel
2354	2020-07-03	13:27:58	37.3253	39.1965	5	0	2	0	KOCAK-(SANLIURFA)	İlksel
2355	2020-07-03	13:10:51	38.4433	39.2247	16.1	0	1.2	0	ALINCIK-SIVRICE(ELAZIG)	İlksel
2356	2020-07-03	13:09:14	36.9743	35.9663	5	0	2.7	0	SARIMAZI-CEYHAN(ADANA)	İlksel
2357	2020-07-03	12:46:22	37.1503	39.1538	5	0	1.9	0	UCKONAK-(SANLIURFA)	İlksel
2358	2020-07-03	12:41:06	39.8825	33.2152	0	0	1.8	0	KARACAHASAN-ELMADAG(ANKARA)	İlksel
2359	2020-07-03	12:37:33	38.7523	27.8248	5.3	0	1.5	0	KUMKUYUCAK-SARUHANLI(MANISA)	İlksel
2360	2020-07-03	12:17:47	40.7382	33.1372	2.8	0	1.6	0	SUNURLU-KURSUNLU(CANKIRI)	İlksel
2361	2020-07-03	11:51:01	37.2223	27.8497	0	0	1.7	0	ULAS-MILAS(MUGLA)	İlksel
2362	2020-07-03	11:37:23	38.29	28.0493	13.1	0	1.2	0	BAYIRLI-ODEMIS(IZMIR)	İlksel
2363	2020-07-03	11:33:43	40.685	30.6427	0	0	1.7	0	YAGCILAR-AKYAZI(SAKARYA)	İlksel
2364	2020-07-03	10:41:57	37.7063	32.502	21.5	0	1.3	0	BAYAT-MERAM(KONYA)	İlksel
2365	2020-07-03	10:30:25	38.3283	38.8878	6.5	0	1.6	0	UZUNHUSEYIN-KALE(MALATYA)	İlksel
2366	2020-07-03	09:45:23	40.7735	32.9555	15.7	0	2.5	0	YESILOZ-CERKES(CANKIRI)	İlksel
2367	2020-07-03	09:16:32	35.5637	26.6822	5	0	3.5	3.6	AKDENIZ	İlksel
2368	2020-07-03	09:11:54	38.2732	38.7468	8.9	0	1.8	0	BALPINARI-PUTURGE(MALATYA)	İlksel
2369	2020-07-03	09:05:43	38.8762	27.784	0	0	1	0	RAHMIYE-AKHISAR(MANISA)	İlksel
2370	2020-07-03	08:42:10	38.8112	30.0497	5.4	0	1.8	0	CALISLAR-SINANPASA(AFYONKARAHISAR)	İlksel
2371	2020-07-03	07:25:14	38.483	39.2658	5.4	0	2.7	0	BEKCITEPE-SIVRICE(ELAZIG)	İlksel
2372	2020-07-03	07:07:07	40.7918	28.0438	14.3	0	2.2	0	MARMARADENIZI	İlksel
2373	2020-07-03	05:11:06	38.2268	38.7645	3.5	0	2.1	0	ORMANICI-PUTURGE(MALATYA)	İlksel
2374	2020-07-03	04:41:11	38.3702	38.8547	12.7	0	2	0	YENIDAMLAR-KALE(MALATYA)	İlksel
2375	2020-07-03	02:08:58	39.2053	43.9188	5	0	2.3	0	KILAVUZ-CALDIRAN(VAN)	İlksel
2376	2020-07-03	01:19:10	40.7725	28.041	14.3	0	2.9	0	MARMARADENIZI	İlksel
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: kandilli_kandilli_id_seq; Type: SEQUENCE SET; Schema: public; Owner: databasepostgresql_user
--

SELECT pg_catalog.setval('public.kandilli_kandilli_id_seq', 2376, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: kandilli_kandilli kandilli_kandilli_pkey; Type: CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.kandilli_kandilli
    ADD CONSTRAINT kandilli_kandilli_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: databasepostgresql_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: databasepostgresql_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


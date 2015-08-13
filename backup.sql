--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: cities_news_article; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_article (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    image character varying(100) NOT NULL,
    text text NOT NULL,
    slug character varying(150) NOT NULL,
    author_id integer NOT NULL,
    published boolean NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.cities_news_article OWNER TO django;

--
-- Name: cities_news_article_city; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_article_city (
    id integer NOT NULL,
    article_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.cities_news_article_city OWNER TO django;

--
-- Name: cities_news_article_city_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_article_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_article_city_id_seq OWNER TO django;

--
-- Name: cities_news_article_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_article_city_id_seq OWNED BY cities_news_article_city.id;


--
-- Name: cities_news_article_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_article_id_seq OWNER TO django;

--
-- Name: cities_news_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_article_id_seq OWNED BY cities_news_article.id;


--
-- Name: cities_news_article_tags; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_article_tags (
    id integer NOT NULL,
    article_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.cities_news_article_tags OWNER TO django;

--
-- Name: cities_news_article_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_article_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_article_tags_id_seq OWNER TO django;

--
-- Name: cities_news_article_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_article_tags_id_seq OWNED BY cities_news_article_tags.id;


--
-- Name: cities_news_city; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_city (
    id integer NOT NULL,
    title character varying(25) NOT NULL,
    picture character varying(100) NOT NULL,
    video boolean NOT NULL,
    video_url character varying(200),
    bezoek_adres text NOT NULL,
    facebook character varying(250) NOT NULL,
    twitter character varying(250) NOT NULL,
    youtube character varying(250) NOT NULL
);


ALTER TABLE public.cities_news_city OWNER TO django;

--
-- Name: cities_news_city_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_city_id_seq OWNER TO django;

--
-- Name: cities_news_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_city_id_seq OWNED BY cities_news_city.id;


--
-- Name: cities_news_mensen; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_mensen (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    title character varying(50) NOT NULL,
    text text NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(20) NOT NULL,
    image character varying(100) NOT NULL,
    published boolean NOT NULL
);


ALTER TABLE public.cities_news_mensen OWNER TO django;

--
-- Name: cities_news_mensen_city; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_mensen_city (
    id integer NOT NULL,
    mensen_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.cities_news_mensen_city OWNER TO django;

--
-- Name: cities_news_mensen_city_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_mensen_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_mensen_city_id_seq OWNER TO django;

--
-- Name: cities_news_mensen_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_mensen_city_id_seq OWNED BY cities_news_mensen_city.id;


--
-- Name: cities_news_mensen_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_mensen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_mensen_id_seq OWNER TO django;

--
-- Name: cities_news_mensen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_mensen_id_seq OWNED BY cities_news_mensen.id;


--
-- Name: cities_news_punten; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_punten (
    id integer NOT NULL,
    nummer character varying(50) NOT NULL,
    title character varying(100) NOT NULL,
    text text NOT NULL,
    slug character varying(100) NOT NULL,
    standpunt_id integer NOT NULL
);


ALTER TABLE public.cities_news_punten OWNER TO django;

--
-- Name: cities_news_punten_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_punten_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_punten_id_seq OWNER TO django;

--
-- Name: cities_news_punten_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_punten_id_seq OWNED BY cities_news_punten.id;


--
-- Name: cities_news_standpunten; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_standpunten (
    id integer NOT NULL,
    kopje character varying(100) NOT NULL,
    nummer character varying(50) NOT NULL
);


ALTER TABLE public.cities_news_standpunten OWNER TO django;

--
-- Name: cities_news_standpunten_city; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_standpunten_city (
    id integer NOT NULL,
    standpunten_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.cities_news_standpunten_city OWNER TO django;

--
-- Name: cities_news_standpunten_city_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_standpunten_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_standpunten_city_id_seq OWNER TO django;

--
-- Name: cities_news_standpunten_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_standpunten_city_id_seq OWNED BY cities_news_standpunten_city.id;


--
-- Name: cities_news_standpunten_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_standpunten_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_standpunten_id_seq OWNER TO django;

--
-- Name: cities_news_standpunten_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_standpunten_id_seq OWNED BY cities_news_standpunten.id;


--
-- Name: cities_news_tag; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE cities_news_tag (
    id integer NOT NULL,
    word character varying(35) NOT NULL
);


ALTER TABLE public.cities_news_tag OWNER TO django;

--
-- Name: cities_news_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE cities_news_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_news_tag_id_seq OWNER TO django;

--
-- Name: cities_news_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE cities_news_tag_id_seq OWNED BY cities_news_tag.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article ALTER COLUMN id SET DEFAULT nextval('cities_news_article_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article_city ALTER COLUMN id SET DEFAULT nextval('cities_news_article_city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article_tags ALTER COLUMN id SET DEFAULT nextval('cities_news_article_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_city ALTER COLUMN id SET DEFAULT nextval('cities_news_city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_mensen ALTER COLUMN id SET DEFAULT nextval('cities_news_mensen_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_mensen_city ALTER COLUMN id SET DEFAULT nextval('cities_news_mensen_city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_punten ALTER COLUMN id SET DEFAULT nextval('cities_news_punten_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_standpunten ALTER COLUMN id SET DEFAULT nextval('cities_news_standpunten_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_standpunten_city ALTER COLUMN id SET DEFAULT nextval('cities_news_standpunten_city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_tag ALTER COLUMN id SET DEFAULT nextval('cities_news_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add city	7	add_city
20	Can change city	7	change_city
21	Can delete city	7	delete_city
22	Can add tag	8	add_tag
23	Can change tag	8	change_tag
24	Can delete tag	8	delete_tag
25	Can add article	9	add_article
26	Can change article	9	change_article
27	Can delete article	9	delete_article
28	Can add mensen	10	add_mensen
29	Can change mensen	10	change_mensen
30	Can delete mensen	10	delete_mensen
31	Can add standpunten	11	add_standpunten
32	Can change standpunten	11	change_standpunten
33	Can delete standpunten	11	delete_standpunten
34	Can add punten	12	add_punten
35	Can change punten	12	change_punten
36	Can delete punten	12	delete_punten
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$VosnOMPdMFMs$V0kY1KbZJc5gZGMdytfHnPi4wdV07ilLKdWc/LUMlN8=	2015-05-19 08:28:44.765676-04	t	kiwi				t	t	2015-04-21 21:39:46.072535-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_id_seq', 4, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: cities_news_article; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_article (id, title, image, text, slug, author_id, published, created_date, modified) FROM stdin;
5	Nieuwe studentenpartij gaat universiteitsraad bestormen	article/2015/foto_nieuwsbericht_3_groot_SFbPq2G.jpg	Groot nieuws: de nieuwe studentenpartij De Vrije Student gaat in Amsterdam, Nijmegen en Rotterdam de universiteitsraad bestormen.\r\n\r\nOnze lijsttrekkers Rosa (UvA), Caspar (Radboud) en Lars (EUR) vandaag in het NRC Handelsblad: "We accepteren nu lang genoeg dat plucheplakkende universiteitspolitici geen stip op de horizon zetten, maar kiezen voor grauwe middelmaat. Door de invoering van het leenstelsel voor studenten wordt er een miljard euro extra geïnvesteerd in universiteiten en hogescholen. Bijna alle studentenpartijprogramma’s zetten in op duurzame koffie en gesubsidieerde cultuur.\r\n\r\nHet is tijd voor een ander geluid. We moeten inzetten op investeringen in zaken die ons echt vooruit helpen in de 21e eeuw, zoals digitalisering, internationalisering en ambitieus, kleinschalig onderwijs."\r\n	nieuwe-studentenpartij-gaat-universiteitsraad-bestormen	1	t	2015-04-24 08:13:55.737992-04	2015-05-06 11:21:24.140957-04
6	Lijsttrekker De Vrije Student bekend: stem Rosa!	article/2015/foto_nieuwsbericht_rosa_groot.jpg	UvA-studente Rosa d’Adelhart Toop is tijdens de universiteitsraadsverkiezingen lijsttrekker namens de nieuwe studentenpartij De Vrije Student. Rosa studeert zelf Fiscaal Recht is van plan om te knokken voor de belangen van iedere student. Rosa: "Wij zijn er klaar voor om het College van Bestuur in de kuiten te bijten en te knokken voor de belangen van iedere student die er gewoon voor gaat."	lijsttrekker-de-vrije-student-bekend-stem-rosa	1	t	2015-04-24 08:29:32.773547-04	2015-04-24 08:29:32.773585-04
4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	article/2015/foto_nieuwsbericht_1_groot.jpg	Erasmus Magazine heeft een interview gepubliceerd met Lars Benthin, lijsttrekker van De Vrije Student in Rotterdam. Lars is van plan om in de universiteitsraad van de EUR te knokken voor de belangen van iedere student. Twee concrete maatregelen die Lars wil voorstellen zijn verdere digitalisering van colleges, ‘zodat iedereen zelf zijn studietempo kan bepalen’, en een centraal loket op de campus, waar studenten in overleg een persoonlijk studieplan kunnen opstellen.\r\n\r\n<a href="http://www.erasmusmagazine.nl/nieuws/detail/article/8025-de-vrije-student-wil-geen-andere-maar-betere-inspraak-door-studenten/">Klik hier</a> voor het volledige artikel in Erasmus Magazine.	lars-benthin-wil-frisse-wind-laten-waaien-door-medezeggenschap-eur	1	t	2015-04-22 02:18:40.5762-04	2015-05-12 12:10:07.72828-04
8	De Vrije Student doet met grootste lijst mee aan verkiezingen	article/2015/foto_nieuwsbericht_51_NND7IJq.jpg	Het is definitief: De Vrije Student doet met een lijst van 51 kandidaten mee aan de UvA-universiteitsraadsverkiezingen. Kennis maken met onze kandidaten? <a href="http://www.vrijestudent.nl/amsterdam/mensen">Klik hier!</a>	de-vrije-student-doet-met-grootste-lijst-mee-aan-verkiezingen	1	t	2015-04-24 08:37:16.402119-04	2015-05-02 08:20:04.603302-04
2	Lars Benthin lijsttrekker De Vrije Student	article/2015/foto_nieuwsbericht_2_groot.jpg	EUR-student Lars Benthin is tijdens de universiteitsraadsverkiezingen lijsttrekker namens de nieuwe studentenpartij De Vrije Student. Benthin, 21 jaar oud en student Bestuurskunde, is van plan om te knokken voor de belangen van iedere student. “Het is belangrijk om concrete maatregelen te nemen waar studenten echt iets aan hebben. Zo wil ik mij bijvoorbeeld hard maken voor hoorcolleges op YouTube, zodat iedere student ook thuis kennis kan vergaren, zelfs buiten zijn eigen studiegebied. Wat mij betreft wordt de EUR het Harvard aan de Noordzee.”	lars-benthin-lijsttrekker-de-vrije-student	1	t	2015-04-22 02:03:24.181246-04	2015-04-22 07:05:55.649163-04
1	De Vrije Student gaat universiteitsraad bestormen	article/2015/foto_nieuwsbericht_3_groot.jpg	Groot nieuws: de nieuwe studentenpartij De Vrije Student gaat in Amsterdam, Nijmegen en Rotterdam de universiteitsraad bestormen.\r\n\r\nOnze lijsttrekkers Rosa (UvA), Caspar (Radboud) en Lars (EUR) vandaag in het NRC Handelsblad: "We accepteren nu lang genoeg dat plucheplakkende universiteitspolitici geen stip op de horizon zetten, maar kiezen voor grauwe middelmaat. Door de invoering van het leenstelsel voor studenten wordt er een miljard euro extra geïnvesteerd in universiteiten en hogescholen. Bijna alle studentenpartijprogramma’s zetten in op duurzame koffie en gesubsidieerde cultuur.\r\n\r\nHet is tijd voor een ander geluid. We moeten inzetten op investeringen in zaken die ons echt vooruit helpen in de 21e eeuw, zoals digitalisering, internationalisering en ambitieus, kleinschalig onderwijs."	de-vrije-student-gaat-universiteitsraad-bestormen	1	t	2015-04-22 00:03:42.098024-04	2015-05-06 11:25:54.014648-04
7	”In de medezeggenschap moeten kuitenbijters zitten”	article/2015/foto_nieuwsbericht_folia_groot.jpg	Folia Web heeft een interview gepubliceerd met onze lijsttrekker Rosa d'Adelhart Toorop. "De medezeggenschap krijgt meer macht, dan moeten er in die medezeggenschap ook kuitenbijters zitten. Nu moeten partijen vaak mensen smeken om in de CSR te komen, terwijl juist daar de slimste en mondigste studenten zouden moeten zitten."\r\n\r\n<a href="http://www.foliaweb.nl/studenten/de-vrije-student-wil-een-steviger-vuist-tegen-cvb-maken">Klik hier</a> voor het volledige artikel van Foliaweb.	in-de-medezeggenschap-moeten-kuitenbijters-zitten	1	t	2015-04-24 08:33:02.635804-04	2015-05-02 08:21:17.383992-04
10	Lijsttrekker De Vrije Student bekend: stem Caspar!	article/2015/foto_nieuwsbericht_caspar_groot.jpg	Student Kunstmatige Intelligentie Caspar Safarlou is tijdens de universiteitsraadsverkiezingen lijsttrekker namens de nieuwe studentenpartij De Vrije Student. Caspar is van plan om te knokken voor de belangen van iedere student. Caspar: "Het is tijd dat er een frisse wind gaat waaien door de universitaire medezeggenschap. Wij staan voor hoorcolleges op internet en zijn tegen het BSA, maar voor persoonlijke begeleiding.."	lijsttrekker-de-vrije-student-bekend-stem-caspar	1	t	2015-05-12 12:13:43.24676-04	2015-05-12 12:13:43.246806-04
11	”Meat Free Monday? De Vrije Student deelt worst en kaas uit!”	article/2015/foto_nieuwsbericht_of_je_worst_lust_groot.jpg	Op maandag 11 mei hebben wij op Meat Free Monday studenten de keuze gegeven tussen worst en kaas. De Vrije Student vindt dat je zelf wel kunt beslissen of je worst lust. Dat gaat niet alleen over worst en kaas, maar ook over de mogelijkheden binnen jouw studie om te studeren zoals jij dat wilt.	meat-free-monday-de-vrije-student-deelt-worst-en-kaas-uit	1	t	2015-05-12 12:15:53.232377-04	2015-05-12 12:20:18.50705-04
9	Groot nieuws: De Vrije Student gaat universiteitsraad bestormen	article/2015/foto_nieuwsbericht_3_groot_moTeORj.jpg	Groot nieuws: de nieuwe studentenpartij De Vrije Student gaat in Amsterdam, Nijmegen en Rotterdam de universiteitsraad bestormen.\r\n\r\nOnze lijsttrekkers Rosa (UvA), Caspar (Radboud) en Lars (EUR) vandaag in het NRC Handelsblad: "We accepteren nu lang genoeg dat plucheplakkende universiteitspolitici geen stip op de horizon zetten, maar kiezen voor grauwe middelmaat. Door de invoering van het leenstelsel voor studenten wordt er een miljard euro extra geïnvesteerd in universiteiten en hogescholen. Bijna alle studentenpartijprogramma’s zetten in op duurzame koffie en gesubsidieerde cultuur.\r\n\r\nHet is tijd voor een ander geluid. We moeten inzetten op investeringen in zaken die ons echt vooruit helpen in de 21e eeuw, zoals digitalisering, internationalisering en ambitieus, kleinschalig onderwijs."\r\n	groot-nieuws-de-vrije-student-gaat-universiteitsraad-bestormen	1	t	2015-05-12 12:09:30.912138-04	2015-05-12 12:38:58.210119-04
12	Stem De Vrije Student!	article/2015/foto_nieuwsbericht_4_groot.jpg	Door de invoering van het sociaal leenstelsel moeten studenten straks lenen voor hun studie. Daar staat tegenover dat er honderden miljoenen euro extra in het onderwijs worden geïnvesteerd. De universiteitsraad mag meebeslissen over die grote zak geld.\r\n\r\nHet is belangrijk dat dat geld goed terechtkomt. De Vrije Student gaat studentenbelangen écht vertegenwoordigen. Wij staan voor kleinere klassen, hoorcolleges online en zijn tegen het bindend studieadvies, maar voor persoonlijke begeleiding.\r\n\r\nStem De Vrije Student. Voor de student die er gewoon voor gaat.\r\n\r\n	stem-de-vrije-student	1	t	2015-05-12 12:17:23.210057-04	2015-05-18 05:46:40.343724-04
\.


--
-- Data for Name: cities_news_article_city; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_article_city (id, article_id, city_id) FROM stdin;
26	2	1
32	6	2
41	8	2
42	7	2
43	5	2
44	1	1
48	4	1
49	10	3
54	11	3
56	9	3
58	12	3
\.


--
-- Name: cities_news_article_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_article_city_id_seq', 58, true);


--
-- Name: cities_news_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_article_id_seq', 12, true);


--
-- Data for Name: cities_news_article_tags; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_article_tags (id, article_id, tag_id) FROM stdin;
14	2	1
19	6	1
20	6	2
21	6	3
45	8	1
46	8	6
47	8	7
48	7	1
49	7	2
50	7	4
51	7	5
52	5	1
53	1	1
56	4	1
57	10	1
58	10	3
59	10	7
66	11	1
69	9	1
72	12	1
73	12	7
\.


--
-- Name: cities_news_article_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_article_tags_id_seq', 73, true);


--
-- Data for Name: cities_news_city; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_city (id, title, picture, video, video_url, bezoek_adres, facebook, twitter, youtube) FROM stdin;
2	Amsterdam	default/nieuws.png	f	https://www.youtube.com/embed/-7oVO8uvxhg	Antonio Vivaldistraat 7d20\r\n1083 HO Amsterdam			
3	Nijmegen	default/nieuws.png	f	https://www.youtube.com/embed/-7oVO8uvxhg	Sint Anthoniusplaats 17\r\n6511 TR Nijmgen			
1	Rotterdam	default/nieuws.png	f		Rivierstraat 174\r\n3016 CH Rotterdam	https://www.facebook.com/pages/Lars-Benthin-voor-De-Vrije-Student/1378927649093761	https://twitter.com/DVS_rotterdam	https://www.youtube.com/channel/UCjaBeNHEWPlDfqn5dKhnh3g
\.


--
-- Name: cities_news_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_city_id_seq', 3, true);


--
-- Data for Name: cities_news_mensen; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_mensen (id, name, title, text, email, phone, image, published) FROM stdin;
2	Rosa d’Adelhart Toorop	Lijsttrekker	Bachelor Fiscaal Recht		06 - 29 27 73 53	mensen/02.jpg	t
1	Lars Benthin	Lijsttrekker	Bachelor Bestuurskunde		06 - 25032328	mensen/Lars_Benthin.jpg	t
3	Sven Butter	Plaats 2	Bachelor Politicologie		06 - 14 66 17 42	mensen/05_QFjnDAO.jpg	t
4	Splinter Chabot	Plaats 3	Bachelor Politicologie		06 - 47 47 28 37	mensen/08.jpg	t
5	Dave Wai	Plaats 4	Bachelor Fiscaal Recht		06 - 46 48 91 92	mensen/07.jpg	t
6	Anouk van Brug	Plaats 5	Bachelor Politicologie		06 - 12 18 41 49	mensen/04.jpg	t
7	Julia Nijhoff	Plaats 6	Archeologie			mensen/6.jpg	t
8	Ricardo Dias	Plaats 7	Geneeskunde			mensen/7.jpg	t
9	Arthur Tomassen	Plaats 8	Europese studies 			mensen/8.jpg	t
10	Arend Griekspoor	Plaats 9	Geschiedenis			mensen/9.jpg	t
11	Tim van Spanning	Plaats 10	Politicologie			mensen/10.jpg	t
12	Nienke Vennik	Plaats 11	Internationale Betrekkingen			mensen/11.jpg	t
13	Sophia Hankamp	Plaats 12	Europese studies 			mensen/12.jpg	t
14	Tik Beckers	Plaats 13	Politicologie			mensen/13.jpg	t
15	Liam Hummeling	Plaats 14	Politicologie			mensen/14.jpg	t
16	Bartjan Hermans	Plaats 15 	Arbeidsrecht			mensen/15.jpg	t
19	Joris van Pelt	Plaats 16 	Politicologie			mensen/16.jpg	t
20	Midas Boeke	Plaats 17	Politicologie			mensen/17_cb9I0KT.jpg	t
21	Maxime Kalse	Plaats 18	Politicologie			mensen/18.jpg	t
22	Bart Vosmer	Plaats 19	Rechten			mensen/19.jpg	t
23	Fernando Dias	Plaats 20	Geneeskunde			mensen/20.jpg	t
24	Joris Zevenbergen	Plaats 21	Urban Studies			mensen/21.jpg	t
25	Mischa Lokhoff	Plaats 22	Fiscaal recht			mensen/22.jpg	t
26	Sophie van der Ploeg	Plaats 23	Politicologie			mensen/23.jpg	t
27	Milo van Moort	Plaats 24	Beta-gamma			mensen/24.jpg	t
28	Mandy Schipper	Plaats 25	Arbeidsrecht			mensen/25.jpg	t
29	Jur Limburg	Plaats 26	Duitse taal			mensen/26.jpg	t
30	Max van Sinderen 	Plaats 27	Fiscaal recht			mensen/27.jpg	t
31	Jesse Haenen	Plaats 28	Politicologie			mensen/28.jpg	t
32	Paul van Schaijk	Plaats 29	Fiscale economie			mensen/29.jpg	t
33	Jorrit Jans	Plaats 30	Rechten			mensen/30.jpg	t
34	Naveen Bharatsingh	Plaats 31	Fiscaal recht			mensen/31.jpg	t
35	Roel van Oosten	Plaats 32	Filosofie			mensen/32.jpg	t
36	Yarden Sela	Plaats 33	Politicologie			mensen/33.jpg	t
37	Luc Haverkamp	Plaats 34	Politicologie			mensen/34.jpg	t
38	Tessa Boumans	Plaats 35	Politicologie			mensen/35.jpg	t
39	Rob Janssen	Plaats 36	Politicologie			mensen/36.jpg	t
40	Jurjen van Rees	Plaats 37	Econometrie			mensen/37.jpg	t
41	Yael Wassen	Plaats 38	Politicologie			mensen/38.jpg	t
42	Glenn Houtgraaf	Plaats 39	Politicologie			mensen/39.jpg	t
43	Anahita Shakary	Plaats 40	Politicologie			mensen/40.jpg	t
44	Mariska van Delft	Plaats 41	Geschiedenis			mensen/41.jpg	t
45	Jori Faber	Plaats 42 	Communicatiewetenschappen			mensen/42.jpg	t
46	Arnout Maat	Plaats 43				mensen/43.jpg	t
47	Rick Otten	Plaats 44	Geschiedenis			mensen/44.jpg	t
48	Niels van der Neut	Plaats 45	Privaatrechtelijke rechtspraktijk			mensen/45.jpg	t
49	Job Harms	Plaats 46	Theaterwetenschappen			mensen/46.jpg	t
50	Alec Sanderson	Plaats 47	Fiscaal recht			mensen/47.jpg	t
51	Nadine Hut	Plaats 48	Slavische talen			mensen/48.jpg	t
52	Louise de Rijk	Plaats 49				mensen/49.jpg	t
53	Marieke Lomans	Plaats 50				mensen/50.jpg	t
54	Anne Kingma	Plaats 51				mensen/51.jpg	t
69	Caspar Safarlou	Lijsttrekker	Kunstmatige Intelligentie			mensen/01.jpg	t
72	Jitse Arendsen	Plaats 4	Politicologie			mensen/04_JqvytvP.jpg	t
73	Sem van Maanen	Plaats 5	Politicologie			mensen/05_uXyTkTX.jpg	t
75	Lars Dijkema	Plaats 7	Economie			mensen/07_GFTzMIl.jpg	t
78	Regina Koonen	Plaats 10	Recht & Management			mensen/10_Bk41MOA.jpg	t
79	Karl Kouki	Plaats 11	Bestuurskunde			mensen/11_sjmdOzk.jpg	t
80	Jelle Beernink	Plaats 12	Economie			mensen/12_KOpF6ct.jpg	t
81	Ronald Peeters	Plaats 13	Geschiedenis			mensen/13_PgNGedN.jpg	t
82	Koen Durlinger	Plaats 14	Bedrijfskunde			mensen/14_va1ZQN3.jpg	t
83	Liselotte Noorduizen	Plaats 15	Politicologie			mensen/15_umJfW0y.jpg	t
70	Abdul Abdel Aziz	Plaats 2				mensen/02_zRcFa2g.jpg	t
74	Sofie ten Hoopen	Plaats 6	Tandheelkunde			mensen/06_2e8f4Wt.jpg	t
77	Stan Cortenbach	Plaats 9	Duitse taal en cultuur			mensen/09_IPEHod5.jpg	t
71	Rick Schreurs	Plaats 3	Wiskunde 			mensen/03_3gQKCUA.jpg	t
76	Valentijn Kuperus	Plaats 8	Fiscaal recht en Bestuurskunde			mensen/08_YS5SSDN.jpg	t
\.


--
-- Data for Name: cities_news_mensen_city; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_mensen_city (id, mensen_id, city_id) FROM stdin;
3	2	2
4	1	1
5	3	2
6	4	2
7	5	2
8	6	2
9	7	2
10	8	2
11	9	2
12	10	2
13	11	2
14	12	2
15	13	2
16	14	2
17	15	2
18	16	2
21	19	2
22	20	2
23	21	2
24	22	2
25	23	2
26	24	2
27	25	2
28	26	2
29	27	2
30	28	2
31	29	2
32	30	2
33	31	2
34	32	2
35	33	2
36	34	2
37	35	2
38	36	2
39	37	2
40	38	2
41	39	2
42	40	2
43	41	2
44	42	2
45	43	2
46	44	2
47	45	2
48	46	2
49	47	2
50	48	2
51	49	2
52	50	2
53	51	2
54	52	2
55	53	2
56	54	2
71	69	3
74	72	3
75	73	3
77	75	3
80	78	3
81	79	3
82	80	3
83	81	3
84	82	3
85	83	3
89	71	3
90	70	3
91	74	3
92	76	3
93	77	3
\.


--
-- Name: cities_news_mensen_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_mensen_city_id_seq', 93, true);


--
-- Name: cities_news_mensen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_mensen_id_seq', 83, true);


--
-- Data for Name: cities_news_punten; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_punten (id, nummer, title, text, slug, standpunt_id) FROM stdin;
1	1.1	Vakken digitaal volgen	De Vrije Student verwacht niet langer van iedereen dat studenten onderwijs volgen op een vastgestelde tijd en plaats. Dat systeem is achterhaald en niet meer van deze digitale tijd.\r\n\r\nIn de eerste plaats moeten studenten volwaardige vakken digitaal kunnen volgen. Dat betekent dat de UvA vakken opstelt aan de hand van collegereeksen op internet. Die colleges zijn al deels gratis beschikbaar op Coursera en EdX, daarnaast kan de UvA ze op soortgelijke programma’s inkopen.\r\n\r\nDe hoofdtaak van de UvA blijft het onderwijs in hoorcolleges en werkgroepen, maar volgens De Vrije Student moet het mogelijk zijn dat studenten een deel van hun onderwijs thuis volgen. Hierdoor kunnen studenten in Nederland leren van de beste professoren  uit topuniversiteiten, overal ter wereld. Topinstellingen zoals Harvard en Stanford zijn al op deze platforms aangesloten, de colleges al voor iedereen te bekijken.\r\n\r\nDe Vrije Student wil dat de UvA haar expertise gebruikt om in huis tentamens bij deze collegereeksen te ontwerpen, waarmee een volwaardig cijfer gehaald kan worden voor zo’n collegereeks. Indien gewenst kunnen faculteiten natuurlijk ook (facultatief) werkgroeponderwijs organiseren.\r\n	vakken-digitaal-volgen	1
25	9.2	Landelijk netwerk	Daarnaast heeft De Vrije Student een landelijk netwerk. Dat maakt lijntjes met andere lijsten mogelijk, om problemen breder aan te pakken dan alleen de UvA. Ook verhoogt dat de drukmiddelen naar universiteitsbesturen en zelfs naar de politiek in Den Haag.\r\n\r\nOok belooft De Vrije Student als landelijke beweging ook op andere universiteiten haar lijntjes uit te zetten. Alleen als brede beweging kan het onderwijs op lange termijn worden verbeterd, in het belang van de vrije student. De student die er gewoon voor gaat.\r\n	landelijk-netwerk	9
64	8.4	Supermarkt	De Vrije Student vindt ook dat er gekeken dient te worden naar de mogelijkheid om een supermarkt op de universiteit te krijgen. Dit zou in het verband kunnen met een plan om meerdere bedrijven de ruimte te geven om zich op de campus te vestigen.	supermarkt	17
57	7.3	Nakijken	De Vrije Student eist dat tentamens en essays binnen de termijn worden nagekeken. Te vaak lopen docenten nog uit, vaak om begrijpelijke redenen. Het is echter aan het universiteitsbestuur om te zorgen dat docenten weer op tijd kunnen nakijken. Hiervoor moet het bestuur op zoek naar creatieve oplossingen.\r\n\r\nWaar docenten te lang doen over het nakijken, worden studenten bijvoorbeeld beloond met een halve punt extra op het eindcijfer, per week, afgerond omhoog. Dit moet als prikkel dienen om de tijdig nakijken te bevorderen.\r\n	nakijken2	16
58	7.4	Inhalen en herkansen	De Vrije Student vindt dat iedere student recht heeft op een tweede kans. Indien een student de eerste kans moet missen door persoonlijke omstandigheden, helpt de studiecoach voor een oplossing op maat. Het uitgangspunt is dus dat studenten alleen door eigen schuld de mogelijkheid op een tweede kans verspelen.	inhalen-en-herkansen2	16
59	7.5	Fraude en plagiaat	De Vrije Student vindt dat strenge regels tegen fraude en plagiaat op zijn plek zijn, maar deze regels moeten rechtvaardig zijn. Studenten moeten goed worden voorgelicht zodat zij weten waar de grens ligt. Straffen omdat iemand per ongeluk plagieert, is onrechtvaardig. De regels moeten dus duidelijk en helder zijn.\r\n\r\nDe Vrije Student vindt ook dat de regels eenduidig moeten zijn. Nog al te vaak verschillen de regels niet alleen per faculteit of opleiding, maar ook per vak. Studenten moeten universiteitsbreed weten waar ze aan toe zijn. Daarom pleit De Vrije Student voor universiteitsbrede regels over tentamens, fraude en plagiaat. \r\n	fraude-en-plagiaat2	16
60	7.6	Examencommissie	Omdat de impact van beslissingen van de Examencommissie groot kunnen zijn, tot het missen van het BSA aan toe, eist De Vrije Student dat de commissie goed bereikbaar en toegankelijk is. Termijnen moeten duidelijk worden gecommuniceerd en ook vanuit de kant van de Examencommissie worden nageleefd. Een besluit dat te laat wordt genomen of gecommuniceerd, wordt wat De Vrije Student betreft vernietigd in het voordeel van de student.\r\n\r\nDe studiecoach die De Vrije Student voorstelt, krijgt een belangrijke rol in het contact met de Examencommissie. De student kan samen met zijn of haar persoonlijke studiecoach met de Examencommissie communiceren. De lijntjes worden op die manier zo kort mogelijk gehouden.\r\n\r\nDe Vrije Student is voorstander van onafhankelijke rechtspraak, ook op het niveau van de universiteit. Het komt te vaak voor dat een docent die betrokken is bij het geschil, bijvoorbeeld een docent van het betreffende vak, meepraat in de examencommissie. De Vrije Student vindt dat daar een einde aan moet komen: docenten moeten onafhankelijk zijn en de samenstelling van de Commissie moet steeds zo worden gekozen, dat docenten geen betrokkenheid hebben bij dit specifieke geschil.\r\n	examencommissie2	16
65	9.1	Training	Een betere universiteit begint bij jezelf, is het devies van De Vrije Student. Daarom doet De Vrije Student niet alleen inhoudelijke verkiezingsbeloftes, maar belooft zij ook de beste studenten in de USR.\r\n\r\nDe Vrije Student staat voor een hoogwaardig trainingsprogramma van haar kandidaten. De kandidaten worden, voor en na de verkiezingen, getraind om echte kuitenbijters te zijn. Ze kennen hun rechten en weten hoe om te gaan met de confrontatie. De kandidaten van De Vrije Student zijn de beste studenten op de juiste plek.\r\n	training	18
4	1.4	Intranet: CIS, Blackboard etcetera	Het spreekt daarnaast natuurlijk voor zich dat de digitale omgeving van de UvA van uitstekende kwaliteit is. De fouten, zoals die met CIS gemaakt zijn, mogen nooit meer voorkomen. Uiteindelijk wil De Vrije Student één duidelijk programma waarmee alles vanuit huis geregeld kan worden.	intranet	1
6	2.2	Van studieadviseur naar studiecoach	De studiecoach is een vast aanspreekpunt van de student, kent de omstandigheden en springt daarop in. De Vrije Student gaat van nummer naar individu. De persoonlijke afspraken zijn uiteraard niet vrijblijvend: langstuderen vanwege ontplooiing moet kunnen, langstuderen met een PlayStation-controller in de hand niet. Daarnaast houdt de studiecoach de mogelijkheid om na het eerste jaar het gesprek aan te gaan over de juistheid van de studiekeuze. Het aantal studiepunten mag echter nooit meer leidend zijn. De studiecoach heeft zelf de bevoegdheid beslissingen over dit soort zaken te nemen: het is dus niet alleen een adviseur, maar ook iemand die de knoop door kan hakken. Uiteraard moet er tegen zulke beslissingen wel een beroep open staan.\r\n\r\nNatuurlijk is een studiecoach bereikbaar tijdens de vaste momenten voor gesprekken, maar ook telefonisch, op afspraak en via een spreekuur. Wat De Vrije Student betreft heeft een studiecoach elke dag een inloopspreekuur om zijn vaste studenten te woord te staan. Bereikbaarheid van de studiecoach is essentieel. \r\n\r\nDe studiecoaches krijgen daarnaast taken als het gaat over studieplanning, afspraken met de examencommissie et cetera. Een personele uitbreiding van het team moet ervoor zorgen dat de werkdruk van de studiecoaches niet toeneemt. De studiecoaches moeten plezier hebben in hun werk en gaan daardoor geen probleem uit de weg.\r\n\r\nOverigens kiest De Vrije Student voor fulltime aangestelde studiecoaches: het is nadrukkelijk niet de bedoeling dat docenten het “erbij” doen. Studiecoaches zijn daartoe opgeleid en beschouwen hun advies op maat aan de student als een leuke uitdaging en als vakwerk.\r\n\r\nOm de studiecoach te ondersteunen en waar nodig te ontlasten, kunnen zij ouderejaarsstudenten instellen als studentmentoren. Zij kunnen eenvoudige vragen afvangen en de student wegwijs helpen maken in het oerwoud van reglementen en commissies dat de UvA heet. Want iemand die wegwijs in dat oerwoud maakt, zal helaas nog lang nodig zijn.\r\n	Van-studieadviseur-naar-studiecoach	2
7	3.1	Iedere opleiding een honourstraject met meerwaarde	De Vrije Student wil dat goede studenten hun talenten optimaal kunnen. Dit betekent in de eerste plaats dat alle opleidingen een passend honourstraject aanbieden. Binnen dit honourstraject krijgen studenten onderwijs dat zich in kwaliteit kan meten aan de wereldtop. De Vrije Student is tegen het verhoogd collegegeldtarief voor honoursstudenten: selectiecriteria mogen alleen over de kwaliteiten van de student gaan.\r\n\r\nZo’n honourstraject moet natuurlijk meerwaarde hebben voor de studie. Het moet een verbredend en een verdiepend element hebben, en mag niet alleen maar gemakshalve interdisciplinair op de hele faculteit beslaan. Excellente studenten hebben immers interesse in hun vakgebied, dat moeten we koesteren.\r\n	iedere-opleiding-een-honourstraject-met-meerwaarde	3
3	1.3	Digital Student Program	Om de plannen voor digitale colleges extra kracht bij te zetten, kiest De Vrije Student voor een Digital Student Program, parallel aan de eigen studie. Omdat colleges breed worden gepubliceerd kunnen alle studenten ook hoorcolleges van buiten hun vakken volgen. Zij moeten zichzelf ook voor de tentamens van deze vakken kunnen inschrijven.\r\n\r\nZo is het mogelijk om vanuit huis extra vakken van een andere studie te doen en een volwaardig digitale, tweede studie te volgen. Deze wegen volledig mee en moeten ook op de definitieve cijferlijst worden weergegeven.\r\n	digital-student-program	1
66	9.2	Landelijk netwerk	De Vrije Student heeft een landelijk netwerk. Dat maakt contact met andere lijsten mogelijk, om problemen breder aan te pakken dan alleen in Nijmegen. Ook verhoogt dat de drukmiddelen naar universiteitsbesturen en zelfs naar de politiek in Den Haag.\r\n\r\nOok belooft De Vrije Student als landelijke beweging ook op andere universiteiten haar lijntjes uit te zetten. Alleen als brede beweging kan het onderwijs op lange termijn worden verbeterd, in het belang van de vrije student. De student die er gewoon voor gaat.\r\n	landelijk-netwerk2	18
11	3.5	Geen maximumtermijn	Over het leenstelsel zelf heeft De Vrije Student geen mening, omdat dat geen zaak van de Centrale Studentenraad is. Maar de consequentie is duidelijk: langer doorstuderen kost de student geld. Andere impulsen die studenten dwingen sneller te studeren, moeten daarom afgeschaft worden, nu extra studiejaren een investering zijn waar studenten bewust over na zullen denken. De Vrije Student verzet zich daarom tegen regelingen zoals dat tentamencijfers na bepaalde tijd vervallen of andere regelingen die een maximumtermijn aan de bachelor koppelen.	geen-maximumtermijn	3
12	4.1	Soepel studeren in het buitenland	Een van de belangrijkste pluspunten die een starter op de arbeidsmarkt op zijn cv kan plaatsen, is internationale ervaring. De Vrije Student vindt dan ook dat de UvA de mogelijkheden voor internationale ervaring dan ook volop moet bieden. Niet alleen door contacten met universiteiten aan te gaan, maar ook door zich flexibel op te stellen naar een student met internationale ambities. Waar vakken verplaatst of uitgesteld moeten worden, moet dit mogelijk zijn. Daarnaast moeten eventuele eisen ruim op tijd en helder gecommuniceerd worden.\r\n\r\nDe international office, die op de UvA formeel nu al aanwezig zou moeten zijn op iedere faculteit, zou hier een sleutelrol in moeten spelen, in samenwerking met de uitgebreide kantoren van de studieadviseurs waar De Vrije Student voor staat. Deze moeten goed vindbaar zijn en moeten inloopspreekuren houden om studenten met internationale ambities op het goede spoor te zetten.\r\n\r\nIn overleg met de studieadviseur, de international office en uiteraard de student moeten mogelijkheden voor internationale projecten worden gevonden, ook als daar vakken voor uitgesteld moeten worden. Dit is volgens De Vrije Student een kwestie van maatwerk. Starre reglementen mogen hierin niet leidend zijn.\r\n	Soepel-studeren-in-het-buitenland	4
14	5.2	Goed gebruik van subsidies	Wat betreft subsidies voor studentenorganisaties: extra geld moet primair naar onderwijskwaliteit gaan en pas in de tweede instantie naar studenten. De ruimte voor ontplooiing wordt wat De Vrije Student gezocht in een flexibel curriculum, in digitalisering en in een mentaliteitsverandering. De ontplooiing hoeft wat De Vrije Student betreft niet al te veel te worden gesubsidieerd. \r\n\r\nVan de initiatieven die subsidie ontvangen, moet de effectiviteit en doelmatigheid worden verantwoord. De UvA subsidieert wat De Vrije Student betreft alleen nog maar de student die er gewoon voor gaat. Borrels met gratis bier of shotjesfeesten moeten maar van de contributie betaald worden.\r\n\r\nBestuurdersbeurzen mogen niet omhoog. Besturen doe je immers niet voor het geld, maar omdat het leuk, leerzaam en goed voor je toekomst is. Uiteindelijk kiest De Vrije Student niet voor een bestuurdersbeurs waar je wat aan overhoudt, maar voor eentje die de onkosten moet dekken.\r\nDoor te investeren in onderwijskwaliteit en andere taken niet te vergroten, kiest De Vrije Student voor een hoog rendement – niet voor de UvA, maar voor de student. \r\n	goed-gebruik-van-subsidies	5
23	8.2	Studieplekken	Nog altijd zijn er, zeker in tentamentijd, veel te weinig studieplekken beschikbaar. Daar kan eenvoudig een einde aan worden gemaakt. Lege zalen, zowel collegezalen als werkgroepruimtes, staan nog te vaak leeg. Zeker in tentamentijd moet het mogelijk zijn deze zalen open te stellen voor studerende docenten. De Vrije Student is dus tegen leegstand van studieplaatsen en wil zalen efficiënt gebruiken.	studieplekken	8
22	8.1	Moderne onderwijsomgeving	De Vrije Student is fan van de historische gebouwen in de binnenstad van Amsterdam, maar eist dat de huisvesting aan de hoogste en moderne eisen voldoet. Zo wil De Vrije Student stopcontacten in hoorcollegezalen en werkgroepruimtes. Daarnaast eist De Vrije Student goede hulpmiddelen voor docenten, zoals werkende beamers en geluidsapparatuur.\r\n\r\nDe luchtkwaliteit is in sommige onderwijsgebouwen onder de maat. De Vrije Student dringt erop aan dat dit zo snel mogelijk op orde gebracht wordt. \r\n\r\nDe aanbestedingsprocedure voor de cateraar start aan het einde van dit jaar. De Vrije Student is van mening dat de keuze van de catering moet zijn gebaseerd op de uitkomsten van de enquête die wordt gehouden onder studenten en medewerkers. \r\n	moderne-onderwijsomgeving	8
24	9.1	Trainingen	Een betere UvA begint bij jezelf, is het devies van De Vrije Student. Daarom doet De Vrije Student niet alleen inhoudelijke verkiezingsbeloftes, maar belooft zij ook de beste studenten in de CSR.\r\n\r\nDe Vrije Student staat voor een hoogwaardig trainingsprogramma van haar kandidaten. De kandidaten worden, voor en na de verkiezingen, getraind om echte kuitenbijters te zijn. Ze kennen hun rechten en weten hoe om te gaan met de confrontatie. De kandidaten van De Vrije Student zijn de beste studenten op de juiste plek.\r\n	trainingen	9
8	3.2	Ambitieuze mentaliteit	De Vrije Student eist een mentaliteitsverandering als het gaat om actieve studenten. Studenten moeten niet alleen in de collegezalen, maar ook buiten de universiteitsmuren kunnen excelleren. De universiteit moet weer trots zijn op de student die zich buiten de universiteit verdienstelijk maakt en mag hem of haar niet langer zien als een last die tijd en moeite kost. Ook aanwezigheidsplicht is hierbij een voorbeeld: dit kan een enorme last zijn van een student die in zijn of haar vrije tijd een vereniging bestuurt. \r\n\r\nDe studiecoaches spelen hierin een belangrijke rol. De Vrije Student ziet hen als degenen die het mogelijk moeten maken om te ontplooien en te excelleren. Door goede afspraken, door ruimte voor de student en door vrijheid in het curriculum.\r\n	ambitieuze-mentaliteit	3
9	3.3	Soepele aanwezigheidsplicht	De Vrije Student wil naar een UvA met een soepele aanwezigheidsplicht. De Vrije Student ziet er het belang van in om werkgroepen in bepaalde gevallen verplicht te stellen, omdat de onderwijsvorm zich leent voor diepere discussies over de stof. Het is voor studenten ook goed dat zij dan niet in lege zalen zitten, en hun studiegenootjes op komen dagen. Een discussie in je eentje of met z’n drieën is immers zinloos.\r\n\r\nDe Vrije Student vindt wel dat de consequentie van het niet voldoen aan de aanwezigheidsplicht, laag moet zijn. Studenten mogen twee van de acht werkgroepen missen, bij drie of meer werkgroepen mogen studenten hooguit het recht op de herkansing verspelen – iedereen heeft dan altijd de mogelijkheid een afweging te maken of die de werkgroepen wel of niet nodig heeft om het vak te halen. En iedere student moet het recht hebben een bepaald tentamen te maken.\r\nAls het door de planning eens niet mogelijk is om werkgroepen bij te wonen, moet het gemakkelijk zijn aan te haken bij een andere werkgroep en een briefje mee te krijgen voor de eigen werkgroepdocent. Zo komt door de aanwezigheidsplicht niemand in de knoop.\r\nUiteraard is De Vrije Student tegen aanwezigheidsplicht bij hoorcolleges.\r\n	soepele-aanwezigheidsplicht	3
15	6.1	Medezeggenschap decentraal	De studentenraden van een universiteit zijn relatief klein en bevinden zich ver weg. Bovendien volgen maar weinig raadsleden nog vakken tijdens het jaar in de studentenraad. Voor de gewone student is het daarom een onbekend en ver orgaan, terwijl iedereen wel iemand kent in een faculteitsraad of opleidingscommissie.\r\n\r\nDe Vrije Student wil medezeggenschap dicht bij de student brengen en helder en toegankelijk maken. Daarom moeten lagere medezeggenschapsorganen, zoals faculteitsraden en opleidingscommissies, een grotere invloed krijgen. Bijna iedere student kent immers iemand die lid is van een opleidingscommissie of een faculteitsraad.\r\n\r\nDe Vrije Student vindt dan ook dat adviesrechten van deze organen als bindend beschouwd moeten worden en dat deze organen gedurende het hele besluitvormingsproces betrokken moeten blijven.\r\n	medezeggenschap-decentraal	6
16	6.2	Democratie	De Vrije Student verzet zich tegen het beeld van De Nieuwe Universiteit dat de UvA niet democratisch is. In plaats van het eisen van meer rechten, moeten de bestaande rechten beter worden benut en opgeëist. Zo krijgt de CSR instemmingsrecht over hoofdlijnen van de begroting. De Vrije Student is niet bang om met haar vuist op de vergadertafel te slaan. \r\n\r\nDe bezetting van een universiteitspand is niet het middel dat De Vrije Student voorstaat, maar De Vrije Student gaat de confrontatie zeker niet uit de weg. De Vrije Student is niet bang voor de consequenties en schuwt het conflict zeker niet.\r\n\r\nDaarnaast is de UvA tegen democratisch gekozen bestuurders. Bestuurders moeten vooral goed kunnen besturen en wat De Vrije Student betreft is de UvA goed in staat nieuwe kandidaten zelf te beoordelen. Dat betekent niet dat de zittende bestuurders perfect zijn en klakkeloos moeten worden opgevolgd, maar De Vrije Student gelooft niet dat een schijndemocratie de oplossing is. Daarnaast keert De Vrije Student zich tegen een studentlid van het College van bestuur. Zo’n student heeft vaak te weinig tijd om zich echt in de dossiers vast te bijten en komt er in vergaderingen toch niet tussen. Dat betekent dat een studentlid alleen maar een stok van het bestuur wordt om mee te slaan: “we hebben toch advies gevraagd aan jullie studentlid? Die was akkoord, nu niet zeuren!”\r\n\r\nDe Vrije Student past daarvoor, maar wil huidige mogelijkheden beter gebruiken.\r\n	democratie	6
62	8.2	Studieplekken	Nog altijd zijn er, zeker in tentamentijd, veel te weinig studieplekken beschikbaar. Daar kan eenvoudig een einde aan worden gemaakt. Zalen, zowel collegezalen als werkgroepruimtes, staan nog te vaak leeg. Zeker in tentamentijd moet het mogelijk zijn deze zalen open te stellen voor studerende studenten. De Vrije Student is dus tegen leegstand van studieplaatsen en wil zalen efficiënt gebruiken.	studieplekken2	17
5	2.1	Persoonlijk studieadvies	Door het in beton gegoten bindend studieadvies (BSA) op de universiteiten wordt de ontplooiing van studenten geheel geremd. Nevenactiviteiten in het eerste jaar worden onmogelijk gemaakt en nog al te vaak worden mensen gedwongen gebruik te maken van de regeling om in februari te stoppen om een negatief BSA te voorkomen. Mensen die vaak gemotiveerd genoeg zijn om de studie af te maken, maar voor wie dat niet mogelijk is. Daarnaast is de dispensatieregeling nu te summier. Door de toetsing achteraf, zonder mogelijkheid om vooraf afspraken te maken, weten studenten niet waar ze aan toe zijn.\r\n\r\nDe Vrije Student is klaar met het BSA en eist een Persoonlijk Studieadvies met persoonlijke begeleiding. Het team van studieadviseurs wordt uitgebreid en omgevormd tot studiecoach. Iedere student krijgt een persoonlijke coach. Met deze studiecoach wordt een persoonlijk plan opgesteld. Zo kan het voorkomen dat iemand die in het eerste jaar dankzij nevenactiviteiten minder studiepunten haalt, maar dankzij persoonlijke afspraken zijn bachelor alsnog met beperkte uitloop weet te behalen.\r\n\r\nNatuurlijk blijft de uitzonderingsregel bestaan: stel dat een student naast zijn bestuursfunctie afspreekt dat hij dertig studiepunten haalt in jaar 1, maar dat inhaalt in jaar 2 door dan 75 studiepunten te halen. Als diegene in jaar 2 ziek wordt, mag dat natuurlijk geen consequenties hebben.\r\n	Persoonlijk-studieadvies	2
10	3.4	Dertig ECTS echte keuzeruime	De Vrije Student wil dat iedere opleiding ten minste dertig studiepunten (ECTS) in de vrijekeuzeruimte aanbiedt over de gehele bachelor. Deze keuzeruimte maakt het studenten mogelijk om zich verder te verbreden dan alleen binnen de studie. Die dertig punten vrije keuzeruimte moeten echt vrij te kiezen zijn: digitale vakken, vakken aan universiteiten in binnen- en buitenland, alles moet mogelijk zijn. Voor studenten die toch op zoek zijn naar verdieping binnen hun eigen opleiding, moeten geschikte minors worden opgezet.\r\n\r\nDe Vrije Student zet er nadrukkelijk op in dat er gemakkelijk vakken gevolgd moeten worden aan andere universiteiten. De UvA moet zich ervoor inspannen dat universiteiten naar één gezamenlijk systeem toewerken waarbij studenten eenvoudig vakken overal in het land (en daarbuiten) kunnen volgen.\r\n	dertig-ects-echte-keuzeruime	3
13	5.1	Investeren in onderwijs	Het stellen dat universiteitsgeld aan verbetering van het onderwijs besteed moet worden, lijkt het intrappen van een open deur. In de realiteit moeten studenten binnen de medezeggenschap echter nog opstaan voor dit standpunt. De Vrije Student wil dat het extra geld van het leenstelsel besteed wordt aan onderwijs.\r\n\r\nGeld van de UvA hoort thuis bij het onderwijs. De Vrije Student staat daarom voor investeringen in kleine werkgroepen. Het zou op de UvA al een verbetering zijn als er nooit meer studenten dan stoelen in de zaal hoeven, maar het streven is een werkgroep van hooguit 25 studenten. Daarnaast wil De Vrije Student investeren in kwaliteit van de docenten. Zij moeten effectief worden bijgeschoold, vakinhoudelijk en in didactiek.\r\n\r\nDat betekent ook dat kleine opleidingen niet koste wat het kost open moeten blijven. De Vrije Student kiest voor profileren van de UvA. Opleidingen waar de UvA goed in is, moeten blijven. Opleidingen waar de UvA onderscheidend in is, moeten blijven. Maar De Vrije Student kiest niet voor het aanbieden van studies voor de studies. Het aanbod van studies moet, kortom, worden bepaald door de kwaliteit ervan. \r\n\r\nAls een studie op een andere universiteit beter kan, schuwt De Vrije Student niet om de samenwerking met zo’n andere universiteit op te zoeken en de studie in Amsterdam zelf op te laten gaan in een bredere bachelor-opleiding. Veel studies hebben raakvlakken, die kunnen worden benut. Dit verhoogt niet alleen het “rendement”, zoals de Maagdenhuisbezetters roepen, maar kan ook de kwaliteit van de opleiding daadwerkelijk verhogen.\r\n\r\nDe Vrije Student doet daarom geen beloftes of bepaalde studies wel of niet moeten blijven. Wel zegt De Vrije Student dat per opleiding gekeken moet worden of de kwaliteit hoog is en of de studie past bij het profiel van de UvA.\r\n	investeren-onderwijs	5
27	6.3	Allocatiemodel	Wat het allocatiemodel betreft, moet zich nog het een en ander uitkristalliseren. Het betekent dat de Centrale Studentenraad op hoofdlijnen mag meebeslissen over de begroting. Maar wat zijn hoofdlijnen en wat niet? De Vrije Student gaat de confrontatie met het College van Bestuur niet uit de weg en is bereid tot het uiterste te gaan om haar zin te krijgen of om duidelijk te krijgen. De UvA is niet voor niets aangesloten bij Landelijke Commissie voor Geschillen medezeggenschap Hoger Onderwijs. Die doet uitspraken als er conflicten voordoen in de medezeggenschap, waar beroep tegen open staat bij het gerechtshof. 	allocatiemodel	6
2	1.2	Colleges op YouTube	De Vrije Student wil daarnaast dat alle colleges worden opgenomen en online worden gezet, op intranet en uiteindelijk, als dit mogelijk is wat betreft bijvoorbeeld auteursrechten, ook via YouTube. Zo kunnen alle studenten profiteren van alle colleges en wordt deze kennis ook gedeeld tot ver buiten de universiteitsmuren.\r\n\r\nDit maakt het voor studenten makkelijker om hun studentenleven flexibel in te richten om bijvoorbeeld bestuursfuncties, bijbanen of vrijwilligerswerk heen. Studenten kunnen ook gemakkelijk een extra bijvak volgen via YouTube, waarbij zij zelf beslissen of ze wel of niet deelnamen aan een eventueel aangeboden tentamen. Is het volgen van een collegereeks van een vak buiten de studie om niet ook zonder het tentamen waardevol voor student én samenleving?\r\n\r\nOok voor de docenten is dit een verbetering. Die hoeven de tijd, die hoorcollegedocenten vaak liever in onderzoek steken, niet meer te gebruiken om twee hoorcolleges na elkaar te geven. Als er kleinere groepen studenten in de zaal zitten, kunnen de studenten die er wel zijn, weer actief meedoen met het college. Er komt ruimte voor vragen en interactiviteit, in plaats van voor Facebook en Twitter op het laptopscherm.\r\n	colleges-op-youtube	1
28	7.1	Uniform Onderwijs- en Examenreglement (OER)	De Vrije Student vindt duidelijkheid en eenduidigheid van regels over herkansing, fraude, plagiaat en tentamenregelingen belangrijk. Daarom moet er één eenduidig Onderwijs- en Examenreglement komen voor de hele UvA. De medezeggenschapsorganen, centraal en decentraal, moeten allemaal bij de totstandkoming hiervan betrokken zijn. Daarom moet het universiteitsbestuur ook de opleidingscommissies langs voor advies. 	uniform-onderwijs-en-examenreglement-oer	7
29	7.2	Boeken	Bij een aantal vakken op de UvA wordt er gebruik gemaakt van boeken die de docent zelf geschreven heeft. Op zich ziet De Vrije Student daar een aantal grote voordelen van in: het boek sluit goed aan bij de hoorcollegestof en de uitleg sluit goed aan bij het boek. Er is echter een groot nadeel: bij een herdruk van het boek moeten studenten plotseling nieuwe boeken kopen, terwijl de wijzigingen minimaal zijn. De Vrije Student plaatst hier vraagtekens bij: is dit soms bedoeld voor extra inkomen van de docent?\r\n\r\nOm die reden eist De Vrije Student dat wanneer boeken van de hoorcollegedocent zelf gebruikt worden, er een overzicht moet komen van wijzigingen van de vorige en huidige druk, bijvoorbeeld het hernummeren van hoofdstukken of welke begrippen aangevuld of aangepast zijn.\r\n\r\nDaarnaast wil De Vrije Student dat docenten de royalty’s van eigen vakken voor eigen boeken terugstorten aan de universiteitskas. Zo kiezen de docenten voor het boek dat het beste past, niet waar zij het best aan verdienen.\r\n	boeken	7
30	7.3	Nakijken	De Vrije Student eist dat tentamens en essays binnen de termijn worden nagekeken. Te vaak lopen docenten nog uit, vaak om begrijpelijke redenen. Het is echter aan het universiteitsbestuur om te zorgen dat docenten weer op tijd kunnen nakijken. Hiervoor moet het bestuur op zoek naar creatieve oplossingen.\r\n\r\nWaar docenten te lang doen over het nakijken, worden studenten beloond met een halve punt extra op het eindcijfer, per week, afgerond omhoog. Dit moet als prikkel dienen om de grootschalige problematiek aan te pakken.\r\n	nakijken	7
31	7.4	Inhalen en herkansen	De Vrije Student vindt dat iedere student recht heeft op een tweede kans. Indien een student de eerste kans moet missen door persoonlijke omstandigheden, helpt de studiecoach voor een oplossing op maat. Uitgangspunt is daarbij dat studenten alleen door nalatigheid en luiheid de mogelijkheid op een tweede kans verspelen.	inhalen-en-herkansen	7
32	7.5	Fraude en plagiaat	De Vrije Student vindt dat strenge regels tegen fraude en plagiaat op zijn plek zijn, maar deze regels moeten rechtvaardig zijn. Studenten moeten goed worden voorgelicht zodat zij weten waar de grens ligt. Straffen omdat iemand per ongeluk plagieert, is onrechtvaardig. De regels moeten dus duidelijk en helder zijn.\r\n\r\nDe Vrije Student vindt ook dat de regels eenduidig moeten zijn. Nog al te vaak verschillen de regels niet alleen per faculteit of opleiding, maar ook per vak. Studenten moeten universiteitsbreed weten waar ze aan toe zijn. Daarom pleit De Vrije Student voor eenduidige regels over tentamens, fraude en plagiaat. Voor verwarring is aan de UvA geen plaats.\r\n	fraude-en-plagiaat	7
33	7.6	Examencommissie	Omdat de impact die beslissingen van de Examencommissie groot kunnen zijn, tot het missen van het BSA aan toe, eist De Vrije Student dat de commissie goed bereikbaar en toegankelijk is. Termijnen moeten duidelijk worden gecommuniceerd en ook vanuit de kant van de Examencommissie worden nageleefd. Een besluit dat te laat wordt genomen of gecommuniceerd, wordt wat De Vrije Student betreft vernietigd in het voordeel van de student.\r\n\r\nDe studiecoach die De Vrije Student voorstelt, krijgt een belangrijke rol in het contact met de Examencommissie. De student kan samen met zijn of haar persoonlijke studiecoach met de Examencommissie communiceren. De lijntjes worden op die manier zo kort mogelijk gehouden.\r\n\r\nDe Vrije Student is voorstander van onafhankelijke rechtspraak, ook op het niveau van de universiteit. Het komt op de UvA nog al te vaak voor dat een docent die betrokken is bij het geschil, bijvoorbeeld een docent van het betreffende vak, meepraat in de examencommissie. De Vrije Student vindt dat daar een einde aan moet komen: docenten moeten onafhankelijk zijn en de samenstelling van de Commissie moet steeds zo worden gekozen, dat docenten geen betrokkenheid hebben bij dit specifieke geschil.\r\n	examencommissie	7
34	1.1	Persoonlijk studieadvies	Door het in beton gegoten bindend studieadvies (BSA) op de universiteiten wordt de ontplooiing van studenten geheel geremd. Door het verplichte aantal te halen studiepunten wordt het voor beginnende studenten erg moeilijk gemaakt om zich extracurriculair te ontplooien. Daarnaast is de dispensatieregeling nu te summier. Het voorstel van De Vrije Student voor een persoonlijke regeling schept veel meer duidelijkheid richting de student. Hij kan ruim op tijd aangeven hoe de situatie is en weet hierdoor of er een uitzonderingsregeling in werking kan treden. \r\n\r\nDe Vrije Student is klaar met het BSA en eist een persoonlijk studieadvies met persoonlijke begeleiding. Het team van studieadviseurs wordt omgeschoold en uitgebreid tot studiecoach. Iedere student krijgt een persoonlijke coach. Met deze studiecoach wordt een persoonlijk plan opgesteld. Zo kan het voorkomen worden dat iemand die in het eerste jaar dankzij nevenactiviteiten minder studiepunten haalt, direct moet stoppen met zijn studie.\r\n\r\nNatuurlijk blijft de hardheidsclausule bestaan. Stel dat een student naast zijn bestuursfunctie afspreekt dat hij 30 van de 60 studiepunten haalt in zijn eerste jaar en dat compenseert door in zijn tweede jaar 75 studiepunten te halen, maar er door legitieme redenen niet aan deze eerdere afspraak voldaan kan worden, kan in overeenstemming met de examencommissie anders besloten worden. \r\n	persoonlijk-studieadvies	10
35	1.2	Van studieadviseur naar studiecoach	De studiecoach is een vast aanspreekpunt van de student, kent de omstandigheden en speelt daarop in. De Vrije Student gaat van nummer naar individu. De persoonlijke afspraken zijn uiteraard niet vrijblijvend: langstuderen vanwege ontplooiing moet kunnen, langstuderen met een PlayStation-controller in de hand niet. Daarnaast behoudt de studiecoach de mogelijkheid om na het eerste jaar het gesprek aan te gaan over de juistheid van de studiekeuze. Het aantal studiepunten mag echter nooit meer leidend zijn, maar de omstandigheden moeten dat zijn. De studiecoach heeft zelf de bevoegdheid beslissingen over dit soort zaken te nemen: het is dus niet alleen een adviseur, maar ook iemand die de knoop door kan hakken. Uiteraard moet er tegen zulke beslissingen wel een beroep open staan.\r\n\r\nNatuurlijk is een studiecoach bereikbaar tijdens de vaste momenten voor gesprekken, maar ook telefonisch, op afspraak en via een spreekuur. Wat De Vrije Student betreft heeft een studiecoach elke dag een inloopspreekuur om zijn vaste studenten te woord te staan. Dat de studiecoach zo bereikbaar mogelijk moet zijn, is essentieel. \r\n\r\nDe studiecoaches krijgen daarnaast taken als het gaat over studieplanning, afspraken met de examencommissie et cetera. Één student krijgt één studiecoach, zodat de student die meerdere opleidingen doet ook bij zijn coach overal mee terecht kan. Een personele uitbreiding van het team moet ervoor zorgen dat de werkdruk van de studiecoaches niet toeneemt.\r\n\r\nOverigens kiest De Vrije Student voor fulltime aangestelde studiecoaches: het is nadrukkelijk niet de bedoeling dat docenten het “erbij” doen. Studiecoaches zijn daartoe opgeleid en beschouwen hun advies op maat aan de student als een leuke uitdaging en als vakwerk.\r\n\r\nOm de studiecoach te ondersteunen en waar nodig te ontlasten, kunnen zij ouderejaarsstudenten instellen als studentmentoren. Zij kunnen eenvoudige vragen beantwoorden en de student wegwijs maken in de regelingen van de Radboud Universiteit. \r\n	van-studieadviseur-naar-studiecoach	10
36	2.1	Vakken digitaal volgen	De Vrije Student verwacht niet langer van iedereen dat studenten onderwijs volgen op een vastgestelde tijd en plaats. Dat systeem is achterhaald en niet meer van deze digitale tijd.\r\n\r\nIn de eerste plaats moeten studenten volwaardige vakken digitaal kunnen volgen. Dat betekent dat de Radboud Universiteit vakken opstelt aan de hand van collegereeksen op internet. Die colleges zijn al deels gratis beschikbaar op Coursera en EdX, daarnaast kan de Radboud Universiteit ze op soortgelijke programma’s inkopen. \r\n\r\nDe hoofdtaak van de Radboud Universiteit blijft het onderwijs in hoorcolleges,  werkgroepen en practica, maar volgens De Vrije Student moet het mogelijk zijn dat studenten een deel van hun onderwijs thuis volgen. Hierdoor kunnen studenten in Nederland leren van de beste professoren  uit topuniversiteiten, overal ter wereld. Topinstellingen zoals Harvard en Stanford zijn al op deze platforms aangesloten, de colleges al voor iedereen te bekijken. \r\n\r\nDe Vrije Student wil dat de Radboud Universiteit haar expertise gebruikt om in huis tentamens bij deze collegereeksen te ontwerpen, waarmee een volwaardig cijfer gehaald kan worden voor zo’n collegereeks. Indien gewenst kunnen faculteiten natuurlijk ook (facultatief) werkgroeponderwijs organiseren.\r\n	vakken-digitaal-volgen2	11
37	2.2	Capita Selecta	De Vrije Student wil graag dat er geld vrijkomt voor zogeheten Capita Selecta. Dat zijn vakken van een zelf te kiezen aantal studiepunten. Om die in te vullen, kies je zelf een onderwerp en ga je naar een docent die kennis heeft van dat onderwerp. Vervolgens kan die docent stof voor schrijven en een bijbehorend tentamen en/of opdracht ontwerpen. 	capita-selecta	11
38	2.3	Colleges op YouTube	De Vrije Student wil daarnaast dat alle colleges worden opgenomen en online worden gezet, op intranet en uiteindelijk, als dit mogelijk is wat betreft bijvoorbeeld auteursrechten, ook via YouTube. Zo kunnen alle studenten profiteren van alle colleges en wordt deze kennis ook gedeeld tot ver buiten de universiteitsmuren.\r\n\r\nDit maakt het voor studenten makkelijker om hun studentenleven flexibel in te richten om bijvoorbeeld bestuursfuncties, bijbanen of vrijwilligerswerk heen. Studenten kunnen ook gemakkelijk een extra bijvak volgen via YouTube, waarbij zij zelf beslissen of ze wel of niet deelnamen aan een eventueel aangeboden tentamen. Is het volgen van een collegereeks van een vak buiten de studie om niet ook zonder het tentamen waardevol voor student én samenleving?\r\n\r\nOok voor de docenten is dit een verbetering. Die hoeven de tijd, die hoorcollegedocenten vaak liever in onderzoek steken, niet meer te gebruiken om twee dezelfde hoorcolleges na elkaar te geven. Als er kleinere groepen studenten in de zaal zitten, kunnen de studenten die er wel zijn, weer actief meedoen met het college. Er komt ruimte voor vragen en interactiviteit, in plaats van voor Facebook en Twitter op het laptopscherm.\r\n	colleges-op-youtube2	11
39	2.4	Digital Student Program	Om de plannen voor digitale colleges extra kracht bij te zetten, kiest De Vrije Student voor een Digital Student Program, parallel aan de eigen studie. Omdat colleges breed worden gepubliceerd kunnen alle studenten ook hoorcolleges van buiten hun vakken volgen. Zij moeten zichzelf ook voor de tentamens van deze vakken kunnen inschrijven.\r\n\r\nZo is het mogelijk om vanuit huis extra vakken van een andere studie te doen en een volwaardig digitale, tweede studie te volgen. Deze wegen volledig mee en moeten ook op de definitieve cijferlijst worden weergegeven.\r\n	digital-student-program2	11
40	2.5	Radboudnet, Osiris, Blackboard et cetera	Het spreekt natuurlijk voor zich dat de digitale omgeving van de Radboud Universiteit van uitstekende kwaliteit moet zijn. Uiteindelijk wil De Vrije Student één duidelijk programma waarmee alles vanuit huis geregeld kan worden.	radboudnet-osiris-blackboard-et-cetera	11
41	3.1	Iedere opleiding een honourstraject met meerwaarde	De Vrije Student wil dat goede studenten hun talenten optimaal kunnen uiten. Dit betekent in de eerste plaats dat alle opleidingen een passend honourstraject aanbieden. Binnen dit traject krijgen studenten onderwijs dat zich in kwaliteit kan meten aan de wereldtop. De Vrije Student is tegen het verhoogd collegegeldtarief voor honoursstudenten: selectiecriteria mogen alleen over de kwaliteiten van de student gaan.\r\n\r\nZo’n honourstraject moet natuurlijk meerwaarde hebben voor de student. Het moet een verbredend en/of een verdiepend element hebben. De programma’s moeten de student dan ook echt uitdagen; de hoge kwaliteit van dit onderwijs moet goed gecontroleerd worden. Ook moet het verloop van de procedure van de verschillende programma’s duidelijk naar alle studenten gecommuniceerd worden. \r\n	iedere-opleiding-een-honourstraject-met-meerwaarde2	12
42	3.2	Ambitieuze mentaliteit	De Vrije Student eist een mentaliteitsverandering als het gaat om actieve studenten. Studenten moeten niet alleen in de collegezalen, maar ook buiten de universiteitsmuren kunnen excelleren. De universiteit moet weer trots zijn op de student die zich buiten de universiteit verder wil ontwikkelen en moet dit soort activiteiten niet belemmeren. De aanwezigheidsplicht is hierbij een voorbeeld: dit kan een last zijn voor een student die in zijn of haar vrije tijd bijvoorbeeld in het bestuur van een vereniging zit. \r\nDe studiecoaches spelen hierin een belangrijke rol. De Vrije Student ziet hen als degenen die het mogelijk moeten maken dat de student zich kan ontplooien en kan excelleren. Hierbij zijn goede afspraken, ruimte voor de student en vrijheid in het curriculum noodzakelijk.\r\n	ambitieuze-mentaliteit2	12
43	3.3	Ondernemende studenten	De Vrije Student gelooft in de geest van zelfontplooiing in het ondernemende karakter van de student. Vandaar dat we van mening zijn dat ondernemende studenten moeten worden ontzien. Zij kunnen op dezelfde manier geholpen worden als andere studieverenigingen wanneer zij bijvoorbeeld makkelijk kamers kunnen reserveren om klanten/contacten te ontvangen. Dit geldt natuurlijk alleen wanneer de student aan kan geven dat zijn onderneming aansluit bij de opleiding. Dit ter beoordeling door de studiecoach.\r\n\r\nDaarnaast moet de regeling voor toptalenten in sport en kunst worden uitgebreid naar de regeling voor toptalenten in sport, kunst en ondernemerschap. Zo krijgen ambitieuze ondernemende toptalenten, net zoals sporters en kunstenaren, de mogelijkheid om flexibele onderwijsmogelijkheden en ondersteuning te krijgen.\r\n	ondernemende-studenten	12
44	3.4	Soepele aanwezigheidsplicht	De Vrije Student wil naar een universiteit met een soepele aanwezigheidsplicht. De Vrije Student ziet er het belang van in om werkgroepen in bepaalde gevallen verplicht te stellen, omdat de onderwijsvorm zich leent voor diepere discussies over de stof. Het is voor studenten ook goed dat zij dan niet in lege zalen zitten, en dat hun studiegenoten op komen dagen. Een discussie in je eentje of met z’n drieën is immers zinloos. Wanneer werkgroepen verplicht gesteld worden, moet dit worden beargumenteerd aan de deelnemende studenten en aan de opleidingscommissie.\r\n\r\nDe Vrije Student vindt wel dat de consequentie van het niet voldoen aan de aanwezigheidsplicht, laag moet zijn. Studenten moeten bijvoorbeeld een bepaald aantal werkgroepen kunnen missen, bij twee of meer werkgroepen mogen studenten hooguit het recht op de herkansing verspelen – iedereen heeft dan altijd de mogelijkheid een afweging te maken of die de werkgroepen wel of niet nodig heeft om het vak te halen. En iedere student moet het recht hebben een bepaald tentamen te maken.\r\n\r\nAls het door de planning eens niet mogelijk is om werkgroepen bij te wonen, moet het gemakkelijk zijn aan te haken bij een andere werkgroep en toestemming te krijgen van de eigen werkgroepdocent. Zo komt door de aanwezigheidsplicht niemand in de knoop.\r\n\r\nUiteraard is De Vrije Student tegen aanwezigheidsplicht bij hoorcolleges.\r\n	soepele-aanwezigheidsplicht2	12
45	3.5	Échte keuzeruime	De Vrije Student wil dat keuzevakken echt vrij te kiezen zijn: digitale vakken, vakken aan universiteiten in binnen- en buitenland, alles moet mogelijk zijn. Voor studenten die toch op zoek zijn naar verdieping binnen hun eigen opleiding, moeten geschikte minors beschikbaar zijn\r\n\r\nEr moet binnen de eigen opleiding een kader zijn waarin studenten gemakkelijk naar het buitenland kunnen. Dit betekent niet dat iets hoeft te veranderen qua keuzeruimte of karakteristieke opleidingsvakken, maar wel dat er in dat kader studenten de vakken die ze daar moeten volgen kunnen vervangen door andere vakken in het buitenland. Op deze manier kunnen studenten gemakkelijker naar het buitenland én kunnen studenten \r\n\r\nDe Vrije Student zet er nadrukkelijk op in dat er gemakkelijk vakken gevolgd moeten worden aan andere universiteiten. De Radboud Universiteit moet zich ervoor inspannen dat universiteiten naar één gezamenlijk systeem toewerken waarbij studenten eenvoudig vakken overal in het land (en daarbuiten) kunnen volgen. Hier zal De Vrije Student ook haar landelijke netwerk voor inzetten.\r\n	echte-keuzeruime	12
46	3.6	Geen maximumtermijn	Over het leenstelsel zelf heeft De Vrije Student geen mening, omdat dat geen zaak van de Universitaire Studentenraad is. Maar de consequentie is duidelijk: langer doorstuderen kost de student geld. Andere impulsen die studenten dwingen sneller te studeren, moeten daarom afgeschaft worden, nu extra studiejaren een investering zijn waar studenten bewust over na zullen denken. De Vrije Student verzet zich daarom tegen regelingen zoals dat tentamencijfers na bepaalde tijd vervallen of andere regelingen die een maximumtermijn aan de bachelor koppelen.	geen-maximumtermijn2	12
47	4.1	Soepel studeren in het buitenland	Een van de belangrijkste pluspunten die een starter op de arbeidsmarkt op zijn cv kan plaatsen, is internationale ervaring. De Vrije Student vindt dan ook dat de Radboud Universiteit de mogelijkheden voor internationale ervaring volop moet bieden. Niet alleen door contacten met universiteiten versterken, maar ook door zich flexibel op te stellen naar een student met internationale ambities. Wanneer bij een student vakken verplaatst of uitgesteld moeten worden, moet dit mogelijk zijn. Daarnaast moeten eventuele eisen aan studeren in het buitenland ruim op tijd en helder gecommuniceerd worden.\r\n\r\nOp iedere universiteit moet een international office worden ingesteld. De moet hier een sleutelrol in spelen, in samenwerking met de uitgebreide kantoren van de studiecoaches waar De Vrije Student voor staat. Deze moeten goed vindbaar zijn en moeten inloopspreekuren houden om studenten met internationale ambities op het goede spoor te zetten.\r\n\r\nIn overleg met de studiecoach, het international office en uiteraard de student moeten ruimte voor internationale ambities worden gemaakt, ook als daar vakken voor uitgesteld moeten worden. Dit is volgens De Vrije Student een kwestie van maatwerk. Starre reglementen mogen hierin niet leidend zijn.\r\n	soepel-studeren-het-buitenland	13
63	8.3	Catering: het facilitair bedrijf	De Vrije Student vindt dat er nog een keer onderzoek moet worden gedaan naar het functioneren van het facilitair bedrijf. Er is weinig gebeurd met een aantal van de aanbevelingen uit een rapportage van de USR in 2013. De Refter sluit vrijdags al om 2 uur, de prijs voor een warme maaltijd is alleen maar gestegen en vele andere producten zijn nog steeds vele malen duurder dan bijvoorbeeld op de HAN. De Vrije Student vindt dit onacceptabel. \r\n\r\nEr moet nog eens grondig worden gekeken naar andere universiteiten en de manier waarop zij hun catering organiseren. In eerste instantie moet worden gekeken naar mogelijkheden om de catering in eigen beheer te houden, maar er moet zeker ook nog een keer gekeken worden naar manieren om de catering uit te besteden. Dit zou bijvoorbeeld ook kunnen door een ruimte te creëren waar verschillende bedrijven zich kunnen vestigen, zodat er een concurrentieprikkel blijft. Het monopolie dat het facilitair bedrijf heeft, mede door studentenkantines zoals in het Huygensgebouw, is al verleden tijd.\r\n	catering-het-facilitair-bedrijf	17
50	6.1	Medezeggenschap decentraal	De studentenraden van een universiteit zijn relatief klein en bevinden zich ver weg. Bovendien volgen maar weinig raadsleden nog vakken tijdens het jaar in de studentenraad. Voor de gewone student is het daarom een onbekend en ver orgaan, terwijl iedereen wel iemand kent in een faculteitsraad of opleidingscommissie.\r\n\r\nDe Vrije Student wil medezeggenschap dicht bij de student brengen en helder en toegankelijk maken. Daarom moeten lagere medezeggenschapsorganen, zoals faculteitsraden en opleidingscommissies, een grotere invloed krijgen.\r\n\r\nOm de opleidingscommissies actief en scherp te houden, dienen zij ieder jaar een advies te schrijven over de structuur van de opleiding: zowel vakinhoudelijk en qua roostering, onafhankelijk van het advies over de Onderwijs- en examenregeling.\r\n	medezeggenschap-decentraal2	15
51	6.2	Bevordering bekendheid: schermen	Schermen op ooghoogte bij de ingangen van alle faculteiten met een suggestie-box. Deze hebben splitscreen met informatie over aan de ene kant de FSR en aan de andere kant de USR. Op deze manier is wat de medezeggenschap op hoger niveau doet altijd zichtbaar. Op het scherm zie je de agenda, wat er speelt, welke zaken er aan zitten te komen op de jaarcirkel.\r\n\r\nDe schermen voor de bussen moeten opnieuw geëvalueerd worden en wanneer dit mogelijk is hergebruikt worden voor de medezeggenschap. Met een hoger budget zou dit ook voor de OLC’s kunnen voor iedere opleiding in de ruimten van de studieverenigingen.\r\n	bevordering-bekendheid-schermen	15
52	6.3	Democratie	De Vrije Student verzet zich tegen het beeld van De Nieuwe Universiteit dat de Radboud Universiteit niet democratisch is. In plaats van het eisen van meer rechten, moeten de bestaande rechten beter worden benut en opgeëist. Zo krijgt de USR instemmingsrecht over hoofdlijnen van de begroting. De Vrije Student is niet bang om met haar vuist op de vergadertafel te slaan.\r\n\r\nDe bezetting van een universiteitspand is niet het middel dat De Vrije Student voorstaat, maar De Vrije Student gaat de confrontatie zeker niet uit de weg. De Vrije Student is niet bang voor de consequenties en schuwt het conflict zeker niet.\r\n\r\nDaarnaast is De Vrije Student tegen democratisch gekozen bestuurders. Bestuurders moeten vooral goed kunnen besturen en wat De Vrije Student betreft is de universiteit goed in staat nieuwe kandidaten zelf te beoordelen. Dat betekent niet dat de zittende bestuurders perfect zijn en klakkeloos moeten worden opgevolgd, maar De Vrije Student gelooft niet dat een schijndemocratie de oplossing is. Daarnaast keert De Vrije Student zich tegen een studentlid in het College van Bestuur. Een student bij het College van Bestuur verstoort het dualistische karakter van de medezeggenschap. Dat betekent dat een studentlid een stok van het bestuur kan worden om mee te slaan. De Vrije Student past daarvoor, maar wil huidige mogelijkheden beter gebruiken.\r\n	democratie2	15
53	6.4	Allocatiemode	Wat het allocatiemodel betreft, moet zich nog het een en ander uitkristalliseren. Het betekent dat de Universitaire Studentenraad op hoofdlijnen mag meebeslissen over de begroting. Maar wat zijn hoofdlijnen en wat niet? De Vrije Student gaat de confrontatie met het College van Bestuur niet uit de weg en is bereid tot het uiterste te gaan om het beste voor de studenten te krijgen of om op zijn minst duidelijkheid te krijgen. 	allocatiemode	15
54	6.5	Landelijke Geschillencommissie	Van de huidige geschillenprocedure is nog nooit gebruik gemaakt. De Radboud Universiteit moet zich daarom aansluiten bij de Landelijke Commissie voor Geschillen medezeggenschap Hoger Onderwijs. Die doet uitspraken als er zich conflicten voordoen in de medezeggenschap, waar beroep tegen open staat bij het College van Beroep voor het Hoger Onderwijs. 	landelijke-geschillencommissie	15
55	7.1	toetsing en tentamens	De Vrije Student vindt duidelijkheid en eenduidigheid van regels over herkansing, fraude, plagiaat en tentamenregelingen belangrijk. Daarom moet er goed gekeken worden naar de eenduidigheid van het Onderwijs- en Examenreglement op de universiteit. De medezeggenschapsorganen, centraal en decentraal, moeten allemaal bij de totstandkoming hiervan betrokken zijn. 	toetsing-en-tentamens	16
56	7.2	Boeken	Studenten die een vak over doen lopen soms tegen problemen aan als zij een nieuwe druk van een boek moeten kopen, dat zij vorig jaar al hebben aangeschaft. Waar mogelijk – en dat is bijvoorbeeld mogelijk als de docent zelf betrokken was bij het schrijven van het boek -  moet een overzicht komen van veranderingen van de nieuwe druk ten opzichte van de oude druk. Als het alleen maar omnummeringen betreft, of het veranderen van zinsconstructies, kunnen studenten die een vak over doen  alsnog verder met de oude druk. Dit kan zomaar zestig tot honderd euro schelen per vak.\r\n\r\nDe Vrije Student gelooft stellig in de taak van de universiteit om kritische, ruimdenkende en veelzijdige studenten op te leiden. Daarbij hoort een omgeving waarin de student leert om alles te bevragen wat hij voorgeschoteld krijgt. In de wetenschappelijke wereld is het wenselijk om onderzoek te verrichten en te publiceren. De Vrije Student – en hopelijk de rest van studerend Nederland - juicht dit van harte toe. Wij willen ons niet bemoeien met wat de docent schrijft, maar wat hij de student doceert. Veelgehoorde ergernissen op de universiteit zijn docenten die studenten verplichten hun eigen boek aan te laten schaffen voor gebruik tijdens de lessen.\r\n\r\nNu is dit an sich geen probleem. De ergernis zit hem erin dat het pas problematisch wordt wanneer dezelfde docent het jaar daarop een nieuw boek verplicht stelt, dat inhoudelijk niets is gewijzigd ten opzichte van het vorige, behalve druk, en een andere nummering van de hoofdstukken. Dit ziet De Vrije Student als onwenselijk en niet bevorderend voor het academisch klimaat. De docent dient zijn onderzoek te verrichten naar het verder brengen van de wetenschap. Dit beeld wordt verzwakt door het verplicht stellen van je eigen literatuur. Het wekt de suggestie op van andere motieven dan louter de academische.\r\n\r\nDe Vrije Student pleit voor het aan banden leggen van de verplichtstelling van de eigen literatuur van docenten, tenzij zij aan kunnen tonen dat hun boek belangrijke literatuur bevat die aanvullend is voor de student, die nergens anders verkrijgbaar is. Dit dienen zij in overleg met de opleidingscommissie te bespreken.\r\n\r\nIdealiter zou De Vrije Student zien dat een docent een boek verplicht behandeld waar hij/zij het mee oneens is. Reden hiervoor is het stimuleren van het kritische denkgedrag. De student dient stof van meerdere kanten te kunnen analyseren en voor- en tegenargumenten mee te krijgen voor het aanhangen van een bepaald gedachtegoed. Wanneer een docent jaar in- jaar uit zijn eigen boek aan het herkauwen is, ziet De Vrije Student daar geen ruimte voor. Wij pleiten voor een grondige heroverweging van hoe de docenten op de universiteit omgaan met de literatuurlijsten en vragen om een redelijke verantwoording tegenover de student.\r\n	boeken2	16
61	8.1	Zalen	De Vrije Student wil stopcontacten in hoorcollegezalen en werkgroepruimtes. Daarnaast eist De Vrije Student goede hulpmiddelen voor docenten, zoals werkende beamers en geluidsapparatuur.	zalen	17
67	5.1	Investeren in onderwijs	Het stellen dat universiteitsgeld aan verbetering van het onderwijs besteed moet worden, lijkt het intrappen van een open deur. In de realiteit moeten studenten binnen de medezeggenschap echter nog opstaan voor dit standpunt. De Vrije Student wil dat het extra geld dat door het leenstelsel is vrijgekomen, besteed wordt aan onderwijs.\r\n\r\n\r\n\r\nGeld van de universiteit hoort thuis bij het onderwijs. De Vrije Student staat daarom voor investeringen in kleine werkgroepen. Het zou op de Radboud Universiteit al een verbetering zijn als er nooit meer studenten dan stoelen in de zaal hoeven, maar het streven is een werkgroep van vijftien, tot hooguit 25 studenten. Daarnaast wil De Vrije Student investeren in bijscholing van de docenten. Zij moeten effectief worden getraind, vakinhoudelijk en in didactiek.\r\n\r\n\r\n\r\nDoor te investeren in onderwijskwaliteit en andere taken niet te vergroten, kiest De Vrije Student voor een hoog rendement – niet voor de universiteit, maar voor de student. De universiteit moet op de eerste plaats alle aandacht schenken aan uitstekend onderwijs en daarna pas gaan kijken naar zaken die niet primair zijn.	investeren-onderwijs-nijmegen	19
68	5.2	Goed gebruik van subsidies	Wat betreft subsidies voor studentenorganisaties: extra geld moet primair naar onderwijskwaliteit gaan en pas in de tweede instantie naar andersoortige studenteninitiatieven. De ruimte voor ontplooiing wordt wat De Vrije Student gezocht in een flexibel curriculum, in digitalisering en in een mentaliteitsverandering. De ontplooiing hoeft wat De Vrije Student betreft niet al te veel te worden gesubsidieerd.\r\n\r\n\r\n\r\nVan de initiatieven die subsidie ontvangen, moet de effectiviteit en doelmatigheid worden verantwoord. De universiteit subsidieert wat De Vrije Student betreft alleen nog maar de student die er gewoon voor gaat. Borrels met gratis bier of shotjesfeesten moeten maar van de contributie of sponsorgeld betaald worden.\r\n\r\n\r\n\r\nBesturen doe je niet voor het geld, maar omdat het leuk, leerzaam en goed voor je toekomst is. De Vrije Student kiest niet voor een bestuurdersbeurs waar je per se wat aan overhoudt, maar voor eentje die de onkosten moet dekken.\r\n\r\n\r\n\r\nDoor te investeren in onderwijskwaliteit en andere taken niet te vergroten, kiest De Vrije Student voor een hoog rendement – niet voor de universiteit, maar voor de student. De universiteit moet op de eerste plaats alle aandacht schenken aan uitstekend onderwijs en daarna pas gaan kijken naar zaken die niet primair zijn.	goed-gebruik-van-subsidies-nijmegen	19
\.


--
-- Name: cities_news_punten_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_punten_id_seq', 68, true);


--
-- Data for Name: cities_news_standpunten; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_standpunten (id, kopje, nummer) FROM stdin;
2	Studieadvies: van bindend naar persoonlijk	2
3	Ruimte voor ontplooiing	3
4	Een internationale UvA	4
6	Over medezeggenschap	6
1	Een digitale UvA	1
7	Over boeken, toetsing en tentamens	7
8	Huisvesting	8
9	Beloftes over De Vrije Student	9
10	Studieadvies: van confectie naar maatwerk	1
11	Een digitale Radboud Universiteit	2
12	Ruimte voor ontplooiing	3
13	Een internationale Radboud Universiteit	4
15	Over medezeggenschap	6
16	Over boeken, toetsing en tentamens	7
17	Studieplekken en catering	8
18	Beloftes van De Vrije Student	9
5	Rendement voor de student	5
19	Rendement voor de student	5
\.


--
-- Data for Name: cities_news_standpunten_city; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_standpunten_city (id, standpunten_id, city_id) FROM stdin;
36	2	2
37	3	2
38	4	2
40	6	2
41	1	2
45	7	2
46	8	1
47	8	2
48	9	1
49	9	2
50	10	3
51	11	3
52	12	3
53	13	3
57	15	3
58	16	3
59	17	3
60	18	3
61	5	2
62	19	3
\.


--
-- Name: cities_news_standpunten_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_standpunten_city_id_seq', 62, true);


--
-- Name: cities_news_standpunten_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_standpunten_id_seq', 19, true);


--
-- Data for Name: cities_news_tag; Type: TABLE DATA; Schema: public; Owner: django
--

COPY cities_news_tag (id, word) FROM stdin;
1	dvs
2	Rosa
3	Lijsttrekker
4	Folia Web
5	kuitenbijters
6	Grootste lijst
7	Verkiezingen
\.


--
-- Name: cities_news_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('cities_news_tag_id_seq', 7, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
7	2015-04-21 23:45:30.854-04	2	Amsterdam	1		7	1
8	2015-04-21 23:45:38.716443-04	3	Nijmegen	1		7	1
9	2015-04-22 00:03:37.251603-04	1	dvs	1		8	1
10	2015-04-22 00:03:42.111533-04	1	De Vrije Student gaat universiteitsraad bestormen	1		9	1
11	2015-04-22 00:04:07.706706-04	1	De Vrije Student gaat universiteitsraad bestormen	2	No fields changed.	9	1
12	2015-04-22 00:33:21.720694-04	1	De Vrije Student gaat universiteitsraad bestormen	2	Changed image.	9	1
13	2015-04-22 01:30:40.305778-04	1	De Vrije Student gaat universiteitsraad bestormen	2	Changed image.	9	1
14	2015-04-22 01:40:39.397099-04	2	Amsterdam	2	Changed video and video_url.	7	1
15	2015-04-22 01:40:47.300899-04	3	Nijmegen	2	Changed video and video_url.	7	1
16	2015-04-22 02:00:46.874867-04	1	De Vrije Student gaat universiteitsraad bestormen	2	Changed image.	9	1
17	2015-04-22 02:03:24.190848-04	2	Lars Benthin lijsttrekker De Vrije Student	1		9	1
18	2015-04-22 02:07:43.142544-04	3	Lars Benthin wil frisse wind laten waaien door med	1		9	1
19	2015-04-22 02:13:11.410209-04	3	Lars Benthin wil frisse wind laten waaien door med	3		9	1
20	2015-04-22 02:18:40.5872-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	1		9	1
21	2015-04-22 02:35:59.487746-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed text.	9	1
22	2015-04-22 02:36:46.442143-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed text.	9	1
23	2015-04-22 05:24:00.310433-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed image.	9	1
24	2015-04-22 05:29:18.30186-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed image.	9	1
25	2015-04-22 07:05:07.407622-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed image.	9	1
26	2015-04-22 07:05:55.65806-04	2	Lars Benthin lijsttrekker De Vrije Student	2	Changed image.	9	1
27	2015-04-22 07:06:31.41257-04	1	De Vrije Student gaat universiteitsraad bestormen	2	Changed image.	9	1
28	2015-04-22 08:28:25.499379-04	3	Nijmegen	2	Changed video.	7	1
29	2015-04-22 08:28:31.720933-04	2	Amsterdam	2	Changed video.	7	1
30	2015-04-23 20:55:51.982575-04	2	Amsterdam	2	Changed bezoek_adres.	7	1
31	2015-04-23 20:56:03.777178-04	1	Rotterdam	2	Changed bezoek_adres.	7	1
32	2015-04-23 20:56:23.928911-04	3	Nijmegen	2	Changed bezoek_adres.	7	1
33	2015-04-23 20:57:07.617533-04	1	Rotterdam	2	Changed twitter, facebook and youtube.	7	1
34	2015-04-24 08:13:55.750934-04	5	De Vrije Student gaat de universiteitsraad bestormen	1		9	1
35	2015-04-24 08:14:35.421722-04	5	De Vrije Student gaat de universiteitsraad bestormen	2	Changed image.	9	1
36	2015-04-24 08:15:05.694177-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed city.	9	1
37	2015-04-24 08:15:34.656651-04	2	Rosa	1		8	1
38	2015-04-24 08:15:44.792205-04	3	Lijsttrekker	1		8	1
39	2015-04-24 08:29:32.782276-04	6	Lijsttrekker De Vrije Student bekend: stem Rosa!	1		9	1
40	2015-04-24 08:30:53.801275-04	4	Folia Web	1		8	1
41	2015-04-24 08:31:04.80564-04	5	kuitenbijters	1		8	1
42	2015-04-24 08:33:02.6454-04	7	”In de medezeggenschap moeten kuitenbijters zitten”	1		9	1
43	2015-04-24 08:34:11.640141-04	6	Grootste lijst	1		8	1
44	2015-04-24 08:34:21.577938-04	7	Verkiezingen	1		8	1
45	2015-04-24 08:37:16.40934-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	1		9	1
46	2015-04-24 08:38:28.827224-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	2	Changed image.	9	1
47	2015-04-24 08:45:14.489835-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	2	Changed image.	9	1
48	2015-04-24 08:47:53.831525-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	2	Changed image.	9	1
49	2015-04-24 09:04:34.947444-04	2	Rosa d’Adelhart Toorop	1		10	1
50	2015-04-24 09:04:53.644449-04	1	Lars Benthin	2	Changed email.	10	1
51	2015-04-24 09:06:57.722259-04	3	Sven Butter	1		10	1
52	2015-04-24 09:07:46.409371-04	4	Splinter Chabot	1		10	1
53	2015-04-24 09:08:31.597615-04	5	Dave Wai	1		10	1
54	2015-04-24 09:09:35.123427-04	6	Anouk van Brug	1		10	1
55	2015-04-24 09:17:37.718546-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	2	Changed image.	9	1
56	2015-04-24 09:18:08.107158-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	2	Changed image.	9	1
57	2015-04-24 09:22:30.318845-04	5	Nieuwe studentenpartij gaat universiteitsraad bestormen	2	Changed title and slug.	9	1
58	2015-04-25 05:55:46.337319-04	1	Een digitale universiteit	1		11	1
59	2015-04-25 05:56:03.432687-04	2	Studieadvies: van bindend naar persoonlijk	1		11	1
60	2015-04-25 05:56:26.384156-04	3	Ruimte voor ontplooiing	1		11	1
61	2015-04-25 05:56:34.421941-04	4	Grenzeloos studeren	1		11	1
62	2015-04-25 05:56:48.324514-04	5	Rendement voor de student	1		11	1
63	2015-04-25 05:57:04.755835-04	6	Over medezeggenschap	1		11	1
64	2015-04-25 05:57:22.027504-04	7	Over boeken, toetsing en tentamens	1		11	1
65	2015-04-25 05:57:37.791366-04	8	Huisvesting	1		11	1
66	2015-04-25 05:58:05.609595-04	9	Over De Vrije Student	1		11	1
67	2015-04-25 06:20:33.678486-04	1	Een digitale universiteit	2	No fields changed.	11	1
68	2015-04-25 06:29:03.775145-04	1	Een digitale universiteit	2	Added punten "Een digitale universiteit".	11	1
69	2015-04-25 06:31:29.208566-04	1	Een digitale universiteit	2	Changed title for punten "Vakken digitaal volgen".	11	1
70	2015-04-25 06:31:44.830842-04	1	Een digitale universiteit	2	Changed slug for punten "Vakken digitaal volgen".	11	1
71	2015-04-25 06:32:18.632618-04	1	Een digitale universiteit	2	Added punten "Colleges op YouTube".	11	1
72	2015-04-25 06:33:08.022674-04	1	Een digitale universiteit	2	Added punten "Digital Student Program". Changed text for punten "Vakken digitaal volgen". Changed text for punten "Colleges op YouTube".	11	1
73	2015-04-25 06:33:43.509716-04	1	Een digitale universiteit	2	Added punten "Intranet".	11	1
74	2015-04-25 06:34:22.012982-04	2	Studieadvies: van bindend naar persoonlijk	2	Added punten "Afschaffen BSA: naar een persoonlijk studieadvies".	11	1
75	2015-04-25 06:35:28.189513-04	2	Studieadvies: van bindend naar persoonlijk	2	Added punten "Van studieadviseur naar studiecoach". Changed nummer for punten "Afschaffen BSA: naar een persoonlijk studieadvies".	11	1
221	2015-05-12 14:54:26.4935-04	73	Sem van Maanen	1		10	1
223	2015-05-12 14:55:56.994136-04	75	Lars Dijkema	1		10	1
225	2015-05-12 14:56:56.426344-04	77	Stan Cortenbach	1		10	1
226	2015-05-12 14:57:21.62147-04	78	Regina Koonen	1		10	1
227	2015-05-12 14:57:44.918312-04	79	Karl Kouki	1		10	1
228	2015-05-12 14:58:57.514338-04	80	Jelle Beernink	1		10	1
76	2015-04-25 07:38:43.197636-04	3	Ruimte voor ontplooiing	2	Added punten "Iedere opleiding een honourstraject met meerwaarde". Added punten "Ambitieuze mentaliteit". Added punten "Soepele aanwezigheidsplicht". Added punten "Dertig ECTS echte keuzeruime". Added punten "Geen maximumtermijn".	11	1
77	2015-04-25 07:44:30.469286-04	4	Grenzeloos studeren	2	Added punten "Internationaal".	11	1
78	2015-04-25 07:45:27.60273-04	5	Rendement voor de student	2	Added punten "Investeren in onderwijs". Added punten "Goed gebruik van subsidies".	11	1
79	2015-04-25 07:47:08.480976-04	6	Over medezeggenschap	2	Added punten "Medezeggenschap decentraal". Added punten "Democratie".	11	1
80	2015-04-25 07:49:43.987073-04	7	Over boeken, toetsing en tentamens	2	Added punten "Boeken". Added punten "Nakijken". Added punten "Inhalen en herkansen". Added punten "Fraude en plagiaat". Added punten "Examencommissie".	11	1
81	2015-04-25 07:51:17.540453-04	8	Huisvesting	2	Added punten "Degelijke studeeromgeving". Added punten "Studieplekken".	11	1
82	2015-04-25 07:55:44.246421-04	9	Over De Vrije Student	2	Added punten "netwerk". Added punten "Landelijk netwerk". Added punten "Meldpunt".	11	1
83	2015-04-29 06:48:59.863201-04	1	Een digitale universiteit	2	Changed city.	11	1
84	2015-04-29 06:49:10.524121-04	2	Studieadvies: van bindend naar persoonlijk	2	Changed city.	11	1
85	2015-04-29 06:49:17.597386-04	3	Ruimte voor ontplooiing	2	Changed city.	11	1
86	2015-04-29 06:49:26.244865-04	4	Grenzeloos studeren	2	Changed city.	11	1
87	2015-04-29 06:49:39.370584-04	5	Rendement voor de student	2	Changed city.	11	1
88	2015-04-29 06:49:47.099404-04	6	Over medezeggenschap	2	Changed city.	11	1
89	2015-04-29 06:49:55.200586-04	7	Over boeken, toetsing en tentamens	2	Changed city.	11	1
90	2015-04-29 06:50:07.345767-04	8	Huisvesting	2	Changed city.	11	1
91	2015-04-29 06:50:16.222459-04	9	Over De Vrije Student	2	Changed city.	11	1
92	2015-05-02 08:20:04.622463-04	8	De Vrije Student doet met grootste lijst mee aan verkiezingen	2	Changed text.	9	1
93	2015-05-02 08:21:17.391936-04	7	”In de medezeggenschap moeten kuitenbijters zitten”	2	Changed text.	9	1
94	2015-05-03 09:58:40.21458-04	7	Julia Nijhoff	1		10	1
95	2015-05-03 09:59:06.307552-04	8	Ricardo Dias	1		10	1
96	2015-05-03 09:59:30.050784-04	9	Arthur Tomassen	1		10	1
97	2015-05-03 10:00:23.478764-04	10	Arend Griekspoor	1		10	1
98	2015-05-03 10:00:45.848972-04	11	Tim van Spanning	1		10	1
99	2015-05-03 10:01:15.428352-04	12	Nienke Vennik	1		10	1
100	2015-05-03 10:01:38.078258-04	13	Sophia Hankamp	1		10	1
101	2015-05-03 10:02:01.759285-04	14	Tik Beckers	1		10	1
102	2015-05-03 10:02:27.518651-04	15	Liam Hummeling	1		10	1
103	2015-05-03 10:02:51.867435-04	16	Bartjan Hermans	1		10	1
104	2015-05-03 10:03:15.347922-04	17	Joris van Pelt	1		10	1
105	2015-05-03 10:03:39.773375-04	18	Midas Boeke	1		10	1
106	2015-05-03 10:04:37.686751-04	18	Midas Boeke	3		10	1
107	2015-05-03 10:04:37.689585-04	17	Joris van Pelt	3		10	1
108	2015-05-03 10:05:36.440448-04	19	Joris van Pelt	1		10	1
109	2015-05-03 10:05:57.829463-04	20	Midas Boeke	1		10	1
110	2015-05-03 10:06:20.852094-04	21	Maxime Kalse	1		10	1
111	2015-05-03 10:07:27.039221-04	22	Bart Vosmer	1		10	1
112	2015-05-03 10:08:24.392687-04	23	Fernando Dias	1		10	1
113	2015-05-03 10:08:54.176031-04	24	Joris Zevenbergen	1		10	1
114	2015-05-03 10:09:33.855407-04	25	Mischa Lokhoff	1		10	1
115	2015-05-03 10:09:56.324151-04	26	Sophie van der Ploeg	1		10	1
116	2015-05-03 10:10:21.830058-04	27	Milo van Moort	1		10	1
117	2015-05-03 10:11:00.833624-04	28	Mandy Schipper	1		10	1
118	2015-05-03 10:11:29.392738-04	29	Jur Limburg	1		10	1
119	2015-05-03 10:12:03.56135-04	30	Max van Sinderen 	1		10	1
120	2015-05-03 10:12:31.124714-04	31	Jesse Haenen	1		10	1
121	2015-05-03 10:12:57.584897-04	32	Paul van Schaijk	1		10	1
122	2015-05-03 10:13:25.083567-04	33	Jorrit Jans	1		10	1
123	2015-05-03 10:13:47.54026-04	34	Naveen Bharatsingh	1		10	1
124	2015-05-03 10:14:12.705065-04	35	Roel van Oosten	1		10	1
125	2015-05-03 10:14:45.090549-04	36	Yarden Sela	1		10	1
126	2015-05-03 10:15:05.926533-04	37	Luc Haverkamp	1		10	1
127	2015-05-03 10:15:32.507937-04	38	Tessa Boumans	1		10	1
128	2015-05-03 10:15:59.826296-04	39	Rob Janssen	1		10	1
129	2015-05-03 10:16:22.174885-04	40	Jurjen van Rees	1		10	1
130	2015-05-03 10:16:40.260576-04	41	Yael Wassen	1		10	1
131	2015-05-03 10:16:59.755282-04	42	Glenn Houtgraaf	1		10	1
132	2015-05-03 10:17:19.62791-04	43	Anahita Shakary	1		10	1
133	2015-05-03 10:17:39.469498-04	44	Mariska van Delft	1		10	1
134	2015-05-03 10:18:01.691416-04	45	Jori Faber	1		10	1
135	2015-05-03 10:18:21.056685-04	46	Arnout Maat	1		10	1
136	2015-05-03 10:18:45.946895-04	47	Rick Otten	1		10	1
137	2015-05-03 10:19:10.516561-04	48	Niels van der Neut	1		10	1
138	2015-05-03 10:19:37.429262-04	49	Job Harms	1		10	1
139	2015-05-03 10:20:00.084417-04	50	Alec Sanderson	1		10	1
140	2015-05-03 10:20:26.094071-04	51	Nadine Hut	1		10	1
141	2015-05-03 10:20:44.830895-04	52	Louise de Rijk	1		10	1
142	2015-05-03 10:21:00.259482-04	53	Marieke Lomans	1		10	1
143	2015-05-03 10:21:19.800349-04	54	Anne Kingma	1		10	1
144	2015-05-03 13:20:23.133014-04	1	Een digitale universiteit	2	Changed text for punten "Vakken digitaal volgen". Changed text for punten "Colleges op YouTube". Changed text for punten "Digital Student Program". Changed text for punten "Intranet".	11	1
145	2015-05-03 13:21:49.317176-04	2	Studieadvies: van bindend naar persoonlijk	2	Changed text for punten "Afschaffen BSA: naar een persoonlijk studieadvies". Changed text for punten "Van studieadviseur naar studiecoach".	11	1
146	2015-05-03 13:22:13.36148-04	3	Ruimte voor ontplooiing	2	Changed text for punten "Iedere opleiding een honourstraject met meerwaarde". Changed text for punten "Ambitieuze mentaliteit". Changed text for punten "Soepele aanwezigheidsplicht". Changed text for punten "Dertig ECTS echte keuzeruime".	11	1
147	2015-05-03 13:22:44.564425-04	5	Rendement voor de student	2	Changed text for punten "Investeren in onderwijs". Changed text for punten "Goed gebruik van subsidies".	11	1
148	2015-05-03 13:23:01.955529-04	6	Over medezeggenschap	2	Changed text for punten "Medezeggenschap decentraal". Changed text for punten "Democratie".	11	1
149	2015-05-03 13:23:28.779766-04	7	Over boeken, toetsing en tentamens	2	Changed text for punten "Boeken". Changed text for punten "Nakijken". Changed text for punten "Fraude en plagiaat". Changed text for punten "Examencommissie".	11	1
150	2015-05-03 13:23:38.939162-04	8	Huisvesting	2	Changed text for punten "Degelijke studeeromgeving".	11	1
151	2015-05-03 13:23:47.209945-04	9	Over De Vrije Student	2	Changed text for punten "netwerk".	11	1
222	2015-05-12 14:54:47.247748-04	74	Sofie ten Hopen	1		10	1
224	2015-05-12 14:56:20.193361-04	76	Valentijn Kuperus	1		10	1
152	2015-05-06 08:02:44.253087-04	1	Een digitale UvA	2	Changed city and kopje. Changed text for punten "Vakken digitaal volgen". Changed text for punten "Colleges op YouTube". Changed text for punten "Digital Student Program". Changed title and text for punten "Intranet: CIS, Blackboard etcetera".	11	1
153	2015-05-06 08:05:39.357021-04	2	Studieadvies: van bindend naar persoonlijk	2	Changed city. Changed title, text and slug for punten "Persoonlijk studieadvies". Changed text and slug for punten "Van studieadviseur naar studiecoach".	11	1
154	2015-05-06 08:08:20.571187-04	3	Ruimte voor ontplooiing	2	Changed city. Changed text for punten "Iedere opleiding een honourstraject met meerwaarde". Changed text for punten "Ambitieuze mentaliteit". Changed text for punten "Soepele aanwezigheidsplicht". Changed text for punten "Dertig ECTS echte keuzeruime". Changed text for punten "Geen maximumtermijn".	11	1
155	2015-05-06 08:09:39.120038-04	4	Een internationale UvA	2	Changed city and kopje. Changed title, text and slug for punten "Soepel studeren in het buitenland".	11	1
156	2015-05-06 08:11:06.180567-04	5	Rendement voor de student	2	Changed city. Changed text for punten "Investeren in onderwijs". Changed text for punten "Goed gebruik van subsidies".	11	1
157	2015-05-06 08:12:29.388534-04	6	Over medezeggenschap	2	Changed city. Added punten "Allocatiemodel". Changed text for punten "Medezeggenschap decentraal". Changed text for punten "Democratie".	11	1
158	2015-05-06 11:21:24.154967-04	5	Nieuwe studentenpartij gaat universiteitsraad bestormen	2	Changed text.	9	1
159	2015-05-06 11:25:54.024772-04	1	De Vrije Student gaat universiteitsraad bestormen	2	Changed text.	9	1
160	2015-05-06 11:26:17.771222-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed text.	9	1
161	2015-05-06 12:40:24.9888-04	1	Een digitale UvA	2	Changed text for punten "Vakken digitaal volgen". Changed text for punten "Colleges op YouTube". Changed text for punten "Digital Student Program".	11	1
162	2015-05-06 13:01:50.428331-04	7	Over boeken, toetsing en tentamens	2	Changed city. Deleted punten "Uniform Onderwijs- en Examenreglement (OER)".	11	1
163	2015-05-06 13:02:50.850841-04	7	Over boeken, toetsing en tentamens	2	Added punten "Uniform Onderwijs- en Examenreglement (OER)". Deleted punten "Nakijken". Deleted punten "Inhalen en herkansen". Deleted punten "Fraude en plagiaat". Deleted punten "Examencommissie".	11	1
164	2015-05-06 13:03:32.315501-04	7	Over boeken, toetsing en tentamens	2	Added punten "Boeken".	11	1
165	2015-05-06 13:05:47.387211-04	7	Over boeken, toetsing en tentamens	2	Added punten "Nakijken". Added punten "Inhalen en herkansen". Added punten "Fraude en plagiaat". Added punten "Examencommissie".	11	1
166	2015-05-06 13:07:02.989904-04	8	Huisvesting	2	Changed title, text and slug for punten "Moderne onderwijsomgeving".	11	1
167	2015-05-06 13:08:25.642758-04	9	Beloftes over De Vrije Student	2	Changed kopje. Changed title, text and slug for punten "Trainingen". Changed text for punten "Landelijk netwerk". Deleted punten "Meldpunt".	11	1
168	2015-05-06 13:40:54.94818-04	10	Studieadvies: van confectie naar maatwerk	1		11	1
169	2015-05-06 13:47:26.068159-04	11	Een digitale Radboud Universiteit	1		11	1
170	2015-05-06 13:54:29.539896-04	12	Ruimte voor ontplooiing	1		11	1
171	2015-05-06 13:56:15.511687-04	13	Een internationale Radboud Universiteit	1		11	1
172	2015-05-06 13:58:12.189221-04	14	Rendement voor de student	1		11	1
173	2015-05-06 13:58:43.953108-04	14	Rendement voor de student	3		11	1
174	2015-05-06 13:59:00.994266-04	5	Rendement voor de student	2	Changed city.	11	1
175	2015-05-06 14:02:22.517866-04	15	Over medezeggenschap	1		11	1
176	2015-05-06 14:08:46.568536-04	16	Over boeken, toetsing en tentamens	1		11	1
177	2015-05-06 14:11:02.55179-04	17	Studieplekken en catering	1		11	1
178	2015-05-06 14:12:47.249287-04	18	Beloftes van De Vrije Student	1		11	1
179	2015-05-12 12:09:30.938254-04	9	Groot nieuws: De Vrije Student gaat universiteitsraad bestormen	1		9	1
180	2015-05-12 12:10:07.738769-04	4	Lars Benthin wil frisse wind laten waaien door medezeggenschap EUR	2	Changed city.	9	1
181	2015-05-12 12:13:43.257036-04	10	Lijsttrekker De Vrije Student bekend: stem Caspar!	1		9	1
182	2015-05-12 12:15:53.241665-04	11	”Meat Free Monday? De Vrije Student deelt worst en kaas uit!”	1		9	1
183	2015-05-12 12:17:23.22289-04	12	Stem De Vrije Student!	1		9	1
184	2015-05-12 12:18:10.584825-04	9	Groot nieuws: De Vrije Student gaat universiteitsraad bestormen	2	Changed image.	9	1
185	2015-05-12 12:18:28.167893-04	12	Stem De Vrije Student!	2	Changed image.	9	1
186	2015-05-12 12:20:18.516436-04	11	”Meat Free Monday? De Vrije Student deelt worst en kaas uit!”	2	Changed image.	9	1
187	2015-05-12 12:38:20.607557-04	12	Stem De Vrije Student!	2	Changed image.	9	1
188	2015-05-12 12:38:58.218117-04	9	Groot nieuws: De Vrije Student gaat universiteitsraad bestormen	2	Changed image.	9	1
189	2015-05-12 14:44:49.725284-04	55	Liselotte Noorduizen	1		10	1
190	2015-05-12 14:45:13.587089-04	56	Koen Durlinger	1		10	1
191	2015-05-12 14:45:36.620103-04	57	Ronald Peeters	1		10	1
192	2015-05-12 14:45:57.499136-04	58	Jelle Beernink	1		10	1
193	2015-05-12 14:46:17.241411-04	59	Karl Kouki	1		10	1
194	2015-05-12 14:46:37.422023-04	60	Regina Koonen	1		10	1
195	2015-05-12 14:46:57.067201-04	61	Stan Cortenbach	1		10	1
196	2015-05-12 14:47:18.336788-04	62	Valentijn Kuperus	1		10	1
197	2015-05-12 14:48:53.527874-04	63	Lars Dijkema	1		10	1
198	2015-05-12 14:49:13.110053-04	64	Sofie ten Hopen	1		10	1
199	2015-05-12 14:49:39.590488-04	65	Sem van Maanen	1		10	1
200	2015-05-12 14:50:00.10255-04	66	Jitse Arendsen	1		10	1
201	2015-05-12 14:50:19.561748-04	67	Rick Schreurs	1		10	1
202	2015-05-12 14:50:41.046571-04	68	Abdul Abdel Aziz	1		10	1
203	2015-05-12 14:51:01.807093-04	69	Caspar Safarlou	1		10	1
204	2015-05-12 14:52:56.468614-04	68	Abdul Abdel Aziz	3		10	1
205	2015-05-12 14:52:56.471777-04	67	Rick Schreurs	3		10	1
206	2015-05-12 14:52:56.473226-04	66	Jitse Arendsen	3		10	1
207	2015-05-12 14:52:56.474529-04	65	Sem van Maanen	3		10	1
208	2015-05-12 14:52:56.475823-04	64	Sofie ten Hopen	3		10	1
209	2015-05-12 14:52:56.477174-04	63	Lars Dijkema	3		10	1
210	2015-05-12 14:52:56.478637-04	62	Valentijn Kuperus	3		10	1
211	2015-05-12 14:52:56.4799-04	61	Stan Cortenbach	3		10	1
212	2015-05-12 14:52:56.481241-04	60	Regina Koonen	3		10	1
213	2015-05-12 14:52:56.482591-04	59	Karl Kouki	3		10	1
214	2015-05-12 14:52:56.485559-04	58	Jelle Beernink	3		10	1
215	2015-05-12 14:52:56.486808-04	57	Ronald Peeters	3		10	1
216	2015-05-12 14:52:56.488036-04	56	Koen Durlinger	3		10	1
217	2015-05-12 14:52:56.489576-04	55	Liselotte Noorduizen	3		10	1
218	2015-05-12 14:53:18.663184-04	70	Abdul Abdel Aziz	1		10	1
219	2015-05-12 14:53:46.368004-04	71	Rick Schreurs	1		10	1
220	2015-05-12 14:54:08.01247-04	72	Jitse Arendsen	1		10	1
229	2015-05-12 14:59:39.510194-04	81	Ronald Peeters	1		10	1
230	2015-05-12 15:00:10.911677-04	82	Koen Durlinger	1		10	1
231	2015-05-12 15:00:34.262403-04	83	Liselotte Noorduizen	1		10	1
232	2015-05-13 12:04:16.307044-04	5	Rendement voor de student	2	Changed city.	11	1
233	2015-05-13 12:06:16.607618-04	19	Rendement voor de student	1		11	1
234	2015-05-13 12:09:16.249772-04	70	Abdul Abdel Aziz	2	No fields changed.	10	1
235	2015-05-13 12:09:54.208256-04	70	Abdul Abdel Aziz	2	No fields changed.	10	1
236	2015-05-13 12:12:15.32565-04	70	Abdul Abdel Aziz	2	Changed text.	10	1
237	2015-05-13 12:18:30.742615-04	71	Rick Schreurs	2	Changed text.	10	1
238	2015-05-13 12:29:48.14895-04	70	Abdul Abdel Aziz	2	Changed text.	10	1
239	2015-05-18 05:43:51.037075-04	74	Sofie ten Hoopen	2	Changed name.	10	1
240	2015-05-18 05:44:16.55089-04	76	Valentijn Kuperus	2	Changed text.	10	1
241	2015-05-18 05:44:32.846248-04	77	Stan Cortenbach	2	Changed text.	10	1
242	2015-05-18 05:46:24.969159-04	12	Stem De Vrije Student!	2	Changed text.	9	1
243	2015-05-18 05:46:40.351588-04	12	Stem De Vrije Student!	2	Changed text.	9	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 243, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	city	cities_news	city
8	tag	cities_news	tag
9	article	cities_news	article
10	mensen	cities_news	mensen
11	standpunten	cities_news	standpunten
12	punten	cities_news	punten
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-04-21 21:38:44.242205-04
2	auth	0001_initial	2015-04-21 21:38:44.370927-04
3	admin	0001_initial	2015-04-21 21:38:44.436381-04
4	sessions	0001_initial	2015-04-21 21:38:44.464186-04
5	cities_news	0001_initial	2015-04-21 21:44:53.424538-04
6	cities_news	0002_remove_mensen_lo	2015-04-21 22:22:33.781989-04
7	cities_news	0003_auto_20150422_0610	2015-04-22 02:10:23.676697-04
8	cities_news	0004_auto_20150422_0614	2015-04-22 02:15:02.435184-04
9	cities_news	0005_auto_20150424_0050	2015-04-23 20:51:00.995103-04
10	cities_news	0006_auto_20150425_0830	2015-04-25 04:30:59.190618-04
11	cities_news	0007_standpunten_city	2015-04-29 06:47:33.246819-04
12	cities_news	0008_auto_20150429_1057	2015-04-29 06:57:18.532265-04
13	cities_news	0009_auto_20150506_1736	2015-05-06 13:36:29.324278-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_migrations_id_seq', 13, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
hn3jp78k3im34uvl4483we57ottt2v3w	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:39:15.593473-04
83uc0hbhmjcspef8e5et5ia9mjc3ftdd	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:40:00.232465-04
cm1mt83972iledzbeg3ouqo7abv6tvoc	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:40:25.532496-04
po2sq9ex5dztf46hkr7huyeo3nf7s601	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:40:28.917771-04
hfd0wtztdhyip5si0xpk5fnbx341q37x	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:40:30.447404-04
xuej899rvzei2560ovz11xyj1mlyr9a0	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:40:33.919093-04
ntxjby52czl7zx2arwv2wnde8x6ns919	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:40:35.01848-04
vatny2ercqx9gbusec5g34roh5t2xnyf	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:45:15.786094-04
1yz8y8t6a7cdymvmvyhjqrbhev6ynq1o	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:46:50.602077-04
qx58lb91wlsqoefy6gdv382d13m2v8qv	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-05 21:46:58.936098-04
gfrhrdfvqtobxfedlbye5umh1u6yfbe9	MmRhYTliNzk5OTNjZGYxNDUzYjMwY2IyOTU1NWVhM2M5MDUxNjViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NTYxYWVhOWNlYzY3MjkyNTY0YTgyODYwMDFmMDU1NGM5ZTViZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-05-06 02:17:29.716629-04
esucbgmgdecf0r9tl3duxh4gxfc4ej66	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-06 02:45:39.947466-04
65sns4oyy3dfgsfl0y5n1s7j0ah65gp5	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-05-07 21:33:12.662028-04
a239rm7u30bisyxuye0dwawoai70pssa	MmRhYTliNzk5OTNjZGYxNDUzYjMwY2IyOTU1NWVhM2M5MDUxNjViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NTYxYWVhOWNlYzY3MjkyNTY0YTgyODYwMDFmMDU1NGM5ZTViZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-05-07 22:33:46.388285-04
bdn32ahnzzcgew5yrw98yszo761mgkze	MmRhYTliNzk5OTNjZGYxNDUzYjMwY2IyOTU1NWVhM2M5MDUxNjViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NTYxYWVhOWNlYzY3MjkyNTY0YTgyODYwMDFmMDU1NGM5ZTViZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-05-20 13:39:10.112319-04
nq5q4bg2hoezmng2gxma5fkjv7b53hb4	MmRhYTliNzk5OTNjZGYxNDUzYjMwY2IyOTU1NWVhM2M5MDUxNjViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NTYxYWVhOWNlYzY3MjkyNTY0YTgyODYwMDFmMDU1NGM5ZTViZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-05-28 17:08:30.362442-04
hvplftkg754tr1e900foq5t1u6nvds8d	MmRhYTliNzk5OTNjZGYxNDUzYjMwY2IyOTU1NWVhM2M5MDUxNjViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NTYxYWVhOWNlYzY3MjkyNTY0YTgyODYwMDFmMDU1NGM5ZTViZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-06-02 08:28:44.768547-04
gxxguf3omdtxj4i0gstbh2avhas99ecq	M2NhM2Q1ZTYzZmNiNjAxMWU0OTIwNTY2Y2M0MjJiYjE4YjMwMDIxNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjIzZGExN2NlOTZlMDRmZjMwNWVjZTk2YjYyZjIzZjY4NzQ0NDg5MTAiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2015-06-02 11:32:43.797-04
pnuyzel34gzblox0fqvsna5y7mlbhwg1	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-06-02 11:47:47.362851-04
00p337wdnli6spp4judsp4r61xngfkep	YmE4N2U4M2M1ZjI0MmQ2Zjg2NWY1MTY5ZWFmMmY4OWFmMjk1MmI2Yzp7fQ==	2015-06-02 15:10:34.377266-04
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cities_news_article_city_article_id_city_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article_city
    ADD CONSTRAINT cities_news_article_city_article_id_city_id_key UNIQUE (article_id, city_id);


--
-- Name: cities_news_article_city_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article_city
    ADD CONSTRAINT cities_news_article_city_pkey PRIMARY KEY (id);


--
-- Name: cities_news_article_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article
    ADD CONSTRAINT cities_news_article_pkey PRIMARY KEY (id);


--
-- Name: cities_news_article_slug_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article
    ADD CONSTRAINT cities_news_article_slug_key UNIQUE (slug);


--
-- Name: cities_news_article_tags_article_id_tag_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article_tags
    ADD CONSTRAINT cities_news_article_tags_article_id_tag_id_key UNIQUE (article_id, tag_id);


--
-- Name: cities_news_article_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article_tags
    ADD CONSTRAINT cities_news_article_tags_pkey PRIMARY KEY (id);


--
-- Name: cities_news_article_title_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_article
    ADD CONSTRAINT cities_news_article_title_key UNIQUE (title);


--
-- Name: cities_news_city_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_city
    ADD CONSTRAINT cities_news_city_pkey PRIMARY KEY (id);


--
-- Name: cities_news_city_title_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_city
    ADD CONSTRAINT cities_news_city_title_key UNIQUE (title);


--
-- Name: cities_news_mensen_city_mensen_id_city_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_mensen_city
    ADD CONSTRAINT cities_news_mensen_city_mensen_id_city_id_key UNIQUE (mensen_id, city_id);


--
-- Name: cities_news_mensen_city_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_mensen_city
    ADD CONSTRAINT cities_news_mensen_city_pkey PRIMARY KEY (id);


--
-- Name: cities_news_mensen_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_mensen
    ADD CONSTRAINT cities_news_mensen_pkey PRIMARY KEY (id);


--
-- Name: cities_news_punten_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_punten
    ADD CONSTRAINT cities_news_punten_pkey PRIMARY KEY (id);


--
-- Name: cities_news_punten_slug_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_punten
    ADD CONSTRAINT cities_news_punten_slug_key UNIQUE (slug);


--
-- Name: cities_news_standpunten_city_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_standpunten_city
    ADD CONSTRAINT cities_news_standpunten_city_pkey PRIMARY KEY (id);


--
-- Name: cities_news_standpunten_city_standpunten_id_city_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_standpunten_city
    ADD CONSTRAINT cities_news_standpunten_city_standpunten_id_city_id_key UNIQUE (standpunten_id, city_id);


--
-- Name: cities_news_standpunten_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_standpunten
    ADD CONSTRAINT cities_news_standpunten_pkey PRIMARY KEY (id);


--
-- Name: cities_news_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_tag
    ADD CONSTRAINT cities_news_tag_pkey PRIMARY KEY (id);


--
-- Name: cities_news_tag_word_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY cities_news_tag
    ADD CONSTRAINT cities_news_tag_word_key UNIQUE (word);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: cities_news_article_author_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_author_id ON cities_news_article USING btree (author_id);


--
-- Name: cities_news_article_city_article_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_city_article_id ON cities_news_article_city USING btree (article_id);


--
-- Name: cities_news_article_city_city_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_city_city_id ON cities_news_article_city USING btree (city_id);


--
-- Name: cities_news_article_slug_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_slug_like ON cities_news_article USING btree (slug varchar_pattern_ops);


--
-- Name: cities_news_article_tags_article_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_tags_article_id ON cities_news_article_tags USING btree (article_id);


--
-- Name: cities_news_article_tags_tag_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_tags_tag_id ON cities_news_article_tags USING btree (tag_id);


--
-- Name: cities_news_article_title_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_article_title_like ON cities_news_article USING btree (title varchar_pattern_ops);


--
-- Name: cities_news_city_title_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_city_title_like ON cities_news_city USING btree (title varchar_pattern_ops);


--
-- Name: cities_news_mensen_city_city_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_mensen_city_city_id ON cities_news_mensen_city USING btree (city_id);


--
-- Name: cities_news_mensen_city_mensen_id; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_mensen_city_mensen_id ON cities_news_mensen_city USING btree (mensen_id);


--
-- Name: cities_news_punten_9376bc76; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_punten_9376bc76 ON cities_news_punten USING btree (standpunt_id);


--
-- Name: cities_news_standpunten_city_b948365c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_standpunten_city_b948365c ON cities_news_standpunten_city USING btree (standpunten_id);


--
-- Name: cities_news_standpunten_city_c7141997; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_standpunten_city_c7141997 ON cities_news_standpunten_city USING btree (city_id);


--
-- Name: cities_news_tag_word_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX cities_news_tag_word_like ON cities_news_tag USING btree (word varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: article_id_refs_id_1bb47943; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article_city
    ADD CONSTRAINT article_id_refs_id_1bb47943 FOREIGN KEY (article_id) REFERENCES cities_news_article(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_id_refs_id_4019a015; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article_tags
    ADD CONSTRAINT article_id_refs_id_4019a015 FOREIGN KEY (article_id) REFERENCES cities_news_article(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ci_standpunten_id_908cf6b03776421_fk_cities_news_standpunten_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_standpunten_city
    ADD CONSTRAINT ci_standpunten_id_908cf6b03776421_fk_cities_news_standpunten_id FOREIGN KEY (standpunten_id) REFERENCES cities_news_standpunten(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: citi_standpunt_id_cde5fe05ea869b8_fk_cities_news_standpunten_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_punten
    ADD CONSTRAINT citi_standpunt_id_cde5fe05ea869b8_fk_cities_news_standpunten_id FOREIGN KEY (standpunt_id) REFERENCES cities_news_standpunten(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cities_news_article_city_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article_city
    ADD CONSTRAINT cities_news_article_city_city_id_fkey FOREIGN KEY (city_id) REFERENCES cities_news_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cities_news_article_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_article_tags
    ADD CONSTRAINT cities_news_article_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES cities_news_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cities_news_mensen_city_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_mensen_city
    ADD CONSTRAINT cities_news_mensen_city_city_id_fkey FOREIGN KEY (city_id) REFERENCES cities_news_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cities_news_sta_city_id_377bf6c985f7e211_fk_cities_news_city_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_standpunten_city
    ADD CONSTRAINT cities_news_sta_city_id_377bf6c985f7e211_fk_cities_news_city_id FOREIGN KEY (city_id) REFERENCES cities_news_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mensen_id_refs_id_a925f762; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY cities_news_mensen_city
    ADD CONSTRAINT mensen_id_refs_id_a925f762 FOREIGN KEY (mensen_id) REFERENCES cities_news_mensen(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


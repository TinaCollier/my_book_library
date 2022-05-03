--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: authors; Type: TABLE; Schema: public; Owner: tinacollier
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.authors OWNER TO tinacollier;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: tinacollier
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO tinacollier;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tinacollier
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: tinacollier
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    publisher_id integer NOT NULL,
    author_id integer NOT NULL,
    publish_year integer,
    number_of_pages integer,
    genre text
);


ALTER TABLE public.books OWNER TO tinacollier;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: tinacollier
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO tinacollier;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tinacollier
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: publishers; Type: TABLE; Schema: public; Owner: tinacollier
--

CREATE TABLE public.publishers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(100)
);


ALTER TABLE public.publishers OWNER TO tinacollier;

--
-- Name: publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: tinacollier
--

CREATE SEQUENCE public.publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publishers_id_seq OWNER TO tinacollier;

--
-- Name: publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tinacollier
--

ALTER SEQUENCE public.publishers_id_seq OWNED BY public.publishers.id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: publishers id; Type: DEFAULT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.publishers ALTER COLUMN id SET DEFAULT nextval('public.publishers_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: tinacollier
--

COPY public.authors (id, name) FROM stdin;
1	King, Stephen
2	Rice, Anne
3	Abercrombie, Joe
4	Sapkowski, Andrzej
5	Vidal, Gore
6	Douglass, Sara
7	Larsson, Stieg
8	Dashner, James
9	Turtledove, Harry
10	Martin, George. R. R.
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: tinacollier
--

COPY public.books (id, name, publisher_id, author_id, publish_year, number_of_pages, genre) FROM stdin;
1	Duma Key	1	1	2008	611	Psychological Horror
2	Under the Dome	1	1	2009	1074	Science Fiction, Horror
4	Mr. Mercedes	1	1	2014	437	Crime, Mystery, Thriller
7	Bag of Bones	2	1	1998	732	Horror
6	Dreamcatcher	2	1	2001	882	Science Fiction, Horror
5	Cell	1	1	2006	355	Horror
3	From a Buick 8	1	1	2002	356	Horror
11	Delores Claiborne	2	1	1983	372	Horror, Thriller, Psychological Thriller
12	Thinner	2	1	1984	318	Horror
8	Insomnia	2	1	1994	363	Horror, Fantasy
10	The Dead Zone	2	1	1979	402	Horror, Science Fiction, Thriller
9	Cujo	2	1	1981	304	Horror
16	The Witching Hour	10	2	1997	1038	Horror, Fantasy
14	Lasher	10	2	1993	628	Horror, Fantasy
13	Interview With a Vampire	10	2	1976	342	Horror, Fantasy
15	Taltos	10	2	1996	563	Fantasy
40	Before They Are Hanged	6	3	2007	544	Fantasy
39	The Blade Itself	6	3	2006	542	Fantasy
17	Black House	10	1	2001	658	Horror, Thriller
20	Starman	4	6	1996	670	Fantasy
21	Sinner	4	6	1997	564	Fantasy
18	The Wayfarer Redemption	4	6	1995	653	Fantasy
23	Crusader	4	6	1999	653	Fantasy
22	Pilgrim	4	6	1997	655	Fantasy
19	Enchanter	4	6	1996	669	Fantasy
38	Last Argument of Kings	6	3	2008	695	Fantasy
31	The Death Cure	5	8	2011	328	Science Fiction, Young Adult
29	The Maze Runner	5	8	2010	359	Science Fiction, Young Adult
32	The Kill Order	5	8	2016	329	Science Fiction, Young Adult
24	Blood of Elves	6	4	1994	328	Fantasy
25	The Time of Contentment	6	4	1995	337	Fantasy
26	Baptism of Fire	6	4	1996	507	Fantasy
27	The Tower of Swallows	6	4	1997	464	Fantasy
28	The Lady of the Lake	6	4	1999	544	Fantasy
30	The Scorch Trials	5	8	2010	359	Science Fiction, Young Adult
33	The Fever Code	5	8	2016	329	Science Fiction, Young Adult
34	The Clash of Kings	9	10	1999	1009	Fantasy
35	A Storm of Swords	9	10	2000	1177	Fantasy
36	Departures	8	9	1993	342	Science Fiction
37	Homeward Bound	8	9	2004	597	Science Fiction
\.


--
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: tinacollier
--

COPY public.publishers (id, name, address) FROM stdin;
1	Scribner	\N
2	Plume	\N
3	Harper Collins	\N
4	Tor	\N
5	Chicken House	\N
6	Orbit	\N
7	Signet	\N
8	Del Rey	\N
9	Bantam Books	\N
10	Ballantine Books	\N
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tinacollier
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, false);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tinacollier
--

SELECT pg_catalog.setval('public.books_id_seq', 1, false);


--
-- Name: publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tinacollier
--

SELECT pg_catalog.setval('public.publishers_id_seq', 1, false);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: publishers publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (id);


--
-- Name: books books_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.authors(id);


--
-- Name: books books_publisher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tinacollier
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES public.publishers(id);


--
-- PostgreSQL database dump complete
--


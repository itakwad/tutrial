--
-- PostgreSQL database dump
--

\restrict 8aB3xnKRcb5QG7W6jLLGVPB7AD8oOWhKVliOweUespJCYkTReTaxQpCjuG9rr0P

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-30 23:42:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 26091)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    city character varying(50)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 26090)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 217
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 224 (class 1259 OID 26117)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer,
    unit_price numeric(10,2)
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 26116)
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_id_seq OWNER TO postgres;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 223
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- TOC entry 222 (class 1259 OID 26105)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(12,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 26104)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 220 (class 1259 OID 26098)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(100),
    category character varying(50),
    price numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 26097)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 4710 (class 2604 OID 26094)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 26120)
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 26108)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 26101)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4871 (class 0 OID 26091)
-- Dependencies: 218
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, email, city) FROM stdin;
1	أحمد علي	ahmed.ali@example.com	القاهرة
2	محمد حسن	mohamed.hassan@example.com	الإسكندرية
3	سارة إبراهيم	sara.ibrahim@example.com	الجيزة
4	منة شريف	mena.sherif@example.com	الأقصر
5	خالد سعيد	khaled.saeed@example.com	أسوان
6	يوسف عادل	youssef.adel@example.com	المنصورة
7	داليا محمد	dalia.mohamed@example.com	طنطا
8	عمرو فؤاد	amr.fouad@example.com	الزقازيق
9	رانيا عبد الله	rania.abdallah@example.com	قنا
10	مصطفى حامد	mostafa.hamed@example.com	أسيوط
11	إيمان كمال	eman.kamal@example.com	سوهاج
12	نورا فهد	nora.fahd@example.com	دمياط
13	هشام عبد العزيز	hesham.aziz@example.com	بورسعيد
14	ليلى سامي	laila.samy@example.com	الفيوم
15	طارق عبد الرحمن	tarek.abdelrahman@example.com	بني سويف
16	هالة فريد	hala.farid@example.com	مطروح
17	محمود عبد الفتاح	mahmoud.fattah@example.com	كفر الشيخ
18	آية أحمد	aya.ahmed@example.com	الإسماعيلية
19	كريم حسن	karim.hassan@example.com	المنيا
20	فاطمة عبد الله	fatma.abdallah@example.com	سوهاج
\.


--
-- TOC entry 4877 (class 0 OID 26117)
-- Dependencies: 224
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (id, order_id, product_id, quantity, unit_price) FROM stdin;
1	1	7	5	90.00
2	1	6	5	150.00
3	1	5	3	3200.00
4	1	8	1	250.00
5	2	9	2	600.00
6	2	12	1	2200.00
7	2	3	1	15500.00
8	3	4	1	750.00
9	3	14	3	300.00
10	4	9	1	600.00
11	5	3	2	15500.00
12	6	15	5	950.00
13	6	12	1	2200.00
14	6	7	2	90.00
15	7	6	2	150.00
16	7	8	4	250.00
17	8	9	1	600.00
18	8	10	1	350.00
19	8	12	1	2200.00
20	9	4	5	750.00
21	10	9	3	600.00
22	10	10	1	350.00
23	10	11	4	120.00
24	11	15	4	950.00
25	12	4	1	750.00
26	12	8	5	250.00
27	12	2	4	5200.00
28	12	13	5	1800.00
29	13	10	4	350.00
30	13	7	1	90.00
31	14	5	4	3200.00
32	14	11	2	120.00
33	15	11	5	120.00
34	15	2	2	5200.00
35	15	11	3	120.00
36	16	2	3	5200.00
37	16	14	5	300.00
38	17	8	3	250.00
39	18	2	4	5200.00
40	18	5	4	3200.00
41	19	1	1	4500.00
42	20	10	2	350.00
43	21	7	1	90.00
44	22	8	2	250.00
45	23	7	2	90.00
46	23	11	5	120.00
47	23	15	3	950.00
48	24	15	1	950.00
49	24	5	2	3200.00
50	25	5	2	3200.00
51	25	5	4	3200.00
52	25	13	5	1800.00
53	25	13	4	1800.00
54	26	11	2	120.00
55	27	1	2	4500.00
56	27	11	2	120.00
57	27	10	1	350.00
58	28	3	1	15500.00
59	28	6	3	150.00
60	29	6	1	150.00
61	29	12	1	2200.00
62	29	9	1	600.00
63	30	5	5	3200.00
64	30	1	3	4500.00
65	31	6	4	150.00
66	31	12	4	2200.00
67	31	1	1	4500.00
68	31	6	3	150.00
69	32	1	3	4500.00
70	32	3	2	15500.00
71	32	11	1	120.00
72	33	9	4	600.00
73	33	11	1	120.00
74	34	5	4	3200.00
75	34	8	5	250.00
76	34	12	2	2200.00
77	34	11	4	120.00
78	35	9	5	600.00
79	35	7	3	90.00
80	35	4	5	750.00
81	35	12	3	2200.00
82	36	4	2	750.00
83	36	13	3	1800.00
84	37	10	5	350.00
85	38	7	4	90.00
86	38	3	3	15500.00
87	39	5	4	3200.00
88	39	4	4	750.00
89	39	10	1	350.00
90	40	1	3	4500.00
91	40	4	1	750.00
92	40	13	4	1800.00
93	40	9	4	600.00
94	41	14	2	300.00
95	41	12	1	2200.00
96	41	12	2	2200.00
97	41	9	4	600.00
98	42	15	5	950.00
99	43	8	2	250.00
100	43	10	2	350.00
101	43	14	5	300.00
102	44	11	3	120.00
103	44	13	4	1800.00
104	44	9	2	600.00
105	44	3	4	15500.00
106	45	6	2	150.00
107	45	3	4	15500.00
108	45	8	2	250.00
109	45	8	1	250.00
110	46	9	2	600.00
111	46	1	1	4500.00
112	47	7	1	90.00
113	47	7	1	90.00
114	48	12	5	2200.00
115	49	12	1	2200.00
116	49	6	2	150.00
117	49	1	1	4500.00
118	50	5	2	3200.00
119	50	5	3	3200.00
120	50	6	1	150.00
121	51	3	2	15500.00
122	51	1	3	4500.00
123	51	9	2	600.00
124	51	5	4	3200.00
125	52	13	3	1800.00
126	53	9	5	600.00
127	53	14	2	300.00
128	53	1	2	4500.00
129	54	6	5	150.00
130	54	13	2	1800.00
131	54	4	2	750.00
132	54	2	2	5200.00
133	55	6	5	150.00
134	55	9	1	600.00
135	56	2	3	5200.00
136	56	14	2	300.00
137	56	8	3	250.00
138	57	2	4	5200.00
139	57	4	4	750.00
140	57	6	4	150.00
141	57	9	4	600.00
142	58	4	3	750.00
143	58	7	2	90.00
144	58	8	4	250.00
145	59	6	5	150.00
146	59	9	5	600.00
147	60	4	2	750.00
148	60	14	2	300.00
149	61	6	4	150.00
150	62	8	5	250.00
151	62	12	3	2200.00
152	62	6	1	150.00
153	62	10	2	350.00
154	63	13	3	1800.00
155	63	5	4	3200.00
156	63	8	1	250.00
157	63	12	1	2200.00
158	64	9	1	600.00
159	65	12	2	2200.00
160	65	1	2	4500.00
161	65	5	1	3200.00
162	65	8	3	250.00
163	66	13	4	1800.00
164	66	11	3	120.00
165	67	10	2	350.00
166	67	3	1	15500.00
167	68	14	3	300.00
168	68	9	3	600.00
169	68	5	1	3200.00
170	69	7	1	90.00
171	70	11	3	120.00
172	71	7	4	90.00
173	72	7	4	90.00
174	73	5	4	3200.00
175	73	10	4	350.00
176	73	15	5	950.00
177	74	1	4	4500.00
178	74	3	3	15500.00
179	75	11	2	120.00
180	75	15	2	950.00
181	75	7	1	90.00
182	76	4	5	750.00
183	76	15	2	950.00
184	76	7	3	90.00
185	77	10	4	350.00
186	78	6	3	150.00
187	78	2	2	5200.00
188	78	11	2	120.00
189	78	14	3	300.00
190	79	8	5	250.00
191	79	1	3	4500.00
192	80	7	2	90.00
193	81	12	4	2200.00
194	81	14	5	300.00
195	82	7	2	90.00
196	82	10	2	350.00
197	83	14	2	300.00
198	83	15	2	950.00
199	83	10	1	350.00
200	83	6	5	150.00
201	84	13	5	1800.00
202	84	5	2	3200.00
203	85	9	5	600.00
204	85	6	4	150.00
205	85	12	3	2200.00
206	85	5	5	3200.00
207	86	7	5	90.00
208	86	5	3	3200.00
209	87	10	2	350.00
210	87	4	2	750.00
211	87	13	1	1800.00
212	88	10	5	350.00
213	88	13	3	1800.00
214	88	5	3	3200.00
215	89	7	4	90.00
216	90	12	5	2200.00
217	91	12	1	2200.00
218	91	12	3	2200.00
219	92	8	5	250.00
220	93	1	2	4500.00
221	93	13	2	1800.00
222	94	15	5	950.00
223	95	14	5	300.00
224	95	12	3	2200.00
225	95	5	3	3200.00
226	95	10	2	350.00
227	96	5	3	3200.00
228	96	4	2	750.00
229	96	11	1	120.00
230	96	9	1	600.00
231	97	9	3	600.00
232	98	8	3	250.00
233	98	6	1	150.00
234	98	3	5	15500.00
235	98	8	2	250.00
236	99	10	5	350.00
237	100	8	5	250.00
238	100	11	3	120.00
239	100	6	2	150.00
240	101	4	5	750.00
241	101	2	1	5200.00
242	102	7	3	90.00
243	102	10	1	350.00
244	102	14	2	300.00
245	102	13	1	1800.00
246	103	4	1	750.00
247	103	11	1	120.00
248	103	1	2	4500.00
249	104	15	5	950.00
250	104	15	5	950.00
251	105	15	4	950.00
252	106	8	1	250.00
253	106	6	5	150.00
254	106	9	4	600.00
255	107	6	1	150.00
256	108	1	5	4500.00
257	109	9	4	600.00
258	109	10	3	350.00
259	109	1	3	4500.00
260	110	7	3	90.00
261	110	10	5	350.00
262	110	15	4	950.00
263	111	4	4	750.00
264	111	11	3	120.00
265	111	13	2	1800.00
266	111	5	4	3200.00
267	112	2	2	5200.00
268	113	11	4	120.00
269	113	4	1	750.00
270	114	6	4	150.00
271	114	5	1	3200.00
272	115	13	1	1800.00
273	116	2	3	5200.00
274	116	13	3	1800.00
275	116	9	2	600.00
276	116	11	3	120.00
277	117	15	1	950.00
278	117	8	5	250.00
279	118	3	3	15500.00
280	118	8	5	250.00
281	119	8	5	250.00
282	120	2	3	5200.00
283	120	6	1	150.00
284	120	14	1	300.00
\.


--
-- TOC entry 4875 (class 0 OID 26105)
-- Dependencies: 222
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, customer_id, order_date, total_amount) FROM stdin;
1	14	2024-09-23	11050.00
2	3	2024-10-11	18900.00
3	4	2024-05-27	1650.00
4	11	2024-12-07	600.00
5	1	2024-11-10	31000.00
6	16	2024-01-28	7130.00
7	13	2024-12-02	1300.00
8	15	2024-05-09	3150.00
9	5	2024-07-12	3750.00
10	16	2024-02-01	2630.00
11	13	2024-06-02	3800.00
12	1	2024-07-26	31800.00
13	14	2024-02-28	1490.00
14	12	2024-04-13	13040.00
15	2	2024-02-07	11360.00
16	17	2024-02-10	17100.00
17	19	2024-12-27	750.00
18	17	2024-10-08	33600.00
19	2	2024-10-25	4500.00
20	2	2024-11-02	700.00
21	9	2024-05-21	90.00
22	19	2024-03-22	500.00
23	3	2024-10-25	3630.00
24	13	2024-11-22	7350.00
25	13	2024-12-26	35400.00
26	4	2024-06-03	240.00
27	9	2024-05-14	9590.00
28	10	2024-03-12	15950.00
29	18	2024-03-04	2950.00
30	13	2024-04-23	29500.00
31	19	2024-11-29	14350.00
32	2	2024-10-24	44620.00
33	2	2024-05-26	2520.00
34	7	2024-03-26	18930.00
35	11	2024-07-28	13620.00
36	18	2024-10-31	6900.00
37	16	2024-10-04	1750.00
38	2	2024-02-25	46860.00
39	8	2024-07-21	16150.00
40	10	2024-04-08	23850.00
41	15	2024-04-23	9600.00
42	14	2024-03-24	4750.00
43	13	2024-12-29	2700.00
44	3	2024-09-28	70760.00
45	16	2024-01-13	63050.00
46	19	2024-10-06	5700.00
47	15	2024-02-14	180.00
48	6	2024-11-20	11000.00
49	3	2024-10-03	7000.00
50	5	2024-01-27	16150.00
51	2	2024-03-05	58500.00
52	4	2024-02-03	5400.00
53	13	2024-09-02	12600.00
54	3	2024-10-21	16250.00
55	1	2024-09-18	1350.00
56	18	2024-09-21	16950.00
57	19	2024-07-24	26800.00
58	8	2024-06-23	3430.00
59	6	2024-07-01	3750.00
60	7	2024-06-10	2100.00
61	16	2024-03-09	600.00
62	18	2024-02-01	8700.00
63	2	2024-06-03	20650.00
64	13	2024-12-23	600.00
65	6	2024-09-06	17350.00
66	20	2024-08-28	7560.00
67	6	2024-06-21	16200.00
68	10	2024-12-05	5900.00
69	11	2024-01-24	90.00
70	9	2024-08-13	360.00
71	13	2024-06-16	360.00
72	4	2024-05-18	360.00
73	16	2024-07-14	18950.00
74	16	2024-04-15	64500.00
75	7	2024-09-03	2230.00
76	3	2024-02-05	5920.00
77	14	2024-09-13	1400.00
78	18	2024-01-03	11990.00
79	18	2024-11-15	14750.00
80	6	2024-07-23	180.00
81	15	2024-09-14	10300.00
82	12	2024-01-13	880.00
83	7	2024-12-11	3600.00
84	13	2024-02-21	15400.00
85	5	2024-10-09	26200.00
86	17	2024-07-29	10050.00
87	4	2024-07-26	4000.00
88	3	2024-09-30	16750.00
89	3	2024-11-19	360.00
90	19	2024-01-26	11000.00
91	8	2024-11-10	8800.00
92	2	2024-11-04	1250.00
93	15	2024-07-28	12600.00
94	1	2024-09-15	4750.00
95	19	2024-03-30	18400.00
96	2	2024-08-19	11820.00
97	16	2024-05-17	1800.00
98	10	2024-12-09	78900.00
99	13	2024-09-07	1750.00
100	13	2024-03-30	1910.00
101	20	2024-08-17	8950.00
102	5	2024-10-20	3020.00
103	10	2024-10-22	9870.00
104	4	2024-06-24	9500.00
105	20	2024-12-11	3800.00
106	14	2024-08-25	3400.00
107	7	2024-03-31	150.00
108	6	2024-10-31	22500.00
109	13	2024-09-02	16950.00
110	7	2024-11-10	5820.00
111	7	2024-04-20	19760.00
112	18	2024-01-24	10400.00
113	19	2024-07-04	1230.00
114	15	2024-11-27	3800.00
115	2	2024-08-21	1800.00
116	8	2024-11-15	22560.00
117	18	2024-06-13	2200.00
118	11	2024-03-18	47750.00
119	11	2024-06-22	1250.00
120	1	2024-10-26	16050.00
\.


--
-- TOC entry 4873 (class 0 OID 26098)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, category, price) FROM stdin;
1	هاتف ذكي A10	إلكترونيات	4500.00
2	هاتف ذكي B20	إلكترونيات	5200.00
3	لابتوب X1	إلكترونيات	15500.00
4	سماعات بلوتوث	إلكترونيات	750.00
5	طابعة HP	إلكترونيات	3200.00
6	كتاب تعلم SQL	كتب	150.00
7	رواية عالمية	كتب	90.00
8	ماوس لاسلكي	إلكترونيات	250.00
9	كيبورد ميكانيكي	إلكترونيات	600.00
10	شنطة لابتوب	إكسسوارات	350.00
11	قلم ذكي	إكسسوارات	120.00
12	نظارة VR	إلكترونيات	2200.00
13	سماعات رأس احترافية	إلكترونيات	1800.00
14	USB فلاش 64GB	إلكترونيات	300.00
15	مكبر صوت بلوتوث	إلكترونيات	950.00
\.


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 217
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 20, true);


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 223
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 284, true);


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 120, true);


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 15, true);


--
-- TOC entry 4715 (class 2606 OID 26096)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 26122)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- TOC entry 4719 (class 2606 OID 26110)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 26103)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4723 (class 2606 OID 26123)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4724 (class 2606 OID 26128)
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4722 (class 2606 OID 26111)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


-- Completed on 2025-10-30 23:42:02

--
-- PostgreSQL database dump complete
--

\unrestrict 8aB3xnKRcb5QG7W6jLLGVPB7AD8oOWhKVliOweUespJCYkTReTaxQpCjuG9rr0P


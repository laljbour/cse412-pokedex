--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-30 22:05:34

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
-- TOC entry 262 (class 1259 OID 26476)
-- Name: pokemon; Type: TABLE; Schema: public; Owner: supabase_admin
--

CREATE TABLE public.pokemon (
    no bigint NOT NULL,
    name text NOT NULL,
    type_1 text NOT NULL,
    type_2 text,
    total bigint NOT NULL,
    hp bigint NOT NULL,
    attack bigint NOT NULL,
    defense bigint NOT NULL,
    sp_atk bigint NOT NULL,
    sp_def bigint NOT NULL,
    speed bigint NOT NULL,
    generation bigint NOT NULL,
    legendary boolean NOT NULL,
    catch_rate bigint DEFAULT '20'::bigint
);


ALTER TABLE public.pokemon OWNER TO supabase_admin;

--
-- TOC entry 2888 (class 0 OID 26476)
-- Dependencies: 262
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--

COPY public.pokemon (no, name, type_1, type_2, total, hp, attack, defense, sp_atk, sp_def, speed, generation, legendary, catch_rate) FROM stdin;
352	Kecleon	Normal	\N	440	60	90	70	60	120	40	3	f	20
489	Phione	Water	\N	480	80	80	80	80	80	80	4	f	20
490	Manaphy	Water	\N	600	100	100	100	100	100	100	4	f	20
492	ShayminLand Forme	Grass	\N	600	100	100	100	100	100	100	4	t	20
493	Arceus	Normal	\N	720	120	120	120	120	120	120	4	t	20
517	Munna	Psychic	\N	292	76	25	45	67	55	24	5	f	20
518	Musharna	Psychic	\N	487	116	55	85	107	95	29	5	f	20
570	Zorua	Dark	\N	330	40	65	40	80	40	65	5	f	20
571	Zoroark	Dark	\N	510	60	105	60	120	60	105	5	f	20
592	Frillish	Water	Ghost	335	55	40	50	65	85	40	5	f	20
593	Jellicent	Water	Ghost	480	100	60	70	85	105	60	5	f	20
602	Tynamo	Electric	\N	275	35	55	40	45	40	60	5	f	20
603	Eelektrik	Electric	\N	405	65	85	70	75	70	40	5	f	20
604	Eelektross	Electric	\N	515	85	115	80	105	80	50	5	f	20
619	Mienfoo	Fighting	\N	350	45	85	50	55	50	65	5	f	20
620	Mienshao	Fighting	\N	510	65	125	60	95	60	105	5	f	20
621	Druddigon	Dragon	\N	485	77	120	90	60	90	48	5	f	20
636	Larvesta	Bug	Fire	360	55	85	55	50	55	60	5	f	20
637	Volcarona	Bug	Fire	550	85	60	65	135	105	100	5	f	20
647	KeldeoOrdinary Forme	Water	Fighting	580	91	72	90	129	90	108	5	f	20
648	MeloettaAria Forme	Normal	Psychic	600	100	77	77	128	128	90	5	f	20
664	Scatterbug	Bug	\N	200	38	35	40	27	25	35	6	f	20
665	Spewpa	Bug	\N	213	45	22	60	27	30	29	6	f	20
666	Vivillon	Bug	Flying	411	80	52	50	90	50	89	6	f	20
669	Flabébé	Fairy	\N	303	44	38	39	61	79	42	6	f	20
670	Floette	Fairy	\N	371	54	45	47	75	98	52	6	f	20
671	Florges	Fairy	\N	552	78	65	68	112	154	75	6	f	20
672	Skiddo	Grass	\N	350	66	65	48	62	57	52	6	f	20
673	Gogoat	Grass	\N	531	123	100	62	97	81	68	6	f	20
674	Pancham	Fighting	\N	348	67	82	62	46	48	43	6	f	20
675	Pangoro	Fighting	Dark	495	95	124	78	69	71	58	6	f	20
676	Furfrou	Normal	\N	472	75	80	60	65	90	102	6	f	20
679	Honedge	Steel	Ghost	325	45	80	100	35	37	28	6	f	20
680	Doublade	Steel	Ghost	448	59	110	150	45	49	35	6	f	20
681	AegislashBlade Forme	Steel	Ghost	520	60	150	50	150	50	60	6	f	20
682	Spritzee	Fairy	\N	341	78	52	60	63	65	23	6	f	20
683	Aromatisse	Fairy	\N	462	101	72	72	99	89	29	6	f	20
684	Swirlix	Fairy	\N	341	62	48	66	59	57	49	6	f	20
685	Slurpuff	Fairy	\N	480	82	80	86	85	75	72	6	f	20
686	Inkay	Dark	Psychic	288	53	54	53	37	46	45	6	f	20
687	Malamar	Dark	Psychic	482	86	92	88	68	75	73	6	f	20
688	Binacle	Rock	Water	306	42	52	67	39	56	50	6	f	20
689	Barbaracle	Rock	Water	500	72	105	115	54	86	68	6	f	20
690	Skrelp	Poison	Water	320	50	60	60	60	60	30	6	f	20
691	Dragalge	Poison	Dragon	494	65	75	90	97	123	44	6	f	20
692	Clauncher	Water	\N	330	50	53	62	58	63	44	6	f	20
693	Clawitzer	Water	\N	500	71	73	88	120	89	59	6	f	20
694	Helioptile	Electric	Normal	289	44	38	33	61	43	70	6	f	20
695	Heliolisk	Electric	Normal	481	62	55	52	109	94	109	6	f	20
696	Tyrunt	Rock	Dragon	362	58	89	77	45	45	48	6	f	20
697	Tyrantrum	Rock	Dragon	521	82	121	119	69	59	71	6	f	20
698	Amaura	Rock	Ice	362	77	59	50	67	63	46	6	f	20
699	Aurorus	Rock	Ice	521	123	77	72	99	92	58	6	f	20
700	Sylveon	Fairy	\N	525	95	65	65	110	130	60	6	f	20
701	Hawlucha	Fighting	Flying	500	78	92	75	74	63	118	6	f	20
702	Dedenne	Electric	Fairy	431	67	58	57	81	67	101	6	f	20
703	Carbink	Rock	Fairy	500	50	50	150	50	150	50	6	f	20
704	Goomy	Dragon	\N	300	45	50	35	55	75	40	6	f	20
705	Sliggoo	Dragon	\N	452	68	75	53	83	113	60	6	f	20
706	Goodra	Dragon	\N	600	90	100	70	110	150	80	6	f	20
708	Phantump	Ghost	Grass	309	43	70	48	50	60	38	6	f	20
709	Trevenant	Ghost	Grass	474	85	110	76	65	82	56	6	f	20
710	PumpkabooAverage Size	Ghost	Grass	335	49	66	70	44	55	51	6	f	20
711	GourgeistAverage Size	Ghost	Grass	494	65	90	122	58	75	84	6	f	20
712	Bergmite	Ice	\N	304	55	69	85	32	35	28	6	f	20
713	Avalugg	Ice	\N	514	95	117	184	44	46	28	6	f	20
716	Xerneas	Fairy	\N	680	126	131	95	131	98	99	6	t	20
717	Yveltal	Dark	Flying	680	126	131	95	131	98	99	6	t	20
718	Zygarde50% Forme	Dragon	Ground	600	108	100	121	81	95	95	6	t	20
719	Diancie	Rock	Fairy	600	50	100	150	100	150	50	6	t	20
720	HoopaHoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6	t	20
721	Volcanion	Fire	Water	600	80	110	120	130	90	70	6	t	20
2	Ivysaur	Grass	Poison	405	60	62	63	80	80	60	1	f	10
3	Venusaur	Grass	Poison	525	80	82	83	100	100	80	1	f	5
4	Charmander	Fire	\N	309	39	52	43	60	50	65	1	f	20
5	Charmeleon	Fire	\N	405	58	64	58	80	65	80	1	f	10
6	Charizard	Fire	Flying	534	78	84	78	109	85	100	1	f	5
7	Squirtle	Water	\N	314	44	48	65	50	64	43	1	f	20
8	Wartortle	Water	\N	405	59	63	80	65	80	58	1	f	10
9	Blastoise	Water	\N	530	79	83	100	85	105	78	1	f	5
10	Caterpie	Bug	\N	195	45	30	35	20	20	45	1	f	50
11	Metapod	Bug	\N	205	50	20	55	25	25	30	1	f	25
12	Butterfree	Bug	Flying	395	60	45	50	90	80	70	1	f	12
13	Weedle	Bug	Poison	195	40	35	30	20	20	50	1	f	50
14	Kakuna	Bug	Poison	205	45	25	50	25	25	35	1	f	25
15	Beedrill	Bug	Poison	395	65	90	40	45	80	75	1	f	12
16	Pidgey	Normal	Flying	251	40	45	40	35	35	56	1	f	50
17	Pidgeotto	Normal	Flying	349	63	60	55	50	50	71	1	f	25
18	Pidgeot	Normal	Flying	479	83	80	75	70	70	101	1	f	12
19	Rattata	Normal	\N	253	30	56	35	25	35	72	1	f	50
20	Raticate	Normal	\N	413	55	81	60	50	70	97	1	f	20
21	Spearow	Normal	Flying	262	40	60	30	31	31	70	1	f	50
22	Fearow	Normal	Flying	442	65	90	65	61	61	100	1	f	20
23	Ekans	Poison	\N	288	35	60	44	40	54	55	1	f	50
24	Arbok	Poison	\N	438	60	85	69	65	79	80	1	f	20
25	Pikachu	Electric	\N	320	35	55	40	50	50	90	1	f	20
26	Raichu	Electric	\N	485	60	90	55	90	80	110	1	f	10
27	Sandshrew	Ground	\N	300	50	75	85	20	30	40	1	f	50
28	Sandslash	Ground	\N	450	75	100	110	45	55	65	1	f	20
29	Nidoran♀	Poison	\N	275	55	47	52	40	40	41	1	f	50
30	Nidorina	Poison	\N	365	70	62	67	55	55	56	1	f	25
31	Nidoqueen	Poison	Ground	505	90	92	87	75	85	76	1	f	12
32	Nidoran♂	Poison	\N	273	46	57	40	40	40	50	1	f	50
33	Nidorino	Poison	\N	365	61	72	57	55	55	65	1	f	25
34	Nidoking	Poison	Ground	505	81	102	77	85	75	85	1	f	12
35	Clefairy	Fairy	\N	323	70	45	48	60	65	35	1	f	30
36	Clefable	Fairy	\N	483	95	70	73	95	90	60	1	f	10
37	Vulpix	Fire	\N	299	38	41	40	50	65	65	1	f	30
38	Ninetales	Fire	\N	505	73	76	75	81	100	100	1	f	10
39	Jigglypuff	Normal	Fairy	270	115	45	20	45	25	20	1	f	50
40	Wigglytuff	Normal	Fairy	435	140	70	45	85	50	45	1	f	20
41	Zubat	Poison	Flying	245	40	45	35	30	40	55	1	f	50
42	Golbat	Poison	Flying	455	75	80	70	65	75	90	1	f	20
43	Oddish	Grass	Poison	320	45	50	55	75	65	30	1	f	60
44	Gloom	Grass	Poison	395	60	65	70	85	75	40	1	f	30
45	Vileplume	Grass	Poison	490	75	80	85	110	90	50	1	f	15
46	Paras	Bug	Grass	285	35	70	55	45	55	25	1	f	40
47	Parasect	Bug	Grass	405	60	95	80	60	80	30	1	f	20
48	Venonat	Bug	Poison	305	60	55	50	40	55	45	1	f	50
49	Venomoth	Bug	Poison	450	70	65	60	90	75	90	1	f	20
50	Diglett	Ground	\N	265	10	55	25	35	45	95	1	f	50
51	Dugtrio	Ground	\N	405	35	80	50	50	70	120	1	f	20
52	Meowth	Normal	\N	290	40	45	35	40	40	90	1	f	50
53	Persian	Normal	\N	440	65	70	60	65	65	115	1	f	20
54	Psyduck	Water	\N	320	50	52	48	65	50	55	1	f	50
55	Golduck	Water	\N	500	80	82	78	95	80	85	1	f	20
56	Mankey	Fighting	\N	305	40	80	35	35	45	70	1	f	50
57	Primeape	Fighting	\N	455	65	105	60	60	70	95	1	f	20
58	Growlithe	Fire	\N	350	55	70	45	70	50	60	1	f	30
59	Arcanine	Fire	\N	555	90	110	80	100	80	95	1	f	10
60	Poliwag	Water	\N	300	40	50	40	40	40	90	1	f	50
61	Poliwhirl	Water	\N	385	65	65	65	50	50	90	1	f	25
62	Poliwrath	Water	Fighting	510	90	95	95	70	90	70	1	f	12
63	Abra	Psychic	\N	310	25	20	15	105	55	90	1	f	50
64	Kadabra	Psychic	\N	400	40	35	30	120	70	105	1	f	25
65	Alakazam	Psychic	\N	500	55	50	45	135	95	120	1	f	10
66	Machop	Fighting	\N	305	70	80	50	35	35	35	1	f	50
67	Machoke	Fighting	\N	405	80	100	70	50	60	45	1	f	25
68	Machamp	Fighting	\N	505	90	130	80	65	85	55	1	f	10
69	Bellsprout	Grass	Poison	300	50	75	35	70	30	40	1	f	50
70	Weepinbell	Grass	Poison	390	65	90	50	85	45	55	1	f	25
71	Victreebel	Grass	Poison	490	80	105	65	100	70	70	1	f	12
72	Tentacool	Water	Poison	335	40	40	35	50	100	70	1	f	50
73	Tentacruel	Water	Poison	515	80	70	65	80	120	100	1	f	20
74	Geodude	Rock	Ground	300	40	80	100	30	30	20	1	f	50
75	Graveler	Rock	Ground	390	55	95	115	45	45	35	1	f	25
76	Golem	Rock	Ground	495	80	120	130	55	65	45	1	f	12
77	Ponyta	Fire	\N	410	50	85	55	65	65	90	1	f	40
78	Rapidash	Fire	\N	500	65	100	70	80	80	105	1	f	15
79	Slowpoke	Water	Psychic	315	90	65	65	40	40	15	1	f	50
80	Slowbro	Water	Psychic	490	95	75	110	100	80	30	1	f	20
81	Magnemite	Electric	Steel	325	25	35	70	95	55	45	1	f	50
82	Magneton	Electric	Steel	465	50	60	95	120	70	70	1	f	20
83	Farfetch'd	Normal	Flying	352	52	65	55	58	62	60	1	f	30
84	Doduo	Normal	Flying	310	35	85	45	35	35	75	1	f	50
85	Dodrio	Normal	Flying	460	60	110	70	60	60	100	1	f	20
86	Seel	Water	\N	325	65	45	55	45	70	45	1	f	50
87	Dewgong	Water	Ice	475	90	70	80	70	95	70	1	f	20
88	Grimer	Poison	\N	325	80	80	50	40	50	25	1	f	50
89	Muk	Poison	\N	500	105	105	75	65	100	50	1	f	20
90	Shellder	Water	\N	305	30	65	100	45	25	40	1	f	50
91	Cloyster	Water	Ice	525	50	95	180	85	45	70	1	f	20
92	Gastly	Ghost	Poison	310	30	35	30	100	35	80	1	f	40
93	Haunter	Ghost	Poison	405	45	50	45	115	55	95	1	f	20
94	Gengar	Ghost	Poison	500	60	65	60	130	75	110	1	f	10
95	Onix	Rock	Ground	385	35	45	160	30	45	70	1	f	20
96	Drowzee	Psychic	\N	328	60	48	45	43	90	42	1	f	50
97	Hypno	Psychic	\N	483	85	73	70	73	115	67	1	f	20
98	Krabby	Water	\N	325	30	105	90	25	25	50	1	f	50
99	Kingler	Water	\N	475	55	130	115	50	50	75	1	f	20
100	Voltorb	Electric	\N	330	40	30	50	55	55	100	1	f	50
101	Electrode	Electric	\N	480	60	50	70	80	80	140	1	f	20
102	Exeggcute	Grass	Psychic	325	60	40	80	60	45	40	1	f	50
103	Exeggutor	Grass	Psychic	520	95	95	85	125	65	55	1	f	20
104	Cubone	Ground	\N	320	50	50	95	40	50	35	1	f	40
105	Marowak	Ground	\N	425	60	80	110	50	80	45	1	f	15
106	Hitmonlee	Fighting	\N	455	50	120	53	35	110	87	1	f	20
107	Hitmonchan	Fighting	\N	455	50	105	79	35	110	76	1	f	20
108	Lickitung	Normal	\N	385	90	55	75	60	75	30	1	f	20
109	Koffing	Poison	\N	340	40	65	95	60	45	35	1	f	50
110	Weezing	Poison	\N	490	65	90	120	85	70	60	1	f	20
111	Rhyhorn	Ground	Rock	345	80	85	95	30	30	25	1	f	50
112	Rhydon	Ground	Rock	485	105	130	120	45	45	40	1	f	5
113	Chansey	Normal	\N	450	250	5	5	35	105	50	1	f	20
114	Tangela	Grass	\N	435	65	55	115	100	40	60	1	f	40
115	Kangaskhan	Normal	\N	490	105	95	80	40	80	90	1	f	20
116	Horsea	Water	\N	295	30	40	70	70	25	60	1	f	50
117	Seadra	Water	\N	440	55	65	95	95	45	85	1	f	20
118	Goldeen	Water	\N	320	45	67	60	35	50	63	1	f	50
119	Seaking	Water	\N	450	80	92	65	65	80	68	1	f	20
120	Staryu	Water	\N	340	30	45	55	70	55	85	1	f	50
121	Starmie	Water	Psychic	520	60	75	85	100	85	115	1	f	20
122	Mr. Mime	Psychic	Fairy	460	40	45	65	100	120	90	1	f	30
123	Scyther	Bug	Flying	500	70	110	80	55	80	105	1	f	30
124	Jynx	Ice	Psychic	455	65	50	35	115	95	95	1	f	30
125	Electabuzz	Electric	\N	490	65	83	57	95	85	105	1	f	20
126	Magmar	Fire	\N	495	65	95	57	100	85	93	1	f	20
127	Pinsir	Bug	\N	500	65	125	100	55	70	85	1	f	30
128	Tauros	Normal	\N	490	75	100	95	40	70	110	1	f	30
129	Magikarp	Water	\N	200	20	10	55	15	20	80	1	f	70
130	Gyarados	Water	Flying	540	95	125	79	60	100	81	1	f	10
131	Lapras	Water	Ice	535	130	85	80	85	95	60	1	f	5
132	Ditto	Normal	\N	288	48	48	48	48	48	48	1	f	20
133	Eevee	Normal	\N	325	55	55	50	45	65	55	1	f	40
134	Vaporeon	Water	\N	525	130	65	60	110	95	65	1	f	12
135	Jolteon	Electric	\N	525	65	65	60	110	95	130	1	f	12
136	Flareon	Fire	\N	525	65	130	60	95	110	65	1	f	12
137	Porygon	Normal	\N	395	65	60	70	85	75	40	1	f	40
138	Omanyte	Rock	Water	355	35	40	100	90	55	35	1	f	40
139	Omastar	Rock	Water	495	70	60	125	115	70	55	1	f	15
140	Kabuto	Rock	Water	355	30	80	90	55	45	55	1	f	40
141	Kabutops	Rock	Water	495	60	115	105	65	70	80	1	f	15
142	Aerodactyl	Rock	Flying	515	80	105	65	60	75	130	1	f	20
143	Snorlax	Normal	\N	540	160	110	65	65	110	30	1	f	5
144	Articuno	Ice	Flying	580	90	85	100	95	125	85	1	t	3
145	Zapdos	Electric	Flying	580	90	90	85	125	90	100	1	t	3
146	Moltres	Fire	Flying	580	90	100	90	125	85	90	1	t	3
147	Dratini	Dragon	\N	300	41	64	45	50	50	50	1	f	40
148	Dragonair	Dragon	\N	420	61	84	65	70	70	70	1	f	10
149	Dragonite	Dragon	Flying	600	91	134	95	100	100	80	1	f	5
150	Mewtwo	Psychic	\N	680	106	110	90	154	90	130	1	t	2
151	Mew	Psychic	\N	600	100	100	100	100	100	100	1	f	10000
152	Chikorita	Grass	\N	318	45	49	65	49	65	45	2	f	20
153	Bayleef	Grass	\N	405	60	62	80	63	80	60	2	f	12
154	Meganium	Grass	\N	525	80	82	100	83	100	80	2	f	5
155	Cyndaquil	Fire	\N	309	39	52	43	60	50	65	2	f	20
156	Quilava	Fire	\N	405	58	64	58	80	65	80	2	f	12
157	Typhlosion	Fire	\N	534	78	84	78	109	85	100	2	f	5
158	Totodile	Water	\N	314	50	65	64	44	48	43	2	f	20
159	Croconaw	Water	\N	405	65	80	80	59	63	58	2	f	12
160	Feraligatr	Water	\N	530	85	105	100	79	83	78	2	f	5
161	Sentret	Normal	\N	215	35	46	34	35	45	20	2	f	50
162	Furret	Normal	\N	415	85	76	64	45	55	90	2	f	15
163	Hoothoot	Normal	Flying	262	60	30	30	36	56	50	2	f	50
164	Noctowl	Normal	Flying	442	100	50	50	76	96	70	2	f	15
165	Ledyba	Bug	Flying	265	40	20	30	40	80	55	2	f	50
166	Ledian	Bug	Flying	390	55	35	50	55	110	85	2	f	15
167	Spinarak	Bug	Poison	250	40	60	40	40	40	30	2	f	50
168	Ariados	Bug	Poison	390	70	90	70	60	60	40	2	f	15
169	Crobat	Poison	Flying	535	85	90	80	70	80	130	2	f	10
170	Chinchou	Water	Electric	330	75	38	38	56	56	67	2	f	40
171	Lanturn	Water	Electric	460	125	58	58	76	76	67	2	f	15
172	Pichu	Electric	\N	205	20	40	15	35	35	60	2	f	0
173	Cleffa	Fairy	\N	218	50	25	28	45	55	15	2	f	0
174	Igglybuff	Normal	Fairy	210	90	30	15	40	20	15	2	f	0
175	Togepi	Fairy	\N	245	35	20	65	40	65	20	2	f	0
176	Togetic	Fairy	Flying	405	55	40	85	80	105	40	2	f	20
177	Natu	Psychic	Flying	320	40	50	45	70	45	70	2	f	40
178	Xatu	Psychic	Flying	470	65	75	70	95	70	95	2	f	15
179	Mareep	Electric	\N	280	55	40	40	65	45	35	2	f	50
180	Flaaffy	Electric	\N	365	70	55	55	80	60	45	2	f	25
181	Ampharos	Electric	\N	510	90	75	85	115	90	55	2	f	12
182	Bellossom	Grass	\N	490	75	80	95	90	100	50	2	f	5
183	Marill	Water	Fairy	250	70	20	50	20	50	40	2	f	50
184	Azumarill	Water	Fairy	420	100	50	80	60	80	50	2	f	15
185	Sudowoodo	Rock	\N	410	70	100	115	30	65	30	2	f	12
186	Politoed	Water	\N	500	90	75	75	90	100	70	2	f	10
187	Hoppip	Grass	Flying	250	35	35	40	35	55	50	2	f	50
188	Skiploom	Grass	Flying	340	55	45	50	45	65	80	2	f	25
189	Jumpluff	Grass	Flying	460	75	55	70	55	95	110	2	f	12
190	Aipom	Normal	\N	360	55	70	55	40	55	85	2	f	20
191	Sunkern	Grass	\N	180	30	30	30	30	30	30	2	f	50
192	Sunflora	Grass	\N	425	75	75	55	105	85	30	2	f	10
193	Yanma	Bug	Flying	390	65	65	45	75	45	95	2	f	30
194	Wooper	Water	Ground	210	55	45	45	25	25	15	2	f	40
195	Quagsire	Water	Ground	430	95	85	85	65	65	35	2	f	15
196	Espeon	Psychic	\N	525	65	65	60	130	95	110	2	f	12
197	Umbreon	Dark	\N	525	95	65	110	60	130	65	2	f	12
198	Murkrow	Dark	Flying	405	60	85	42	85	42	91	2	f	20
199	Slowking	Water	Psychic	490	95	75	80	100	110	30	2	f	10
200	Misdreavus	Ghost	\N	435	60	60	60	85	85	85	2	f	30
201	Unown	Psychic	\N	336	48	72	48	72	48	48	2	f	30
202	Wobbuffet	Psychic	\N	405	190	33	58	33	58	33	2	f	25
203	Girafarig	Normal	Psychic	455	70	80	65	90	65	85	2	f	30
204	Pineco	Bug	\N	290	50	65	90	35	35	15	2	f	40
205	Forretress	Bug	Steel	465	75	90	140	60	60	40	2	f	15
206	Dunsparce	Normal	\N	415	100	70	70	65	65	45	2	f	30
207	Gligar	Ground	Flying	430	65	75	105	35	65	85	2	f	20
208	Steelix	Steel	Ground	510	75	85	200	55	65	30	2	f	10
209	Snubbull	Fairy	\N	300	60	80	50	40	40	30	2	f	40
210	Granbull	Fairy	\N	450	90	120	75	60	60	45	2	f	15
211	Qwilfish	Water	Poison	430	65	95	75	55	55	85	2	f	30
212	Scizor	Bug	Steel	500	70	130	100	55	80	65	2	f	5
214	Heracross	Bug	Fighting	500	80	125	75	40	95	85	2	f	30
215	Sneasel	Dark	Ice	430	55	95	55	35	75	115	2	f	20
216	Teddiursa	Normal	\N	330	60	80	50	50	50	40	2	f	50
217	Ursaring	Normal	\N	500	90	130	75	75	75	55	2	f	15
218	Slugma	Fire	\N	250	40	40	40	70	40	20	2	f	30
219	Magcargo	Fire	Rock	410	50	50	120	80	80	30	2	f	12
220	Swinub	Ice	Ground	250	50	50	40	30	30	50	2	f	30
221	Piloswine	Ice	Ground	450	100	100	80	60	60	50	2	f	12
222	Corsola	Water	Rock	380	55	55	85	65	85	35	2	f	30
223	Remoraid	Water	\N	300	35	65	35	65	35	65	2	f	50
224	Octillery	Water	\N	480	75	105	75	105	75	45	2	f	15
225	Delibird	Ice	Flying	330	45	55	45	65	45	75	2	f	20
226	Mantine	Water	Flying	465	65	40	70	80	140	70	2	f	30
227	Skarmory	Steel	Flying	465	65	80	140	40	70	70	2	f	20
228	Houndour	Dark	Fire	330	45	60	30	80	50	65	2	f	40
229	Houndoom	Dark	Fire	500	75	90	50	110	80	95	2	f	15
230	Kingdra	Water	Dragon	540	75	95	95	95	95	85	2	f	10
231	Phanpy	Ground	\N	330	90	60	60	40	40	40	2	f	50
232	Donphan	Ground	\N	500	90	120	120	60	60	50	2	f	12
233	Porygon2	Normal	\N	515	85	80	90	105	95	60	2	f	5
234	Stantler	Normal	\N	465	73	95	62	85	65	85	2	f	30
235	Smeargle	Normal	\N	250	55	20	35	20	45	75	2	f	25
236	Tyrogue	Fighting	\N	210	35	35	35	35	35	35	2	f	0
237	Hitmontop	Fighting	\N	455	50	95	95	35	110	70	2	f	10
238	Smoochum	Ice	Psychic	305	45	30	15	85	65	65	2	f	25
239	Elekid	Electric	\N	360	45	63	37	65	55	95	2	f	0
240	Magby	Fire	\N	365	45	75	37	70	55	83	2	f	0
241	Miltank	Normal	\N	490	95	80	105	40	70	100	2	f	20
242	Blissey	Normal	\N	540	255	10	10	75	135	55	2	f	5
243	Raikou	Electric	\N	580	90	85	75	115	100	115	2	t	2
244	Entei	Fire	\N	580	115	115	85	90	75	100	2	t	2
245	Suicune	Water	\N	580	100	75	115	90	115	85	2	t	2
246	Larvitar	Rock	Ground	300	50	64	50	45	50	41	2	f	40
247	Pupitar	Rock	Ground	410	70	84	70	65	70	51	2	f	10
248	Tyranitar	Rock	Dark	600	100	134	110	95	100	61	2	f	5
249	Lugia	Psychic	Flying	680	106	90	130	90	154	110	2	t	2
250	Ho-oh	Fire	Flying	680	106	130	90	110	154	90	2	t	2
251	Celebi	Psychic	Grass	600	100	100	100	100	100	100	2	f	10000
252	Treecko	Grass	\N	310	40	45	35	65	55	70	3	f	20
253	Grovyle	Grass	\N	405	50	65	45	85	65	95	3	f	10
254	Sceptile	Grass	\N	530	70	85	65	105	85	120	3	f	5
255	Torchic	Fire	\N	310	45	60	40	70	50	45	3	f	20
256	Combusken	Fire	Fighting	405	60	85	60	85	60	55	3	f	10
257	Blaziken	Fire	Fighting	530	80	120	70	110	70	80	3	f	5
258	Mudkip	Water	\N	310	50	70	50	50	50	40	3	f	20
259	Marshtomp	Water	Ground	405	70	85	70	60	70	50	3	f	10
260	Swampert	Water	Ground	535	100	110	90	85	90	60	3	f	5
261	Poochyena	Dark	\N	220	35	55	35	30	30	35	3	f	50
262	Mightyena	Dark	\N	420	70	90	70	60	60	70	3	f	20
263	Zigzagoon	Normal	\N	240	38	30	41	30	41	60	3	f	50
264	Linoone	Normal	\N	420	78	70	61	50	61	100	3	f	20
265	Wurmple	Bug	\N	195	45	45	35	20	30	20	3	f	50
266	Silcoon	Bug	\N	205	50	35	55	25	25	15	3	f	25
267	Beautifly	Bug	Flying	395	60	70	50	100	50	65	3	f	12
268	Cascoon	Bug	\N	205	50	35	55	25	25	15	3	f	25
269	Dustox	Bug	Poison	385	60	50	70	50	90	65	3	f	12
270	Lotad	Water	Grass	220	40	30	30	40	50	30	3	f	50
271	Lombre	Water	Grass	340	60	50	50	60	70	50	3	f	25
272	Ludicolo	Water	Grass	480	80	70	70	90	100	70	3	f	12
273	Seedot	Grass	\N	220	40	40	50	30	30	30	3	f	50
274	Nuzleaf	Grass	Dark	340	70	70	40	60	40	60	3	f	25
275	Shiftry	Grass	Dark	480	90	100	60	90	60	80	3	f	12
276	Taillow	Normal	Flying	270	40	55	30	30	30	85	3	f	50
277	Swellow	Normal	Flying	430	60	85	60	50	50	125	3	f	20
278	Wingull	Water	Flying	270	40	30	30	55	30	85	3	f	50
279	Pelipper	Water	Flying	430	60	50	100	85	70	65	3	f	20
280	Ralts	Psychic	Fairy	198	28	25	25	45	35	40	3	f	40
281	Kirlia	Psychic	Fairy	278	38	35	35	65	55	50	3	f	10
282	Gardevoir	Psychic	Fairy	518	68	65	65	125	115	80	3	f	5
283	Surskit	Bug	Water	269	40	30	32	50	52	65	3	f	50
284	Masquerain	Bug	Flying	414	70	60	62	80	82	60	3	f	20
285	Shroomish	Grass	\N	295	60	40	60	40	60	35	3	f	50
286	Breloom	Grass	Fighting	460	60	130	80	60	60	70	3	f	20
287	Slakoth	Normal	\N	280	60	60	60	35	35	30	3	f	40
288	Vigoroth	Normal	\N	440	80	80	80	55	55	90	3	f	10
289	Slaking	Normal	\N	670	150	160	100	95	65	100	3	f	5
290	Nincada	Bug	Ground	266	31	45	90	30	30	40	3	f	20
291	Ninjask	Bug	Flying	456	61	90	45	50	50	160	3	f	10
292	Shedinja	Bug	Ghost	236	1	90	45	30	30	40	3	f	5
293	Whismur	Normal	\N	240	64	51	23	51	23	28	3	f	50
294	Loudred	Normal	\N	360	84	71	43	71	43	48	3	f	25
295	Exploud	Normal	\N	490	104	91	63	91	73	68	3	f	12
296	Makuhita	Fighting	\N	237	72	60	30	20	30	25	3	f	50
297	Hariyama	Fighting	\N	474	144	120	60	40	60	50	3	f	20
298	Azurill	Normal	Fairy	190	50	20	40	20	40	20	3	f	10
299	Nosepass	Rock	\N	375	30	45	135	45	90	30	3	f	20
300	Skitty	Normal	\N	260	50	45	45	35	35	50	3	f	50
301	Delcatty	Normal	\N	380	70	65	65	55	55	70	3	f	20
302	Sableye	Dark	Ghost	380	50	75	75	65	65	50	3	f	20
303	Mawile	Steel	Fairy	380	50	85	85	55	55	50	3	f	50
304	Aron	Steel	Rock	330	50	70	100	40	40	30	3	f	50
305	Lairon	Steel	Rock	430	60	90	140	50	50	40	3	f	25
306	Aggron	Steel	Rock	530	70	110	180	60	60	50	3	f	12
307	Meditite	Fighting	Psychic	280	30	40	55	40	55	60	3	f	50
308	Medicham	Fighting	Psychic	410	60	60	75	60	75	80	3	f	20
309	Electrike	Electric	\N	295	40	45	40	65	40	65	3	f	50
310	Manectric	Electric	\N	475	70	75	60	105	60	105	3	f	20
311	Plusle	Electric	\N	405	60	50	40	85	75	95	3	f	30
312	Minun	Electric	\N	405	60	40	50	75	85	95	3	f	30
313	Volbeat	Bug	\N	400	65	73	55	47	75	85	3	f	30
314	Illumise	Bug	\N	400	65	47	55	73	75	85	3	f	30
315	Roselia	Grass	Poison	400	50	60	45	100	80	65	3	f	30
316	Gulpin	Poison	\N	302	70	43	53	43	53	40	3	f	50
317	Swalot	Poison	\N	467	100	73	83	73	83	55	3	f	20
318	Carvanha	Water	Dark	305	45	90	20	65	20	65	3	f	50
319	Sharpedo	Water	Dark	460	70	120	40	95	40	95	3	f	20
320	Wailmer	Water	\N	400	130	70	35	70	35	60	3	f	50
321	Wailord	Water	\N	500	170	90	45	90	45	60	3	f	20
322	Numel	Fire	Ground	305	60	60	40	65	45	35	3	f	50
323	Camerupt	Fire	Ground	460	70	100	70	105	75	40	3	f	20
324	Torkoal	Fire	\N	470	70	85	140	85	70	20	3	f	30
325	Spoink	Psychic	\N	330	60	25	35	70	80	60	3	f	50
326	Grumpig	Psychic	\N	470	80	45	65	90	110	80	3	f	20
327	Spinda	Normal	\N	360	60	60	60	60	60	60	3	f	30
328	Trapinch	Ground	\N	290	45	100	45	45	45	10	3	f	40
329	Vibrava	Ground	Dragon	340	50	70	50	50	50	70	3	f	10
330	Flygon	Ground	Dragon	520	80	100	80	80	80	100	3	f	5
331	Cacnea	Grass	\N	335	50	85	40	85	40	35	3	f	50
332	Cacturne	Grass	Dark	475	70	115	60	115	60	55	3	f	20
333	Swablu	Normal	Flying	310	45	40	60	40	75	50	3	f	50
334	Altaria	Dragon	Flying	490	75	70	90	70	105	80	3	f	20
335	Zangoose	Normal	\N	458	73	115	60	60	60	90	3	f	30
336	Seviper	Poison	\N	458	73	100	60	100	60	65	3	f	30
337	Lunatone	Rock	Psychic	440	70	55	65	95	85	70	3	f	30
338	Solrock	Rock	Psychic	440	70	95	85	55	65	70	3	f	30
339	Barboach	Water	Ground	288	50	48	43	46	41	60	3	f	50
340	Whiscash	Water	Ground	468	110	78	73	76	71	60	3	f	20
341	Corphish	Water	\N	308	43	80	65	50	35	35	3	f	50
342	Crawdaunt	Water	Dark	468	63	120	85	90	55	55	3	f	20
343	Baltoy	Ground	Psychic	300	40	40	55	40	70	55	3	f	50
344	Claydol	Ground	Psychic	500	60	70	105	70	120	75	3	f	20
345	Lileep	Rock	Grass	355	66	41	77	61	87	23	3	f	50
346	Cradily	Rock	Grass	495	86	81	97	81	107	43	3	f	20
347	Anorith	Rock	Bug	355	45	95	50	40	50	75	3	f	50
348	Armaldo	Rock	Bug	495	75	125	100	70	80	45	3	f	20
349	Feebas	Water	\N	200	20	15	20	10	55	80	3	f	70
350	Milotic	Water	\N	540	95	60	79	100	125	81	3	f	10
351	Castform	Normal	\N	420	70	70	70	70	70	70	3	f	30
353	Shuppet	Ghost	\N	295	44	75	35	63	33	45	3	f	40
354	Banette	Ghost	\N	455	64	115	65	83	63	65	3	f	20
355	Duskull	Ghost	\N	295	20	40	90	30	90	25	3	f	40
356	Dusclops	Ghost	\N	455	40	70	130	60	130	25	3	f	20
357	Tropius	Grass	Flying	460	99	68	83	72	87	51	3	f	30
358	Chimecho	Psychic	\N	425	65	50	70	95	80	65	3	f	30
359	Absol	Dark	\N	465	65	130	60	75	60	75	3	f	50
360	Wynaut	Psychic	\N	260	95	23	48	23	48	23	3	f	30
361	Snorunt	Ice	\N	300	50	50	50	50	50	50	3	f	50
362	Glalie	Ice	\N	480	80	80	80	80	80	80	3	f	20
363	Spheal	Ice	Water	290	70	40	50	55	50	25	3	f	50
364	Sealeo	Ice	Water	410	90	60	70	75	70	45	3	f	25
365	Walrein	Ice	Water	530	110	80	90	95	90	65	3	f	12
366	Clamperl	Water	\N	345	35	64	85	74	55	32	3	f	50
367	Huntail	Water	\N	485	55	104	105	94	75	52	3	f	20
368	Gorebyss	Water	\N	485	55	84	105	114	75	52	3	f	20
369	Relicanth	Water	Rock	485	100	90	130	45	65	55	3	f	90
370	Luvdisc	Water	\N	330	43	30	55	40	65	97	3	f	30
371	Bagon	Dragon	\N	300	45	75	60	40	30	50	3	f	40
372	Shelgon	Dragon	\N	420	65	95	100	60	50	50	3	f	10
373	Salamence	Dragon	Flying	600	95	135	80	110	80	100	3	f	5
374	Beldum	Steel	Psychic	300	40	55	80	35	60	30	3	f	40
375	Metang	Steel	Psychic	420	60	75	100	55	80	50	3	f	10
376	Metagross	Steel	Psychic	600	80	135	130	95	90	70	3	f	5
377	Regirock	Rock	\N	580	80	100	200	50	100	50	3	t	2
378	Regice	Ice	\N	580	80	50	100	100	200	50	3	t	2
379	Registeel	Steel	\N	580	80	75	150	75	150	50	3	t	2
380	Latias	Dragon	Psychic	600	80	80	90	110	130	110	3	t	2
381	Latios	Dragon	Psychic	600	80	90	80	130	110	110	3	t	2
382	Kyogre	Water	\N	670	100	100	90	150	140	90	3	t	2
383	Groudon	Ground	\N	670	100	150	140	100	90	90	3	t	2
384	Rayquaza	Dragon	Flying	680	105	150	90	150	90	95	3	t	2
385	Jirachi	Steel	Psychic	600	100	100	100	100	100	100	3	t	10000
386	DeoxysNormal Forme	Psychic	\N	600	50	150	50	150	50	150	3	t	2
387	Turtwig	Grass	\N	318	55	68	64	45	55	31	4	f	20
388	Grotle	Grass	\N	405	75	89	85	55	65	36	4	f	10
389	Torterra	Grass	Ground	525	95	109	105	75	85	56	4	f	5
390	Chimchar	Fire	\N	309	44	58	44	58	44	61	4	f	20
391	Monferno	Fire	Fighting	405	64	78	52	78	52	81	4	f	10
392	Infernape	Fire	Fighting	534	76	104	71	104	71	108	4	f	5
393	Piplup	Water	\N	314	53	51	53	61	56	40	4	f	20
394	Prinplup	Water	\N	405	64	66	68	81	76	50	4	f	10
395	Empoleon	Water	Steel	530	84	86	88	111	101	60	4	f	5
396	Starly	Normal	Flying	245	40	55	30	30	30	60	4	f	50
397	Staravia	Normal	Flying	340	55	75	50	40	40	80	4	f	25
398	Staraptor	Normal	Flying	485	85	120	70	50	60	100	4	f	12
399	Bidoof	Normal	\N	250	59	45	40	35	40	31	4	f	50
400	Bibarel	Normal	Water	410	79	85	60	55	60	71	4	f	20
401	Kricketot	Bug	\N	194	37	25	41	25	41	25	4	f	50
402	Kricketune	Bug	\N	384	77	85	51	55	51	65	4	f	20
403	Shinx	Electric	\N	263	45	65	34	40	34	45	4	f	50
404	Luxio	Electric	\N	363	60	85	49	60	49	60	4	f	25
405	Luxray	Electric	\N	523	80	120	79	95	79	70	4	f	12
406	Budew	Grass	Poison	280	40	30	35	50	70	55	4	f	10
407	Roserade	Grass	Poison	515	60	70	65	125	105	90	4	f	15
408	Cranidos	Rock	\N	350	67	125	40	30	30	58	4	f	50
409	Rampardos	Rock	\N	495	97	165	60	65	50	58	4	f	20
410	Shieldon	Rock	Steel	350	30	42	118	42	88	30	4	f	50
411	Bastiodon	Rock	Steel	495	60	52	168	47	138	30	4	f	20
412	Burmy	Bug	\N	224	40	29	45	29	45	36	4	f	50
413	WormadamPlant Cloak	Bug	Grass	424	60	59	85	79	105	36	4	f	15
414	Mothim	Bug	Flying	424	70	94	50	94	50	66	4	f	15
415	Combee	Bug	Flying	244	30	30	42	30	42	70	4	f	15
416	Vespiquen	Bug	Flying	474	70	80	102	80	102	40	4	f	15
417	Pachirisu	Electric	\N	405	60	45	70	45	90	95	4	f	30
418	Buizel	Water	\N	330	55	65	35	60	30	85	4	f	50
419	Floatzel	Water	\N	495	85	105	55	85	50	115	4	f	20
420	Cherubi	Grass	\N	275	45	35	45	62	53	35	4	f	50
421	Cherrim	Grass	\N	450	70	60	70	87	78	85	4	f	10
422	Shellos	Water	\N	325	76	48	48	57	62	34	4	f	50
423	Gastrodon	Water	Ground	475	111	83	68	92	82	39	4	f	20
424	Ambipom	Normal	\N	482	75	100	66	60	66	115	4	f	20
425	Drifloon	Ghost	Flying	348	90	50	34	60	44	70	4	f	40
426	Drifblim	Ghost	Flying	498	150	80	44	90	54	80	4	f	20
427	Buneary	Normal	\N	350	55	66	44	44	56	85	4	f	50
428	Lopunny	Normal	\N	480	65	76	84	54	96	105	4	f	20
429	Mismagius	Ghost	\N	495	60	60	60	105	105	105	4	f	10
430	Honchkrow	Dark	Flying	505	100	125	52	105	52	71	4	f	10
431	Glameow	Normal	\N	310	49	55	42	42	37	85	4	f	40
432	Purugly	Normal	\N	452	71	82	64	64	59	112	4	f	15
433	Chingling	Psychic	\N	285	45	30	50	65	50	45	4	f	10
434	Stunky	Poison	Dark	329	63	63	47	41	41	74	4	f	50
435	Skuntank	Poison	Dark	479	103	93	67	71	61	84	4	f	20
436	Bronzor	Steel	Psychic	300	57	24	86	24	86	23	4	f	50
437	Bronzong	Steel	Psychic	500	67	89	116	79	116	33	4	f	20
438	Bonsly	Rock	\N	290	50	80	95	10	45	10	4	f	10
439	Mime Jr.	Psychic	Fairy	310	20	25	45	70	90	60	4	f	10
440	Happiny	Normal	\N	220	100	5	5	15	65	30	4	f	10
441	Chatot	Normal	Flying	411	76	65	45	92	42	91	4	f	30
442	Spiritomb	Ghost	Dark	485	50	92	108	92	108	35	4	f	10
443	Gible	Dragon	Ground	300	58	70	45	40	45	42	4	f	40
444	Gabite	Dragon	Ground	410	68	90	65	50	55	82	4	f	10
445	Garchomp	Dragon	Ground	600	108	130	95	80	85	102	4	f	5
446	Munchlax	Normal	\N	390	135	85	40	40	85	5	4	f	10
447	Riolu	Fighting	\N	285	40	70	40	35	40	60	4	f	0
448	Lucario	Fighting	Steel	525	70	110	70	115	70	90	4	f	10
449	Hippopotas	Ground	\N	330	68	72	78	38	42	32	4	f	40
450	Hippowdon	Ground	\N	525	108	112	118	68	72	47	4	f	15
451	Skorupi	Poison	Bug	330	40	50	90	30	55	65	4	f	40
452	Drapion	Poison	Dark	500	70	90	110	60	75	95	4	f	15
453	Croagunk	Poison	Fighting	300	48	61	40	61	40	50	4	f	40
454	Toxicroak	Poison	Fighting	490	83	106	65	86	65	85	4	f	15
455	Carnivine	Grass	\N	454	74	100	72	90	72	46	4	f	90
456	Finneon	Water	\N	330	49	49	56	49	61	66	4	f	50
457	Lumineon	Water	\N	460	69	69	76	69	86	91	4	f	20
458	Mantyke	Water	Flying	345	45	20	50	60	120	50	4	f	10
459	Snover	Grass	Ice	334	60	62	50	62	60	40	4	f	30
460	Abomasnow	Grass	Ice	494	90	92	75	92	85	60	4	f	12
461	Weavile	Dark	Ice	510	70	120	65	45	85	125	4	f	15
462	Magnezone	Electric	Steel	535	70	70	115	130	90	60	4	f	12
463	Lickilicky	Normal	\N	515	110	85	95	80	95	50	4	f	15
464	Rhyperior	Ground	Rock	535	115	140	130	55	55	40	4	f	5
465	Tangrowth	Grass	\N	535	100	100	125	110	50	50	4	f	15
466	Electivire	Electric	\N	540	75	123	67	95	85	95	4	f	15
467	Magmortar	Fire	\N	540	75	95	67	125	95	83	4	f	15
468	Togekiss	Fairy	Flying	545	85	50	95	120	115	80	4	f	1
469	Yanmega	Bug	Flying	515	86	76	86	116	56	95	4	f	18
470	Leafeon	Grass	\N	525	65	110	130	60	65	95	4	f	12
471	Glaceon	Ice	\N	525	65	60	110	130	95	65	4	f	12
472	Gliscor	Ground	Flying	510	75	95	125	45	75	95	4	f	12
473	Mamoswine	Ice	Ground	530	110	130	80	70	60	80	4	f	5
474	Porygon-Z	Normal	\N	535	85	80	70	135	75	90	4	f	5
475	Gallade	Psychic	Fighting	518	68	125	65	65	115	80	4	f	50
476	Probopass	Rock	Steel	525	60	55	145	75	150	40	4	f	10
477	Dusknoir	Ghost	\N	525	45	100	135	65	135	45	4	f	10
478	Froslass	Ice	Ghost	480	70	80	70	80	70	110	4	f	20
479	Rotom	Electric	Ghost	440	50	50	77	95	77	91	4	f	30
480	Uxie	Psychic	\N	580	75	75	130	75	130	95	4	t	2
481	Mesprit	Psychic	\N	580	80	105	105	105	105	80	4	t	2
482	Azelf	Psychic	\N	580	75	125	70	125	70	115	4	t	2
483	Dialga	Steel	Dragon	680	100	120	120	150	100	90	4	t	2
484	Palkia	Water	Dragon	680	90	120	100	150	120	100	4	t	2
485	Heatran	Fire	Steel	600	91	90	106	130	106	77	4	t	2
486	Regigigas	Normal	\N	670	110	160	110	80	110	100	4	t	6
487	GiratinaAltered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4	t	2
488	Cresselia	Psychic	\N	600	120	70	120	75	130	85	4	f	2
491	Darkrai	Dark	\N	600	70	90	90	135	90	125	4	t	2
494	Victini	Psychic	Fire	600	100	100	100	100	100	100	5	t	10000
495	Snivy	Grass	\N	308	45	45	55	45	55	63	5	f	20
496	Servine	Grass	\N	413	60	60	75	60	75	83	5	f	10
497	Serperior	Grass	\N	528	75	75	95	75	95	113	5	f	5
498	Tepig	Fire	\N	308	65	63	45	45	45	45	5	f	20
499	Pignite	Fire	Fighting	418	90	93	55	70	55	55	5	f	10
500	Emboar	Fire	Fighting	528	110	123	65	100	65	65	5	f	5
501	Oshawott	Water	\N	308	55	55	45	63	45	45	5	f	20
502	Dewott	Water	\N	413	75	75	60	83	60	60	5	f	10
503	Samurott	Water	\N	528	95	100	85	108	70	70	5	f	5
504	Patrat	Normal	\N	255	45	55	39	35	39	42	5	f	50
505	Watchog	Normal	\N	420	60	85	69	60	69	77	5	f	20
506	Lillipup	Normal	\N	275	45	60	45	25	45	55	5	f	50
507	Herdier	Normal	\N	370	65	80	65	35	65	60	5	f	25
508	Stoutland	Normal	\N	500	85	110	90	45	90	80	5	f	12
509	Purrloin	Dark	\N	281	41	50	37	50	37	66	5	f	50
510	Liepard	Dark	\N	446	64	88	50	88	50	106	5	f	20
511	Pansage	Grass	\N	316	50	53	48	53	48	64	5	f	50
512	Simisage	Grass	\N	498	75	98	63	98	63	101	5	f	50
513	Pansear	Fire	\N	316	50	53	48	53	48	64	5	f	20
514	Simisear	Fire	\N	498	75	98	63	98	63	101	5	f	50
515	Panpour	Water	\N	316	50	53	48	53	48	64	5	f	50
516	Simipour	Water	\N	498	75	98	63	98	63	101	5	f	20
519	Pidove	Normal	Flying	264	50	55	50	36	30	43	5	f	50
520	Tranquill	Normal	Flying	358	62	77	62	50	42	65	5	f	25
521	Unfezant	Normal	Flying	488	80	115	80	65	55	93	5	f	12
522	Blitzle	Electric	\N	295	45	60	32	50	32	76	5	f	30
523	Zebstrika	Electric	\N	497	75	100	63	80	63	116	5	f	10
524	Roggenrola	Rock	\N	280	55	75	85	25	25	15	5	f	50
525	Boldore	Rock	\N	390	70	105	105	50	40	20	5	f	25
526	Gigalith	Rock	\N	515	85	135	130	60	80	25	5	f	12
527	Woobat	Psychic	Flying	313	55	45	43	55	43	72	5	f	50
528	Swoobat	Psychic	Flying	425	67	57	55	77	55	114	5	f	20
529	Drilbur	Ground	\N	328	60	85	40	30	45	68	5	f	50
530	Excadrill	Ground	Steel	508	110	135	60	50	65	88	5	f	20
531	Audino	Normal	\N	445	103	60	86	60	86	50	5	f	5
532	Timburr	Fighting	\N	305	75	80	55	25	35	35	5	f	50
533	Gurdurr	Fighting	\N	405	85	105	85	40	50	40	5	f	25
534	Conkeldurr	Fighting	\N	505	105	140	95	55	65	45	5	f	12
535	Tympole	Water	\N	294	50	50	40	50	40	64	5	f	50
536	Palpitoad	Water	Ground	384	75	65	55	65	55	69	5	f	25
537	Seismitoad	Water	Ground	509	105	95	75	85	75	74	5	f	12
538	Throh	Fighting	\N	465	120	100	85	30	85	45	5	f	20
539	Sawk	Fighting	\N	465	75	125	75	30	75	85	5	f	20
540	Sewaddle	Bug	Grass	310	45	53	70	40	60	42	5	f	50
541	Swadloon	Bug	Grass	380	55	63	90	50	80	42	5	f	25
542	Leavanny	Bug	Grass	500	75	103	80	70	80	92	5	f	12
543	Venipede	Bug	Poison	260	30	45	59	30	39	57	5	f	30
544	Whirlipede	Bug	Poison	360	40	55	99	40	79	47	5	f	15
545	Scolipede	Bug	Poison	485	60	100	89	55	69	112	5	f	20
546	Cottonee	Grass	Fairy	280	40	27	60	37	50	66	5	f	30
547	Whimsicott	Grass	Fairy	480	60	67	85	77	75	116	5	f	15
548	Petilil	Grass	\N	280	45	35	50	70	50	30	5	f	30
549	Lilligant	Grass	\N	480	70	60	75	110	75	90	5	f	15
550	Basculin	Water	\N	460	70	92	65	80	55	98	5	f	20
551	Sandile	Ground	Dark	292	50	72	35	35	35	65	5	f	50
552	Krokorok	Ground	Dark	351	60	82	45	45	45	74	5	f	25
553	Krookodile	Ground	Dark	519	95	117	80	65	70	92	5	f	12
554	Darumaka	Fire	\N	315	70	90	45	15	45	50	5	f	30
555	DarmanitanStandard Mode	Fire	\N	480	105	140	55	30	55	95	5	f	10
556	Maractus	Grass	\N	461	75	86	67	106	67	60	5	f	20
557	Dwebble	Bug	Rock	325	50	65	85	35	35	55	5	f	30
558	Crustle	Bug	Rock	475	70	95	125	65	75	45	5	f	10
559	Scraggy	Dark	Fighting	348	50	75	70	35	70	48	5	f	30
560	Scrafty	Dark	Fighting	488	65	90	115	45	115	58	5	f	10
561	Sigilyph	Psychic	Flying	490	72	58	80	103	80	97	5	f	20
562	Yamask	Ghost	\N	303	38	30	85	55	65	30	5	f	30
563	Cofagrigus	Ghost	\N	483	58	50	145	95	105	30	5	f	10
564	Tirtouga	Water	Rock	355	54	78	103	53	45	22	5	f	30
565	Carracosta	Water	Rock	495	74	108	133	83	65	32	5	f	10
566	Archen	Rock	Flying	401	55	112	45	74	45	70	5	f	30
567	Archeops	Rock	Flying	567	75	140	65	112	65	110	5	f	10
568	Trubbish	Poison	\N	329	50	50	62	40	62	65	5	f	30
569	Garbodor	Poison	\N	474	80	95	82	60	82	75	5	f	10
572	Minccino	Normal	\N	300	55	50	40	40	40	75	5	f	30
573	Cinccino	Normal	\N	470	75	95	60	65	60	115	5	f	10
574	Gothita	Psychic	\N	290	45	30	50	55	65	45	5	f	50
575	Gothorita	Psychic	\N	390	60	45	70	75	85	55	5	f	25
576	Gothitelle	Psychic	\N	490	70	55	95	95	110	65	5	f	12
577	Solosis	Psychic	\N	290	45	30	40	105	50	20	5	f	50
578	Duosion	Psychic	\N	370	65	40	50	125	60	30	5	f	25
579	Reuniclus	Psychic	\N	490	110	65	75	125	85	30	5	f	12
580	Ducklett	Water	Flying	305	62	44	50	44	50	55	5	f	50
581	Swanna	Water	Flying	473	75	87	63	87	63	98	5	f	40
582	Vanillite	Ice	\N	305	36	50	50	65	60	44	5	f	10
583	Vanillish	Ice	\N	395	51	65	65	80	75	59	5	f	5
584	Vanilluxe	Ice	\N	535	71	95	85	110	95	79	5	f	12
585	Deerling	Normal	Grass	335	60	60	50	40	50	75	5	f	30
586	Sawsbuck	Normal	Grass	475	80	100	70	60	70	95	5	f	15
587	Emolga	Electric	Flying	428	55	75	60	75	60	103	5	f	20
588	Karrablast	Bug	\N	315	50	75	45	40	45	60	5	f	30
589	Escavalier	Bug	Steel	495	70	135	105	60	105	20	5	f	12
590	Foongus	Grass	Poison	294	69	55	45	55	55	15	5	f	30
591	Amoonguss	Grass	Poison	464	114	85	70	85	80	30	5	f	12
594	Alomomola	Water	\N	470	165	75	80	40	45	65	5	f	20
595	Joltik	Bug	Electric	319	50	47	50	57	50	65	5	f	30
596	Galvantula	Bug	Electric	472	70	77	60	97	60	108	5	f	12
597	Ferroseed	Grass	Steel	305	44	50	91	24	86	10	5	f	30
598	Ferrothorn	Grass	Steel	489	74	94	131	54	116	20	5	f	12
599	Klink	Steel	\N	300	40	55	70	45	60	30	5	f	40
600	Klang	Steel	\N	440	60	80	95	70	85	50	5	f	10
601	Klinklang	Steel	\N	520	60	100	115	70	85	90	5	f	5
605	Elgyem	Psychic	\N	335	55	55	55	85	55	30	5	f	30
606	Beheeyem	Psychic	\N	485	75	75	75	125	95	40	5	f	15
607	Litwick	Ghost	Fire	275	50	30	55	65	55	20	5	f	40
608	Lampent	Ghost	Fire	370	60	40	60	95	60	55	5	f	10
609	Chandelure	Ghost	Fire	520	60	55	90	145	90	80	5	f	5
610	Axew	Dragon	\N	320	46	87	60	30	40	57	5	f	40
611	Fraxure	Dragon	\N	410	66	117	70	40	50	67	5	f	10
612	Haxorus	Dragon	\N	540	76	147	90	60	70	97	5	f	5
613	Cubchoo	Ice	\N	305	55	70	40	60	40	40	5	f	30
614	Beartic	Ice	\N	485	95	110	80	70	80	50	5	f	15
615	Cryogonal	Ice	\N	485	70	50	30	95	135	105	5	f	20
616	Shelmet	Bug	\N	305	50	40	85	40	65	25	5	f	30
617	Accelgor	Bug	\N	495	80	70	40	100	60	145	5	f	15
618	Stunfisk	Ground	Electric	471	109	66	84	81	99	32	5	f	20
622	Golett	Ground	Ghost	303	59	74	50	35	50	35	5	f	30
623	Golurk	Ground	Ghost	483	89	124	80	55	80	55	5	f	15
624	Pawniard	Dark	Steel	340	45	85	70	40	40	60	5	f	30
625	Bisharp	Dark	Steel	490	65	125	100	60	70	70	5	f	15
626	Bouffalant	Normal	\N	490	95	110	95	40	95	55	5	f	20
627	Rufflet	Normal	Flying	350	70	83	50	37	50	60	5	f	30
628	Braviary	Normal	Flying	510	100	123	75	57	75	80	5	f	15
629	Vullaby	Dark	Flying	370	70	55	75	45	65	60	5	f	30
630	Mandibuzz	Dark	Flying	510	110	65	105	55	95	80	5	f	15
631	Heatmor	Fire	\N	484	85	97	66	105	66	65	5	f	20
632	Durant	Bug	Steel	484	58	109	112	48	48	109	5	f	20
633	Deino	Dark	Dragon	300	52	65	50	45	50	38	5	f	40
634	Zweilous	Dark	Dragon	420	72	85	70	65	70	58	5	f	10
635	Hydreigon	Dark	Dragon	600	92	105	90	125	90	98	5	f	5
638	Cobalion	Steel	Fighting	580	91	90	129	90	72	108	5	t	2
639	Terrakion	Rock	Fighting	580	91	129	90	72	90	108	5	t	2
640	Virizion	Grass	Fighting	580	91	90	72	90	129	108	5	t	2
641	TornadusIncarnate Forme	Flying	\N	580	79	115	70	125	80	111	5	t	2
642	ThundurusIncarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5	t	2
643	Reshiram	Dragon	Fire	680	100	120	100	150	120	90	5	t	2
644	Zekrom	Dragon	Electric	680	100	150	120	120	100	90	5	t	2
645	LandorusIncarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5	t	2
646	Kyurem	Dragon	Ice	660	125	130	90	130	90	95	5	t	2
649	Genesect	Bug	Steel	600	71	120	95	120	95	99	5	f	2
650	Chespin	Grass	\N	313	56	61	65	48	45	38	6	f	20
651	Quilladin	Grass	\N	405	61	78	95	56	58	57	6	f	10
652	Chesnaught	Grass	Fighting	530	88	107	122	74	75	64	6	f	5
653	Fennekin	Fire	\N	307	40	45	40	62	60	60	6	f	20
654	Braixen	Fire	\N	409	59	59	58	90	70	73	6	f	10
655	Delphox	Fire	Psychic	534	75	69	72	114	100	104	6	f	5
656	Froakie	Water	\N	314	41	56	40	62	44	71	6	f	20
657	Frogadier	Water	\N	405	54	63	52	83	56	97	6	f	10
658	Greninja	Water	Dark	530	72	95	67	103	71	122	6	f	5
659	Bunnelby	Normal	\N	237	38	36	38	32	36	57	6	f	20
660	Diggersby	Normal	Ground	423	85	56	77	50	77	78	6	f	20
661	Fletchling	Normal	Flying	278	45	50	43	40	38	62	6	f	20
662	Fletchinder	Fire	Flying	382	62	73	55	56	52	84	6	f	10
663	Talonflame	Fire	Flying	499	78	81	71	74	69	126	6	f	5
667	Litleo	Fire	Normal	369	62	50	58	73	54	72	6	f	30
668	Pyroar	Fire	Normal	507	86	68	72	109	66	106	6	f	10
677	Espurr	Psychic	\N	355	62	48	54	63	60	68	6	f	40
678	MeowsticMale	Psychic	\N	466	74	48	76	83	81	104	6	f	20
707	Klefki	Steel	Fairy	470	57	80	91	80	87	75	6	f	20
714	Noibat	Flying	Dragon	245	40	30	35	45	40	55	6	f	30
715	Noivern	Flying	Dragon	535	85	70	80	97	80	123	6	f	15
1	Bulbasaur	Grass	Poison	318	45	49	49	65	65	45	1	f	20
213	Shuckle	Bug	Rock	505	20	10	230	10	230	5	2	f	30
\.


--
-- TOC entry 2740 (class 2606 OID 26486)
-- Name: pokemon pokemon_#_key; Type: CONSTRAINT; Schema: public; Owner: supabase_admin
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT "pokemon_#_key" UNIQUE (no);


--
-- TOC entry 2742 (class 2606 OID 26490)
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: supabase_admin
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (no);


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE pokemon; Type: ACL; Schema: public; Owner: supabase_admin
--

GRANT ALL ON TABLE public.pokemon TO postgres;
GRANT ALL ON TABLE public.pokemon TO anon;
GRANT ALL ON TABLE public.pokemon TO authenticated;
GRANT ALL ON TABLE public.pokemon TO service_role;


-- Completed on 2022-11-30 22:05:57

--
-- PostgreSQL database dump complete
--


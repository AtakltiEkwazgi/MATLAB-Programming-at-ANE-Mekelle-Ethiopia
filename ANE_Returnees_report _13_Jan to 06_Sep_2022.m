clc
clear
%ANE_distribution,ANEtype

    ANEtype={'NFI Distribution','Return','Decomssioning','Sheelter','Site improvment'};
    prompt1='Select ANE tasks:';
    Bname='Welcom to ANE Humanitorian Organizatin(ANE):';
    Bsize=[500,100];
    [indx1,tf1]=listdlg('Name',Bname,'ListSize',Bsize,'PromptString',prompt1,'SelectionMode','single','ListString',ANEtype);
   if indx1==1 
%Distribution list,DL 
   end
% List of material,LM
%DL=[THH TIN ZO Bket Smat Mnet Kset Jcan Bucket Soap Psheet Slamp Soap2 Underwear Spad]
%ZO-implies Zone of the beneficiary
%C-centeral zone
%E-easter zone
%SE-southeast zone
%S-souther zone
%NW-northwest zone
%W-western zone
syms E C S SE NW  
DL=[
61	112	C	76	76	61	61	76	57	83	61	0	0	0	0
18	37	C	24	24	18	18	24	18	30	18	0	0	0	0
26	41	C	30	30	26	26	30	20	28	26	0	0	0	0
324	469	C	358	358	324	324	358	312	0	324	0	0	0	0
171	297	C	205	205	171	171	205	147	0	171	0	0	0	0
130	228	C	154	154	127	127	154	94	122	127	0	0	0	0
141	189	C	153	153	141	141	153	132	0	141	0	0	0	0
26	42	C	33	33	26	26	33	18	0	26	0	0	0	0
22	42	C	29	29	22	22	29	21	35	22	0	0	0	0
64	93	C	73	73	64	64	73	53	71	64	0	0	0	0
58	99	C	69	69	58	58	69	53	71	58	0	0	0	0
1	1	C	1	1	1	1	1	0	0	1	0	0	0	0
3	10	C	5	5	3	3	5	0	0	3	0	0	0	0
7	14	C	9	9	7	7	9	0	0	7	0	0	0	0
2	6	C	3	3	2	2	3	0	0	2	0	0	0	0
4	11	C	6	6	4	4	6	0	0	4	0	0	0	0
4	12	C	6	6	4	4	6	0	0	4	0	0	0	0
26	36	C	30	30	0	0	26	0	0	26	0	0	0	0
14	24	C	16	16	0	0	14	0	0	14	0	0	0	0
26	34	C	28	28	0	0	26	0	0	26	0	0	0	0
19	32	C	22	22	0	0	19	0	0	19	0	0	0	0
10	18	C	12	12	0	0	10	0	0	10	0	0	0	0
27	36	C	29	29	0	0	27	0	0	27	0	0	0	0
33	69	C	42	42	0	0	33	0	0	33	0	0	0	0
42	57	C	45	45	0	0	42	0	0	42	0	0	0	0
11	24	C	15	15	0	0	11	0	0	11	0	0	0	0
19	29	C	21	21	0	0	19	0	0	19	0	0	0	0
17	35	C	22	22	0	0	17	0	0	17	0	0	0	0
20	28	C	23	23	0	0	20	0	0	20	0	0	0	0
3	6	C	4	4	0	0	3	0	0	3	0	0	0	0
3	4	C	4	4	0	0	3	0	0	3	0	0	0	0
9	17	C	12	12	0	0	9	0	0	9	0	0	0	0
8	12	C	8	8	0	0	8	0	0	8	0	0	0	0
3	4	C	3	3	0	0	3	0	0	3	0	0	0	0
5	5	C	5	5	0	0	5	0	0	5	0	0	0	0
33	53	C	40	40	0	0	33	0	0	33	0	0	0	0
234	300	C	249	249	0	0	234	0	0	234	0	0	0	0
6	9	C	9	9	0	0	6	0	0	6	0	0	0	0
8	15	NW	10	10	0	0	8	0	0	8	0	0	0	0
8	14	NW	9	9	0	0	8	0	0	8	0	0	0	0
10	21	NW	14	14	0	0	10	0	0	10	0	0	0	0
14	25	NW	17	17	0	0	14	0	0	14	0	0	0	0
10	23	NW	13	13	0	0	10	0	0	10	0	0	0	0
54	94	NW	64	64	0	0	54	0	0	54	0	0	0	0
79	129	NW	93	93	0	0	79	0	0	79	0	0	0	0
8	21	NW	10	10	0	0	7	0	0	7	0	0	0	0
4	10	E	5	5	0	0	4	0	0	4	0	0	0	0
10	20	E	13	13	0	0	10	0	0	10	0	0	0	0
13	21	E	14	14	0	0	13	0	0	13	0	0	0	0
103	171	E	122	122	0	0	103	0	0	103	0	0	0	0
6	19	E	10	10	0	0	6	0	0	6	0	0	0	0
2	2	E	2	2	0	0	2	0	0	2	0	0	0	0
20	37	E	27	27	0	0	20	0	0	20	0	0	0	0
6	17	E	10	10	0	0	6	0	0	6	0	0	0	0
9	12	E	10	10	0	0	9	0	0	9	0	0	0	0
6	10	E	7	7	0	0	6	0	0	6	0	0	0	0
6	9	E	7	7	0	0	6	0	0	6	0	0	0	0
65	86	E	70	70	0	0	65	0	0	65	0	0	0	0
10	18	E	13	13	0	0	10	0	0	10	0	0	0	0
22	32	E	13	25	0	0	22	0	0	22	0	0	0	0
88	177	E	112	112	0	0	88	0	0	88	0	0	0	0
106	176	E	124	124	0	0	106	0	0	106	0	0	0	0
20	46	SE	26	26	0	0	20	0	0	20	0	0	0	0
11	16	SE	12	12	0	0	11	0	0	11	0	0	0	0
56	133	SE	78	78	0	0	56	0	0	56	0	0	0	0
5	8	SE	6	6	0	0	5	0	0	5	0	0	0	0
7	19	SE	10	10	0	0	7	0	0	7	0	0	0	0
2	2	SE	2	2	0	0	2	0	0	2	0	0	0	0
122	253	SE	159	159	0	0	122	0	0	122	0	0	0	0
59	119	SE	74	74	0	0	59	0	0	59	0	0	0	0
1	2	S	1	1	0	0	1	0	0	1	0	0	0	0
2	2	S	2	2	0	0	2	0	0	2	0	0	0	0
1	3	S	2	2	0	0	1	0	0	1	0	0	0	0
3	3	S	3	3	0	0	3	0	0	3	0	0	0	0
3	3	S	3	3	0	0	3	0	0	3	0	0	0	0
2	6	S	3	3	0	0	2	0	0	2	0	0	0	0
2	4	S	3	3	0	0	2	0	0	2	0	0	0	0
1	1	S	1	1	0	0	1	0	0	1	0	0	0	0
5	7	S	6	6	0	0	5	0	0	5	0	0	0	0
1	1	C	1	1	1	1	1	1	1	1	0	0	0	0
17	35	C	23	23	18	17	22	17	23	17	0	0	0	0
4	5	C	4	4	4	4	4	4	4	4	0	0	0	0
21	31	C	24	24	22	22	24	22	24	22	0	0	0	0
40	81	C	52	52	40	39	51	39	52	39	0	0	0	0
77	177	C	110	110	80	77	107	77	110	77	0	0	0	0
129	217	C	154	154	134	133	153	133	154	133	0	0	0	0
7	13	C	7	7	7	7	7	7	7	7	0	0	0	0
76	135	C	93	93	78	77	92	77	93	77	0	0	0	0
13	23	C	16	16	14	14	16	14	16	14	0	0	0	0
23	46	C	32	32	25	25	32	25	32	25	0	0	0	0
44	88	C	61	61	48	47	60	47	61	47	0	0	0	0
51	87	C	61	61	52	51	60	51	61	51	0	0	0	0
22	35	C	26	26	22	22	26	22	26	22	0	0	0	0
22	36	C	27	27	22	22	27	22	27	22	0	0	0	0
32	58	C	41	41	33	33	41	33	41	33	0	0	0	0
4	5	C	4	4	4	4	4	4	4	4	0	0	0	0
10	14	C	10	10	10	10	10	10	10	10	0	0	0	0
6	8	C	6	6	6	6	6	6	6	6	0	0	0	0
1	1	C	1	1	1	1	1	1	1	1	0	0	0	0
25	48	C	32	32	27	25	30	25	32	25	0	0	0	0
13	25	C	19	19	16	15	18	15	19	15	0	0	0	0
10	16	C	11	11	10	10	11	10	11	10	0	0	0	0
15	36	E	23	23	16	14	21	14	23	14	0	0	0	0
25	57	E	36	36	28	26	34	26	36	26	0	0	0	0
28	66	E	41	41	30	28	38	28	41	28	0	0	0	0
5	12	E	7	7	6	6	7	6	7	6	0	0	0	0
549	964	E	725	725	573	550	712	550	725	550	0	0	0	0
303	696	E	406	406	324	316	397	316	406	316	0	0	0	0
128	247	E	168	168	131	128	165	128	168	128	0	0	0	0
22	68	E	38	38	22	21	36	21	38	21	0	0	0	0
59	153	E	91	91	61	59	89	59	91	59	0	0	0	0
128	277	SE	173	173	133	129	169	129	173	129	0	0	0	0
21	36	NW	24	921	21	21	24	21	24	21	0	0	0	0
44	76	NW	55	555	45	44	54	44	55	44	0	0	0	0
77	155	NW	100	600	81	76	95	76	100	76	0	0	0	0
15	34	NW	20	520	15	15	20	15	20	15	0	0	0	0
8	14	NW	9	9	8	8	9	8	9	8	0	0	0	0
16	28	NW	19	19	16	16	19	16	19	16	0	0	0	0
27	53	NW	38	38	30	27	35	27	28	27	0	0	0	0
16	30	NW	21	21	18	16	19	16	21	16	0	0	0	0
128	265	NW	171	171	135	128	165	128	171	128	0	0	0	0
190	431	NW	275	275	204	193	263	193	275	193	0	0	0	0
6	16	NW	10	10	8	6	8	6	10	6	0	0	0	0
12	13	NW	12	12	12	12	12	12	12	12	0	0	0	0
9	17	NW	12	12	9	9	12	9	12	9	0	0	0	0
5	9	NW	6	6	5	5	6	5	6	5	0	0	0	0
3	7	NW	4	4	3	3	4	3	4	3	0	0	0	0
2	2	SE	2	2	2	2	2	2	2	2	0	0	0	0
2	5	SE	2	2	2	2	2	2	2	2	0	0	0	0
1	2	SE	1	1	1	1	1	1	1	1	0	0	0	0
8	13	SE	9	9	7	7	9	7	9	7	0	0	0	0
1	2	SE	1	1	1	1	1	1	1	1	0	0	0	0
3	5	SE	5	5	4	4	5	4	5	4	0	0	0	0
1	1	SE	1	1	1	1	1	1	1	1	0	0	0	0
71	153	S	99	99	72	68	94	68	99	68	0	0	0	0
6	8	S	6	6	5	5	6	5	6	5	0	0	0	0
2	6	S	4	4	3	3	4	3	4	3	0	0	0	0
4	8	S	3	3	3	3	3	3	3	3	0	0	0	0
10	17	S	8	8	8	8	8	8	8	8	0	0	0	0
19	34	S	28	28	23	23	28	23	28	23	0	0	0	0
17	51	S	36	36	27	25	34	25	36	25	0	0	0	0
2	4	S	2	2	2	2	2	2	2	2	0	0	0	0
1	2	S	2	2	2	2	2	2	2	2	0	0	0	0
8	20	S	15	15	11	11	15	11	15	11	0	0	0	0
4	7	C	5	5	4	4	5	4	5	4	4	2	2	2
3	4	C	3	3	3	3	3	3	3	3	3	2	2	2
1	1	C	1	1	1	1	1	1	1	1	1	0	0	0
17	19	C	17	17	17	17	17	17	17	17	17	10	10	10
2	2	C	2	2	2	2	2	2	2	2	2	2	2	2
3	4	C	3	3	3	3	3	3	3	3	3	3	3	3
2	5	C	3	3	2	2	3	2	3	2	2	2	2	2
1	3	C	2	2	1	1	2	1	2	1	1	0	0	0
1	1	C	1	1	1	1	1	1	1	1	1	0	0	0
1	1	E	1	1	1	1	1	1	1	1	1	0	0	0
1	1	E	1	1	1	1	1	1	1	1	1	0	0	0
2	3	E	2	2	2	2	2	2	2	2	2	0	0	0
2	2	E	2	2	2	2	2	2	2	2	2	1	1	1
3	3	E	3	3	3	3	3	3	3	3	3	2	2	2
2	2	NW	2	2	2	2	2	2	2	2	2	0	0	0
2	8	NW	4	4	3	2	3	2	4	2	2	2	2	2
1	3	NW	2	2	1	1	2	1	2	1	1	0	0	0
6	20	NW	11	11	6	6	11	6	10	6	6	8	8	8
3	3	NW	3	3	3	3	3	3	3	3	3	2	2	2
2	4	SE	3	3	2	2	3	2	3	2	2	1	1	1
1	1	SE	1	1	1	1	1	1	1	1	1	1	1	1
1	1	SE	1	1	1	1	1	1	1	1	1	0	0	0
3	3	C	3	3	3	3	3	3	3	3	3	0	0	0
2	8	C	5	5	3	3	5	3	5	3	3	0	0	0
17	23	C	18	18	17	17	18	17	18	17	17	12	12	12
9	17	C	12	12	9	9	12	9	12	9	9	8	8	8
4	6	C	4	4	4	4	4	4	4	4	4	2	2	2
2	9	C	5	5	3	2	4	2	5	2	2	4	4	4
3	4	C	3	3	3	3	3	3	3	3	3	1	1	1
6	16	C	10	10	7	6	9	6	10	6	6	1	1	1
1	2	C	1	1	1	1	1	1	1	1	1	1	1	1
1	3	C	2	2	1	1	2	1	2	1	1	2	2	2
3	4	C	3	3	3	3	3	3	3	3	3	2	2	2
1	4	E	2	2	1	1	2	1	2	1	1	1	1	1
1	2	E	1	1	1	1	1	1	1	1	1	1	1	1
1	1	E	1	1	1	1	1	1	1	1	1	0	0	0
1	1	E	1	1	1	1	1	1	1	1	1	0	0	0
3	8	C	5	5	3	3	5	3	5	3	3	2	2	2
4	6	C	5	5	4	4	5	4	5	4	4	2	2	2
1	1	E	1	1	1	1	1	1	1	1	1	1	1	1
7	12	E	9	9	8	7	8	7	9	7	7	0	0	0
1	1	E	1	1	1	1	1	1	1	1	1	1	1	1
2	6	E	4	4	2	2	4	2	4	2	2	2	2	2
1	1	S	1	1	1	1	1	1	1	1	1	0	0	0
1	2	S	1	1	1	1	1	1	1	1	1	0	0	0
3	7	NW	4	4	3	3	4	3	4	3	3	2	2	2
1	5	NW	3	3	2	1	2	1	3	1	1	1	1	1
1	1	NW	1	1	1	1	1	1	1	1	1	3	3	3
2	6	NW	4	4	2	2	4	2	4	2	2	3	3	3
3	8	NW	5	5	3	3	5	3	5	3	3	3	3	3
2	5	NW	3	3	2	2	3	2	3	2	2	1	1	1
1	1	NW	1	1	1	1	1	1	1	1	1	0	0	0
1	1	NW	1	1	1	1	1	1	1	1	1	0	0	0
1	6	NW	3	3	2	1	2	1	3	1	1	2	2	2
1	3	NW	2	2	1	1	2	1	2	1	1	2	2	2
1	3	NW	2	2	1	1	2	1	2	1	1	4	4	4
1	5	NW	3	3	2	1	2	1	3	1	1	2	2	2
2	6	NW	4	4	2	2	4	2	4	2	2	6	6	6
1	3	SE	2	2	1	1	2	1	2	1	1	2	2	2
1	1	C	1	1	1	1	1	1	1	1	1	2	2	2
1	1	C	1	1	1	1	1	1	1	1	1	0	0	0
1	3	C	2	2	1	1	2	1	2	1	1	4	4	4
2	6	C	4	4	2	2	4	2	4	2	2	4	4	4
1	2	C	1	1	1	1	1	1	1	1	1	2	2	2
1	3	C	2	2	1	1	2	1	2	1	1	2	2	2
3	5	C	3	3	3	3	3	3	3	3	3	6	6	6
1	2	C	1	1	1	1	1	1	1	1	1	6	6	6
3	7	C	4	4	3	3	4	3	4	3	3	8	8	8
1	2	C	1	1	1	1	1	1	1	1	1	2	2	2
2	5	E	3	3	2	2	3	2	3	2	2	4	4	4
1	2	E	1	1	1	1	1	1	1	1	1	2	2	2
12	34	E	20	20	15	12	17	12	20	12	12	26	26	26
56	127	E	80	80	60	56	75	56	80	56	56	100	100	100
5	8	E	5	5	5	5	5	5	5	5	5	12	12	12
1	2	S	1	1	1	1	1	1	1	1	1	2	2	2
6	11	S	6	6	6	6	6	6	6	6	6	14	14	14
1	2	S	1	1	1	1	1	1	1	1	1	2	2	2
2	3	S	2	2	2	2	2	2	2	2	2	4	4	4
4	6	NW	5	5	4	4	5	4	5	4	4	6	6	6
2	3	NW	2	2	2	2	2	2	2	2	2	6	6	6
2	4	NW	3	3	2	2	3	2	3	2	2	4	4	4
1	3	NW	2	2	1	1	2	1	2	1	1	2	2	2
3	5	NW	4	4	3	3	4	3	4	3	3	6	6	6
2	2	SE	2	2	2	2	2	2	2	2	2	4	4	4
6	10	C	7	7	6	6	7	6	7	6	6	6	6	6
7	15	C	10	10	8	7	9	7	10	7	7	10	10	10
3	3	C	3	3	3	3	3	3	3	3	3	4	4	4
4	7	C	5	5	4	4	5	4	5	4	4	6	6	6
2	5	C	3	3	2	2	3	2	3	2	2	6	6	6
3	6	C	4	4	3	3	4	3	4	3	3	2	2	2
5	7	C	5	5	5	5	5	5	5	5	5	6	6	6
3	6	C	4	4	3	3	4	3	4	3	3	6	6	6
2	5	C	3	3	2	2	3	2	3	2	2	4	4	4
5	16	C	9	9	5	5	9	5	9	5	5	8	8	8
2	2	C	2	2	2	2	2	2	2	2	2	0	0	0
1	3	C	2	2	1	1	2	1	2	1	1	2	2	2
1	1	C	1	1	1	1	1	1	1	1	1	0	0	0
3	4	C	3	3	3	3	3	3	3	3	3	6	6	6
1	2	C	1	1	1	1	1	1	1	1	1	2	2	2
2	3	C	2	2	2	2	2	2	2	2	2	2	2	2
3	5	C	3	3	3	3	3	3	3	3	3	6	6	6
2	2	C	2	2	2	2	2	2	2	2	2	4	4	4
1	3	C	2	2	1	1	2	1	2	1	1	2	2	2
7	18	C	12	12	7	7	12	7	12	7	7	12	12	12
2	4	C	2	2	2	2	2	2	2	2	2	4	4	4
2	3	E	2	2	2	2	2	2	2	2	2	4	4	4
2	8	E	4	4	3	2	3	2	4	2	2	4	4	4
2	4	E	2	2	2	2	2	2	2	2	2	4	4	4
1	2	E	1	1	1	1	1	1	1	1	1	2	2	2
1	3	E	2	2	1	1	2	1	2	1	1	2	2	2
16	36	E	24	24	18	16	22	16	24	16	16	24	24	24
20	52	E	32	32	20	20	31	20	32	20	20	30	30	30
4	8	E	5	5	4	4	5	4	5	4	4	6	6	6
6	15	E	9	9	6	6	9	6	9	6	6	8	8	8
1	1	S	1	1	1	1	1	1	1	1	1	0	0	0
3	5	S	3	3	3	3	3	3	3	3	3	4	4	4
1	4	S	2	2	1	1	2	1	2	1	1	2	2	2
1	1	S	1	1	1	1	1	1	1	1	1	2	2	2
22	52	NW	31	31	24	22	24	22	31	22	22	44	44	44
4	7	NW	5	5	4	4	5	4	5	4	4	6	6	6
4	5	NW	4	4	4	4	4	4	4	4	4	4	4	4
1	1	NW	1	1	1	1	1	1	1	1	1	0	0	0
2	5	NW	3	3	2	2	3	2	3	2	2	4	4	4
7	12	NW	8	8	7	7	8	7	8	7	7	12	12	12
1	1	NW	1	1	1	1	1	1	1	1	1	2	2	2
2	4	NW	3	3	2	2	3	2	3	2	2	2	2	2
3	5	NW	3	3	3	3	3	3	3	3	3	6	6	6
2	4	NW	3	3	2	2	3	2	3	2	2	2	2	2
2	5	NW	3	3	2	2	3	2	3	2	2	4	4	4
12	26	NW	17	17	12	12	17	12	17	12	12	22	22	22
5	16	SE	9	9	7	5	8	5	9	5	5	10	10	10
2	3	SE	2	2	2	2	2	2	2	2	2	2	2	2
2	5	SE	3	3	2	2	3	2	3	2	2	4	4	4
2	5	SE	3	3	2	2	3	2	3	2	2	4	4	4
1	2	SE	1	1	1	1	1	1	1	1	1	2	2	2
3	8	SE	5	5	3	3	5	3	5	3	3	6	6	6
1	1	C	1	1	1	1	1	1	0	1	1	0	1	1
4	10	C	7	7	5	4	6	4	0	4	4	0	4	4
2	6	C	4	4	3	2	3	2	0	2	2	0	2	2
14	19	C	16	16	14	14	16	14	0	14	14	0	8	8
9	17	C	12	12	9	9	12	9	0	9	9	0	4	4
21	27	C	23	23	21	21	23	21	0	21	21	0	5	5
3	5	C	4	4	3	3	4	3	0	3	3	0	1	1
3	6	C	4	4	3	3	4	3	0	3	3	0	2	2
84	97	C	85	85	84	84	85	84	0	84	84	0	30	30
3	3	C	3	3	3	3	3	3	0	3	3	0	3	3
18	35	C	25	25	19	18	24	18	0	18	18	0	15	15
5	7	C	5	7	5	5	5	5	0	5	5	0	4	4
7	14	C	9	9	7	7	9	7	0	7	7	0	3	3
14	18	C	15	15	14	14	15	14	0	14	14	0	2	2
5	8	C	6	6	5	5	6	5	0	5	5	0	3	3
2	3	C	2	2	2	2	2	2	0	2	2	0	1	1
1	1	C	1	1	1	1	1	1	0	1	1	0	0	0
4	6	C	5	5	4	4	5	4	0	4	4	0	3	3
2	7	C	4	4	3	2	3	2	0	2	2	0	2	2
3	9	C	6	6	4	3	5	3	0	3	3	0	5	5
2	2	S	2	2	2	2	2	2	0	2	2	0	0	0
2	2	S	2	2	2	2	2	2	0	2	2	0	0	0
6	16	SE	10	10	7	6	9	6	0	6	6	0	7	7
1	5	SE	3	3	2	1	2	1	0	1	1	0	1	1
2	4	SE	2	2	2	2	2	2	0	2	2	0	2	2
2	10	SE	5	5	3	2	3	2	0	2	2	0	4	4
11	35	SE	19	19	14	11	15	11	0	11	11	0	12	12
4	17	NW	9	9	5	4	8	4	9	4	4	0	3	3
3	5	NW	3	3	3	3	3	3	3	3	3	0	1	1
1	1	NW	1	1	1	1	1	1	1	1	1	0	0	0
1	6	NW	3	3	2	1	2	1	3	1	1	0	1	1
1	2	NW	1	1	1	1	1	1	1	1	1	0	1	1
1	1	NW	1	1	1	1	1	1	1	1	1	0	0	0
1	4	NW	2	2	1	1	2	1	2	1	1	0	3	3
23	57	NW	37	37	25	23	34	23	23	23	23	0	22	22
8	16	NW	11	11	9	8	10	8	8	8	8	0	5	5
2	2	NW	2	2	2	2	2	2	2	2	2	0	1	1
2	5	NW	3	2	2	3	2	2	2	2	2	0	1	1
6	14	E	9	9	6	6	9	6	0	6	6	0	1	1
4	12	E	6	6	4	4	6	4	0	4	4	0	4	4
3	10	E	6	6	4	3	5	3	0	3	3	0	5	5
6	13	E	9	9	7	6	8	6	0	6	6	0	3	3
4	9	E	5	5	4	4	5	4	0	4	4	0	2	2
7	14	E	9	9	7	7	9	7	0	7	7	0	4	4
15	41	E	26	26	19	15	22	15	0	15	15	0	14	14
24	38	E	28	28	24	24	25	24	0	24	24	0	14	14
2	5	E	3	3	2	2	3	2	0	2	2	0	3	3
4	7	E	5	5	4	4	5	4	0	4	4	0	2	2
1	1	E	1	1	1	1	1	1	0	1	1	0	1	1
9	28	E	16	16	10	9	15	9	0	9	9	0	8	8
4	8	E	5	5	4	4	5	4	0	4	4	0	3	3
];
%
[m,n]=size(DL)
for i=1:m
    if DL(i,3)==C
        HHC(i)=DL(i,1);
        TINC(i)=DL(i,2);
    elseif DL(i,3)==E
        HHE(i)=DL(i,1);
        TINE(i)=DL(i,2);
    elseif DL(i,3)==SE
        HHSE(i)=DL(i,1);
        TINSE(i)=DL(i,2);
    elseif DL(i,3)==S
        HHS(i)=DL(i,1);
        TINS(i)=DL(i,2);
    elseif DL(i,3)==NW
        HHNW(i)=DL(i,1);
        TINNW(i)=DL(i,2);
%     else DL(i,2)==W
%         HHW(i)=1;
%         TINW(i)=DL(i,1);   
    end
end
%
[m,n]=size(DL);
for i=1:m
STHH=sum(DL(:,1));
STIN=sum(DL(:,2));
SBket=sum(DL(:,4));
SSmat=sum(DL(:,5));
SMnet=sum(DL(:,6));
SKset=sum(DL(:,7));
SJcan=sum(DL(:,8));
SBuket=sum(DL(:,9));
SSoap=sum(DL(:,10));
SPlsheet=sum(DL(:,11));
SSlamp=sum(DL(:,12));
SSoap2=sum(DL(:,13));
SUwear=sum(DL(:,14));
SSpad=sum(DL(:,15));
end
%sum of HHs and TIN is
        THHC=sum(HHC);
        TINc=sum(TINC);
        THHE=sum(HHE);
        TINe=sum(TINE);
        THHSE=sum(HHSE);
        TINse=sum(TINSE);
        THHS=sum(HHS);
        TINs=sum(TINS);
        THHNW=sum(HHNW);
        TINnw=sum(TINNW);
%         THHW=sum(HHW);
%         TINw=sum(TINW);
Sum_item=[SBket,SSmat,SMnet,SKset,SJcan,SBuket,SSoap,SPlsheet,SSlamp,SSoap2,SUwear,SSpad]
HH=[THHC,THHE,THHSE,THHS,THHNW]
ToIN=[TINc,TINe,TINse,TINs,TINnw]
 X=categorical({'Total Household','THH Centeral','THH Eastern','THH South East','THH South','THH North West'}); 
 X=reordercats(X,{'Total Household','THH Centeral','THH Eastern','THH South East','THH South','THH North West'});
 Y=[STHH THHC THHE THHSE THHS THHNW];
 b=bar(X,Y)
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
 hold on
X=categorical({'Total Individual','TIN Centeral','TIN Eastern','TIN South East','TIN South','TIN North West'}); 
 X=reordercats(X,{'Total Individual','TIN Centeral','TIN Eastern','TIN South East','TIN South','TIN North West'});
 Y=[STIN TINc TINe TINse TINs TINnw];
 b=bar(X,Y)
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
  hold on
 X=categorical({'Blanket','Sleeping Mat','Mosquito net','Kitchen Set','Jerrycan','Bucket','Soap','Plastic sheet','Solar Lamp','Soap2','Underwear','Sanitary Pad'});
 X=reordercats(X,{'Blanket','Sleeping Mat','Mosquito net','Kitchen Set','Jerrycan','Bucket','Soap','Plastic sheet','Solar Lamp','Soap2','Underwear','Sanitary Pad'});
 Y=[SBket,SSmat,SMnet,SKset,SJcan,SBuket,SSoap,SPlsheet,SSlamp,SSoap2,SUwear,SSpad];
 b=bar(X,Y)
 xtips1=b(1).XEndPoints;
 ytips1=b(1).YEndPoints;
 labels1=string(b(1).YData);
 text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
 'VerticalAlignment','bottom')





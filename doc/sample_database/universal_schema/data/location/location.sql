--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Location
(
    Location_Id ,
    Location_Name,
    Location_Open_Dt,
    Location_Close_Dt,
    Location_Effective_Dt,
    Location_Total_Area_Meas,
    Chain_Cd,
    Channel_Cd,
    District_Cd,
    Parent_Location_Id,
    Location_Mgr_Associate_Id,
    Location_Type_Cd
) FROM stdin with delimiter as '|';
20|LOCKPORT -  Store# 20|1990-10-27|2100-12-31|1990-11-16|54312.0000|1|1|D104|0|0|1
10|PHILADELPHIA -  Store# 10|1994-05-16|2100-12-31|1994-06-05|40722.0000|1|1|D130|0|0|1
40|BUFFALO -  Store# 40|1993-06-24|2100-12-31|1993-07-14|49419.0000|1|1|D102|0|0|1
30|ALTOONA -  Store# 30|1994-05-15|2100-12-31|1994-06-04|52094.0000|1|1|D126|0|0|1
80|NORWICH -  Store# 80|1993-11-25|2100-12-31|1993-12-15|47888.0000|1|1|D144|0|0|1
190|MIDDLETOWN -  Store# 190|1991-08-27|2100-12-31|1991-09-16|55002.0000|1|1|D140|0|0|1
60|MOUNT VERNON -  Store# 60|1992-04-25|2100-12-31|1992-05-15|53652.0000|1|1|D105|0|0|1
101|MIDDLETOWN -  Store# 101|1991-06-08|2100-12-31|1991-06-28|40464.0000|1|1|D140|0|0|1
120|YONKERS -  Store# 120|1993-10-22|2100-12-31|1993-11-11|75922.0000|1|1|D119|0|0|1
70|NEW ROCHELLE -  Store# 70|1993-12-15|2100-12-31|1994-01-04|74089.0000|1|1|D108|0|0|1
160|BEACON -  Store# 160|1994-10-12|2100-12-31|1994-11-01|76983.0000|1|1|D101|0|0|1
100|GETTYSBURG -  Store# 100|1993-03-23|2100-12-31|1993-04-12|61963.0000|1|1|D128|0|0|1
90|NIAGARA FALLS -  Store# 90|1992-02-09|2100-12-31|1992-02-29|65240.0000|1|1|D109|0|0|1
141|STORRS -  Store# 141|1991-11-02|2100-12-31|1991-11-22|62633.0000|1|1|D146|0|0|1
200|NIAGARA FALLS -  Store# 200|1993-07-04|2100-12-31|1993-07-24|58609.0000|1|1|D109|0|0|1
140|QUEENS -  Store# 140|1991-10-10|2100-12-31|1991-10-30|73291.0000|1|1|D121|0|0|1
180|HARTFORD -  Store# 180|1991-11-18|2100-12-31|1991-12-08|41665.0000|1|1|D139|0|0|1
50|NEW LONDON -  Store# 50|1993-07-06|2100-12-31|1993-07-26|78275.0000|1|1|D143|0|0|1
130|HARRISBURG -  Store# 130|1991-05-03|2100-12-31|1991-05-23|46585.0000|1|1|D129|0|0|1
11|READING -  Store# 11|1991-05-19|2100-12-31|1991-06-08|53474.0000|1|1|D132|0|0|1
110|SCHENECTADY -  Store# 110|1992-10-04|2100-12-31|1992-10-24|64119.0000|1|1|D113|0|0|1
91|PEEKSKILL -  Store# 91|1992-09-24|2100-12-31|1992-10-14|67890.0000|1|1|D110|0|0|1
181|PHILADELPHIA -  Store# 181|1992-07-06|2100-12-31|1992-07-26|54747.0000|1|1|D130|0|0|1
61|WHITE PLAINS -  Store# 61|1991-11-15|2100-12-31|1991-12-05|58043.0000|1|1|D118|0|0|1
170|GREENWICH -  Store# 170|1992-02-03|2100-12-31|1992-02-23|72662.0000|1|1|D138|0|0|1
51|STATEN ISLAND -  Store# 51|1993-09-14|2100-12-31|1993-10-04|49218.0000|1|1|D123|0|0|1
150|BUFFALO -  Store# 150|1992-04-04|2100-12-31|1992-04-24|67747.0000|1|1|D102|0|0|1
201|NEWARK -  Store# 201|1992-10-09|2100-12-31|1992-10-29|54562.0000|1|1|D147|0|0|1
111|STATEN ISLAND -  Store# 111|1992-05-08|2100-12-31|1992-05-28|72639.0000|1|1|D123|0|0|1
171|NEW ROCHELLE -  Store# 171|1993-06-17|2100-12-31|1993-07-07|45695.0000|1|1|D108|0|0|1
131|GREENWICH -  Store# 131|1991-03-11|2100-12-31|1991-03-31|54997.0000|1|1|D138|0|0|1
81|NEW LONDON -  Store# 81|1993-09-24|2100-12-31|1993-10-14|40685.0000|1|1|D143|0|0|1
162|ROCHESTER -  Store# 162|1992-05-15|2100-12-31|1992-06-04|50708.0000|1|1|D112|0|0|1
31|READING -  Store# 31|1993-08-19|2100-12-31|1993-09-08|67001.0000|1|1|D132|0|0|1
72|ELIZABETH -  Store# 72|1993-04-25|2100-12-31|1993-05-15|78032.0000|1|1|D151|0|0|1
41|STORRS -  Store# 41|1993-04-12|2100-12-31|1993-05-02|56623.0000|1|1|D146|0|0|1
1|BEACON -  Store# 1|1992-06-12|2100-12-31|1992-07-02|66505.0000|1|1|D101|0|0|1
121|WATERTOWN -  Store# 121|1993-01-06|2100-12-31|1993-01-26|70352.0000|1|1|D116|0|0|1
22|WEST POINT -  Store# 22|1993-03-03|2100-12-31|1993-03-23|72571.0000|1|1|D117|0|0|1
21|GETTYSBURG -  Store# 21|1992-10-15|2100-12-31|1992-11-04|67109.0000|1|1|D128|0|0|1
12|HARRISBURG -  Store# 12|1992-09-09|2100-12-31|1992-09-29|79166.0000|1|1|D129|0|0|1
71|JERSEY CITY -  Store# 71|1991-06-11|2100-12-31|1991-07-01|44299.0000|1|1|D149|0|0|1
151|NIAGARA FALLS -  Store# 151|1992-05-17|2100-12-31|1992-06-06|78106.0000|1|1|D109|0|0|1
161|WHITE PLAINS -  Store# 161|1991-04-03|2100-12-31|1991-04-23|74661.0000|1|1|D118|0|0|1
62|ALBANY -  Store# 62|1991-10-27|2100-12-31|1991-11-16|56279.0000|1|1|D100|0|0|1
122|POUGHKEEPSIE -  Store# 122|1992-07-05|2100-12-31|1992-07-25|40191.0000|1|1|D111|0|0|1
92|HARTFORD -  Store# 92|1994-02-16|2100-12-31|1994-03-08|45648.0000|1|1|D139|0|0|1
191|BRONX -  Store# 191|1992-02-05|2100-12-31|1992-02-25|46524.0000|1|1|D124|0|0|1
202|NEW LONDON -  Store# 202|1990-11-16|2100-12-31|1990-12-06|54493.0000|1|1|D143|0|0|1
142|WEST POINT -  Store# 142|1991-05-11|2100-12-31|1991-05-31|58956.0000|1|1|D117|0|0|1
182|SCHENECTADY -  Store# 182|1992-06-13|2100-12-31|1992-07-03|61386.0000|1|1|D113|0|0|1
152|HARRISBURG -  Store# 152|1993-06-17|2100-12-31|1993-07-07|65882.0000|1|1|D129|0|0|1
83|NORWICH -  Store# 83|1991-04-15|2100-12-31|1991-05-05|44899.0000|1|1|D144|0|0|1
32|LOCKPORT -  Store# 32|1992-12-05|2100-12-31|1992-12-25|47916.0000|1|1|D104|0|0|1
2|STAMFORD -  Store# 2|1990-12-18|2100-12-31|1991-01-07|48332.0000|1|1|D145|0|0|1
13|STAMFORD -  Store# 13|1994-08-21|2100-12-31|1994-09-10|61035.0000|1|1|D145|0|0|1
52|NEW BRITAIN -  Store# 52|1991-04-27|2100-12-31|1991-05-17|68657.0000|1|1|D141|0|0|1
192|STATEN ISLAND -  Store# 192|1991-05-12|2100-12-31|1991-06-01|48672.0000|1|1|D123|0|0|1
163|BROOKLYN -  Store# 163|1991-03-25|2100-12-31|1991-04-14|50834.0000|1|1|D122|0|0|1
112|NEW LONDON -  Store# 112|1994-02-25|2100-12-31|1994-03-17|75638.0000|1|1|D143|0|0|1
183|ALTOONA -  Store# 183|1991-06-17|2100-12-31|1991-07-07|54471.0000|1|1|D126|0|0|1
123|PEEKSKILL -  Store# 123|1993-10-22|2100-12-31|1993-11-11|76740.0000|1|1|D110|0|0|1
132|ALBANY -  Store# 132|1991-02-15|2100-12-31|1991-03-07|59213.0000|1|1|D100|0|0|1
102|QUEENS -  Store# 102|1992-09-19|2100-12-31|1992-10-09|62399.0000|1|1|D121|0|0|1
114|SCHENECTADY -  Store# 114|1993-12-12|2100-12-31|1994-01-01|74720.0000|1|1|D113|0|0|1
173|ELIZABETH -  Store# 173|1994-10-05|2100-12-31|1994-10-25|61994.0000|1|1|D151|0|0|1
93|BEACON -  Store# 93|1992-07-28|2100-12-31|1992-08-17|60313.0000|1|1|D101|0|0|1
33|YONKERS -  Store# 33|1991-09-18|2100-12-31|1991-10-08|45037.0000|1|1|D119|0|0|1
42|LOCKPORT -  Store# 42|1991-05-19|2100-12-31|1991-06-08|41418.0000|1|1|D104|0|0|1
172|HARTFORD -  Store# 172|1993-11-01|2100-12-31|1993-11-21|49744.0000|1|1|D139|0|0|1
55|YORK -  Store# 55|1992-12-17|2100-12-31|1993-01-06|52207.0000|1|1|D136|0|0|1
203|BUFFALO -  Store# 203|1993-10-04|2100-12-31|1993-10-24|40379.0000|1|1|D102|0|0|1
133|NIAGARA FALLS -  Store# 133|1992-06-11|2100-12-31|1992-07-01|78821.0000|1|1|D109|0|0|1
153|WEST POINT -  Store# 153|1993-02-02|2100-12-31|1993-02-22|51189.0000|1|1|D117|0|0|1
82|ERIE -  Store# 82|1994-03-06|2100-12-31|1994-03-26|63998.0000|1|1|D127|0|0|1
53|BEACON -  Store# 53|1994-10-02|2100-12-31|1994-10-22|66162.0000|1|1|D101|0|0|1
135|BUFFALO -  Store# 135|1992-06-21|2100-12-31|1992-07-11|48023.0000|1|1|D102|0|0|1
23|NEWBURGH -  Store# 23|1994-07-21|2100-12-31|1994-08-10|57908.0000|1|1|D107|0|0|1
3|PHILADELPHIA -  Store# 3|1991-09-05|2100-12-31|1991-09-25|69153.0000|1|1|D130|0|0|1
193|LOCKPORT -  Store# 193|1992-06-25|2100-12-31|1992-07-15|73562.0000|1|1|D104|0|0|1
54|SCHENECTADY -  Store# 54|1994-02-10|2100-12-31|1994-03-02|51109.0000|1|1|D113|0|0|1
74|HARRISBURG -  Store# 74|1992-02-02|2100-12-31|1992-02-22|53207.0000|1|1|D129|0|0|1
205|WHITE PLAINS -  Store# 205|1991-11-04|2100-12-31|1991-11-24|47406.0000|1|1|D118|0|0|1
63|ALBANY -  Store# 63|1992-06-03|2100-12-31|1992-06-23|44823.0000|1|1|D100|0|0|1
43|SYRACUSE -  Store# 43|1993-06-18|2100-12-31|1993-07-08|71643.0000|1|1|D114|0|0|1
103|GETTYSBURG -  Store# 103|1993-02-16|2100-12-31|1993-03-08|73721.0000|1|1|D128|0|0|1
94|UTICA -  Store# 94|1992-02-05|2100-12-31|1992-02-25|61128.0000|1|1|D115|0|0|1
154|PHILADELPHIA -  Store# 154|1992-10-24|2100-12-31|1992-11-13|62794.0000|1|1|D130|0|0|1
75|HARRISBURG -  Store# 75|1991-01-28|2100-12-31|1991-02-17|58908.0000|1|1|D129|0|0|1
194|PHILADELPHIA -  Store# 194|1994-06-02|2100-12-31|1994-06-22|43448.0000|1|1|D130|0|0|1
73|NEW HAVEN -  Store# 73|1991-04-27|2100-12-31|1991-05-17|46411.0000|1|1|D142|0|0|1
143|ELMIRA -  Store# 143|1993-03-27|2100-12-31|1993-04-16|54282.0000|1|1|D103|0|0|1
4|UTICA -  Store# 4|1991-09-03|2100-12-31|1991-09-23|52293.0000|1|1|D115|0|0|1
144|NEW ROCHELLE -  Store# 144|1991-05-30|2100-12-31|1991-06-19|79097.0000|1|1|D108|0|0|1
66|NEW ROCHELLE -  Store# 66|1993-10-02|2100-12-31|1993-10-22|72263.0000|1|1|D108|0|0|1
24|UTICA -  Store# 24|1993-01-29|2100-12-31|1993-02-18|79361.0000|1|1|D115|0|0|1
113|MIDDLETOWN -  Store# 113|1991-08-07|2100-12-31|1991-08-27|46855.0000|1|1|D140|0|0|1
34|SYRACUSE -  Store# 34|1992-12-29|2100-12-31|1993-01-18|41337.0000|1|1|D114|0|0|1
44|UTICA -  Store# 44|1991-03-28|2100-12-31|1991-04-17|49605.0000|1|1|D115|0|0|1
184|SYRACUSE -  Store# 184|1994-07-04|2100-12-31|1994-07-24|44180.0000|1|1|D114|0|0|1
136|YORK -  Store# 136|1992-11-20|2100-12-31|1992-12-10|51700.0000|1|1|D136|0|0|1
174|WEST POINT -  Store# 174|1993-10-25|2100-12-31|1993-11-14|55271.0000|1|1|D117|0|0|1
134|ELIZABETH -  Store# 134|1992-01-16|2100-12-31|1992-02-05|57580.0000|1|1|D151|0|0|1
64|ELMIRA -  Store# 64|1991-05-25|2100-12-31|1991-06-14|47102.0000|1|1|D103|0|0|1
164|ERIE -  Store# 164|1991-12-12|2100-12-31|1992-01-01|51074.0000|1|1|D127|0|0|1
14|BEACON -  Store# 14|1991-12-09|2100-12-31|1991-12-29|76638.0000|1|1|D101|0|0|1
46|BEACON -  Store# 46|1993-11-26|2100-12-31|1993-12-16|68026.0000|1|1|D101|0|0|1
84|GREENWICH -  Store# 84|1993-02-21|2100-12-31|1993-03-13|51165.0000|1|1|D138|0|0|1
5|STAMFORD -  Store# 5|1990-12-21|2100-12-31|1991-01-10|77879.0000|1|1|D145|0|0|1
104|WILKES-BARRE -  Store# 104|1994-07-08|2100-12-31|1994-07-28|51671.0000|1|1|D135|0|0|1
204|ALTOONA -  Store# 204|1992-03-03|2100-12-31|1992-03-23|67885.0000|1|1|D126|0|0|1
124|ALBANY -  Store# 124|1992-09-26|2100-12-31|1992-10-16|76107.0000|1|1|D100|0|0|1
97|ALTOONA -  Store# 97|1994-05-12|2100-12-31|1994-06-01|76456.0000|1|1|D126|0|0|1
95|WILKES-BARRE -  Store# 95|1993-05-28|2100-12-31|1993-06-17|76292.0000|1|1|D135|0|0|1
115|BROOKLYN -  Store# 115|1991-08-12|2100-12-31|1991-09-01|40063.0000|1|1|D122|0|0|1
156|NEWBURGH -  Store# 156|1992-11-05|2100-12-31|1992-11-25|70005.0000|1|1|D107|0|0|1
175|GREENWICH -  Store# 175|1993-05-10|2100-12-31|1993-05-30|58651.0000|1|1|D138|0|0|1
15|WATERTOWN -  Store# 15|1993-07-12|2100-12-31|1993-08-01|41258.0000|1|1|D116|0|0|1
177|EDISON -  Store# 177|1991-03-09|2100-12-31|1991-03-29|70686.0000|1|1|D150|0|0|1
125|NEWBURGH -  Store# 125|1992-08-12|2100-12-31|1992-09-01|49813.0000|1|1|D107|0|0|1
25|MIDDLETOWN -  Store# 25|1993-10-17|2100-12-31|1993-11-06|49531.0000|1|1|D140|0|0|1
106|PITTSBURGH -  Store# 106|1991-11-20|2100-12-31|1991-12-10|55511.0000|1|1|D131|0|0|1
165|NEW LONDON -  Store# 165|1994-02-03|2100-12-31|1994-02-23|43730.0000|1|1|D143|0|0|1
45|NEW ROCHELLE -  Store# 45|1992-04-15|2100-12-31|1992-05-05|41981.0000|1|1|D108|0|0|1
38|ELIZABETH -  Store# 38|1994-03-26|2100-12-31|1994-04-15|41543.0000|1|1|D151|0|0|1
65|NEW HAVEN -  Store# 65|1991-06-22|2100-12-31|1991-07-12|44075.0000|1|1|D142|0|0|1
145|STATEN ISLAND -  Store# 145|1991-09-20|2100-12-31|1991-10-10|76367.0000|1|1|D123|0|0|1
16|NEW BRITAIN -  Store# 16|1992-06-25|2100-12-31|1992-07-15|45993.0000|1|1|D141|0|0|1
35|STATE COLLEGE -  Store# 35|1992-03-27|2100-12-31|1992-04-16|44636.0000|1|1|D134|0|0|1
85|NEW BRITAIN -  Store# 85|1993-08-24|2100-12-31|1993-09-13|70481.0000|1|1|D141|0|0|1
118|ALTOONA -  Store# 118|1992-03-09|2100-12-31|1992-03-29|49531.0000|1|1|D126|0|0|1
196|READING -  Store# 196|1993-01-29|2100-12-31|1993-02-18|51370.0000|1|1|D132|0|0|1
185|ALLENTOWN -  Store# 185|1993-04-24|2100-12-31|1993-05-14|64471.0000|1|1|D125|0|0|1
176|GETTYSBURG -  Store# 176|1991-11-03|2100-12-31|1991-11-23|45296.0000|1|1|D128|0|0|1
105|BRONX -  Store# 105|1991-01-19|2100-12-31|1991-02-08|42027.0000|1|1|D124|0|0|1
155|STATE COLLEGE -  Store# 155|1993-05-28|2100-12-31|1993-06-17|71271.0000|1|1|D134|0|0|1
198|PITTSBURGH -  Store# 198|1992-05-09|2100-12-31|1992-05-29|53935.0000|1|1|D131|0|0|1
146|GETTYSBURG -  Store# 146|1993-04-26|2100-12-31|1993-05-16|42285.0000|1|1|D128|0|0|1
76|BRONX -  Store# 76|1992-11-18|2100-12-31|1992-12-08|49164.0000|1|1|D124|0|0|1
17|BRIDGEPORT -  Store# 17|1991-02-13|2100-12-31|1991-03-05|49065.0000|1|1|D137|0|0|1
57|PEEKSKILL -  Store# 57|1993-09-06|2100-12-31|1993-09-26|70052.0000|1|1|D110|0|0|1
195|NEWBURGH -  Store# 195|1990-10-18|2100-12-31|1990-11-07|67960.0000|1|1|D107|0|0|1
188|POUGHKEEPSIE -  Store# 188|1991-08-29|2100-12-31|1991-09-18|52326.0000|1|1|D111|0|0|1
186|ALLENTOWN -  Store# 186|1993-06-25|2100-12-31|1993-07-15|51007.0000|1|1|D125|0|0|1
116|ALTOONA -  Store# 116|1993-03-26|2100-12-31|1993-04-15|79859.0000|1|1|D126|0|0|1
87|ERIE -  Store# 87|1993-05-14|2100-12-31|1993-06-03|46502.0000|1|1|D127|0|0|1
7|ALBANY -  Store# 7|1993-03-15|2100-12-31|1993-04-04|74079.0000|1|1|D100|0|0|1
36|YONKERS -  Store# 36|1992-08-08|2100-12-31|1992-08-28|67747.0000|1|1|D119|0|0|1
58|ELIZABETH -  Store# 58|1993-04-11|2100-12-31|1993-05-01|40851.0000|1|1|D151|0|0|1
6|POUGHKEEPSIE -  Store# 6|1991-09-09|2100-12-31|1991-09-29|68304.0000|1|1|D111|0|0|1
26|NEW LONDON -  Store# 26|1993-10-28|2100-12-31|1993-11-17|68963.0000|1|1|D143|0|0|1
197|NORWICH -  Store# 197|1990-11-03|2100-12-31|1990-11-23|57687.0000|1|1|D144|0|0|1
127|STATE COLLEGE -  Store# 127|1991-05-26|2100-12-31|1991-06-15|68087.0000|1|1|D134|0|0|1
86|WATERTOWN -  Store# 86|1991-06-07|2100-12-31|1991-06-27|61313.0000|1|1|D116|0|0|1
128|NORWICH -  Store# 128|1993-12-18|2100-12-31|1994-01-07|76182.0000|1|1|D144|0|0|1
166|NORWICH -  Store# 166|1994-07-23|2100-12-31|1994-08-12|54168.0000|1|1|D144|0|0|1
56|NEWBURGH -  Store# 56|1991-11-23|2100-12-31|1991-12-13|72257.0000|1|1|D107|0|0|1
28|GREENWICH -  Store# 28|1992-10-05|2100-12-31|1992-10-25|44634.0000|1|1|D138|0|0|1
167|ELIZABETH -  Store# 167|1991-08-26|2100-12-31|1991-09-15|56528.0000|1|1|D151|0|0|1
137|WEST POINT -  Store# 137|1991-10-11|2100-12-31|1991-10-31|68120.0000|1|1|D117|0|0|1
119|NIAGARA FALLS -  Store# 119|1991-11-15|2100-12-31|1991-12-05|54022.0000|1|1|D109|0|0|1
117|ELIZABETH -  Store# 117|1992-09-04|2100-12-31|1992-09-24|48038.0000|1|1|D151|0|0|1
96|SCRANTON -  Store# 96|1991-01-17|2100-12-31|1991-02-06|56342.0000|1|1|D133|0|0|1
68|MIDDLETOWN -  Store# 68|1992-07-26|2100-12-31|1992-08-15|76674.0000|1|1|D140|0|0|1
37|WILKES-BARRE -  Store# 37|1991-10-15|2100-12-31|1991-11-04|58921.0000|1|1|D135|0|0|1
47|BRONX -  Store# 47|1992-05-30|2100-12-31|1992-06-19|74493.0000|1|1|D124|0|0|1
29|NORWICH -  Store# 29|1993-04-10|2100-12-31|1993-04-30|69582.0000|1|1|D144|0|0|1
67|ELIZABETH -  Store# 67|1992-10-16|2100-12-31|1992-11-05|53649.0000|1|1|D151|0|0|1
126|NORWICH -  Store# 126|1991-08-13|2100-12-31|1991-09-02|61028.0000|1|1|D144|0|0|1
138|YONKERS -  Store# 138|1991-07-11|2100-12-31|1991-07-31|44644.0000|1|1|D119|0|0|1
77|NEW YORK CITY -  Store# 77|1993-04-23|2100-12-31|1993-05-13|61221.0000|1|1|D106|0|0|1
157|NEW LONDON -  Store# 157|1993-07-10|2100-12-31|1993-07-30|61404.0000|1|1|D143|0|0|1
109|NEW LONDON -  Store# 109|1993-03-19|2100-12-31|1993-04-08|73680.0000|1|1|D143|0|0|1
78|EDISON -  Store# 78|1994-03-15|2100-12-31|1994-04-04|53985.0000|1|1|D150|0|0|1
206|ELIZABETH -  Store# 206|1991-11-20|2100-12-31|1991-12-10|44779.0000|1|1|D151|0|0|1
178|NORWICH -  Store# 178|1992-10-29|2100-12-31|1992-11-18|59678.0000|1|1|D144|0|0|1
27|STAMFORD -  Store# 27|1993-03-08|2100-12-31|1993-03-28|45805.0000|1|1|D145|0|0|1
19|ALLENTOWN -  Store# 19|1994-01-02|2100-12-31|1994-01-22|62878.0000|1|1|D125|0|0|1
48|PATTERSON -  Store# 48|1993-06-25|2100-12-31|1993-07-15|66168.0000|1|1|D148|0|0|1
108|ALBANY -  Store# 108|1992-06-19|2100-12-31|1992-07-09|65932.0000|1|1|D100|0|0|1
139|STATE COLLEGE -  Store# 139|1993-09-19|2100-12-31|1993-10-09|40379.0000|1|1|D134|0|0|1
107|BRONX -  Store# 107|1994-09-08|2100-12-31|1994-09-28|74751.0000|1|1|D124|0|0|1
59|WILKES-BARRE -  Store# 59|1994-02-26|2100-12-31|1994-03-18|43068.0000|1|1|D135|0|0|1
88|ALBANY -  Store# 88|1992-05-23|2100-12-31|1992-06-12|71512.0000|1|1|D100|0|0|1
148|SCHENECTADY -  Store# 148|1992-04-28|2100-12-31|1992-05-18|51014.0000|1|1|D113|0|0|1
9|MIDDLETOWN -  Store# 9|1993-11-19|2100-12-31|1993-12-09|78541.0000|1|1|D140|0|0|1
147|NEWBURGH -  Store# 147|1991-01-06|2100-12-31|1991-01-26|65423.0000|1|1|D107|0|0|1
169|SYRACUSE -  Store# 169|1991-07-23|2100-12-31|1991-08-12|66737.0000|1|1|D114|0|0|1
99|QUEENS -  Store# 99|1992-03-07|2100-12-31|1992-03-27|54846.0000|1|1|D121|0|0|1
18|STAMFORD -  Store# 18|1994-06-18|2100-12-31|1994-07-08|58059.0000|1|1|D145|0|0|1
89|WATERTOWN -  Store# 89|1991-04-08|2100-12-31|1991-04-28|77357.0000|1|1|D116|0|0|1
187|WEST POINT -  Store# 187|1993-11-17|2100-12-31|1993-12-07|69554.0000|1|1|D117|0|0|1
199|NEWARK -  Store# 199|1993-02-18|2100-12-31|1993-03-10|75549.0000|1|1|D147|0|0|1
179|PITTSBURGH -  Store# 179|1993-02-22|2100-12-31|1993-03-14|49609.0000|1|1|D131|0|0|1
98|STATEN ISLAND -  Store# 98|1992-09-09|2100-12-31|1992-09-29|42646.0000|1|1|D123|0|0|1
159|WHITE PLAINS -  Store# 159|1993-06-30|2100-12-31|1993-07-20|77002.0000|1|1|D118|0|0|1
158|GETTYSBURG -  Store# 158|1991-08-27|2100-12-31|1991-09-16|57929.0000|1|1|D128|0|0|1
69|STATE COLLEGE -  Store# 69|1992-05-17|2100-12-31|1992-06-06|52795.0000|1|1|D134|0|0|1
49|HARTFORD -  Store# 49|1992-11-22|2100-12-31|1992-12-12|69339.0000|1|1|D139|0|0|1
8|HARRISBURG -  Store# 8|1991-11-04|2100-12-31|1991-11-24|66067.0000|1|1|D129|0|0|1
189|YONKERS -  Store# 189|1994-02-17|2100-12-31|1994-03-09|49990.0000|1|1|D119|0|0|1
39|PHILADELPHIA -  Store# 39|1991-08-02|2100-12-31|1991-08-22|43492.0000|1|1|D130|0|0|1
129|ELIZABETH -  Store# 129|1993-06-05|2100-12-31|1993-06-25|65502.0000|1|1|D151|0|0|1
168|READING -  Store# 168|1994-07-27|2100-12-31|1994-08-16|44925.0000|1|1|D132|0|0|1
149|YONKERS -  Store# 149|1991-08-18|2100-12-31|1991-09-07|55890.0000|1|1|D119|0|0|1
79|HARTFORD -  Store# 79|1992-11-24|2100-12-31|1992-12-14|57152.0000|1|1|D139|0|0|1
\.
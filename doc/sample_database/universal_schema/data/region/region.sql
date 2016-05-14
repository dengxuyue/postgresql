--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Region
(
    Region_Cd ,
    Region_Name,
    Division_Cd,
    Region_Mgr_Associate_Id
) FROM stdin with delimiter as '|';
R011|NewJersey-11|004|9814
R007|NewYork-7|003|24494
R004|NewYork-4|003|28078
R001|NewYork-1|003|27056
R015|Conn-15|001|19477
R019|Penn-19|002|28727
R013|Conn-13|001|980
R014|Conn-14|001|13803
R017|Penn-17|002|18245
R008|NewYork-8|003|13922
R002|NewYork-2|003|13194
R012|NewJersey-12|004|30214
R009|NewYork-9|003|1594
R020|Penn-20|002|13003
R003|NewYork-3|003|9827
R005|NewYork-5|003|13560
R010|NewJersey-10|004|16520
R016|Penn-16|002|19243
R006|NewYork-6|003|19539
R018|Penn-18|002|28388
\.

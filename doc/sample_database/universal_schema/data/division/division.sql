--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Division
(
    Division_Cd ,
    Division_Name,
    All_Divisions_Cd,
    Division_Mgr_Associate_Id
) FROM stdin with delimiter as '|';
002|PA|1|28078
001|CT|1|13194
004|NJ|1|13922
003|NY|1|19539
\.

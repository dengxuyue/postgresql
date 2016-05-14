--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Item_Division 
(
    Item_Division_Cd ,
    Item_Division_Name,
    Item_Division_Mgr_Associate_Id,
    All_Item_Divisions_Cd
)
FROM stdin with delimiter as '|';
2|PERISHIBLES|0|1
3|OTHER|0|1
4|PHARMACY|0|1
1|GROCERY|0|1
\.

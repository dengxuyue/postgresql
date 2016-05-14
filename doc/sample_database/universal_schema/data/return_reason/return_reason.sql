--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Return_Reason(Return_Reason_Cd, Return_Reason_Desc) FROM stdin with delimiter as '|';
4|INCORRECT ITEM
3|DAMAGED / SPOILAGE
1|NO NEED
2|PACKAGE BREAKAGE
\.

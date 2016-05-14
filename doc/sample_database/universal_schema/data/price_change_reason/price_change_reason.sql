--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Price_Change_Reason(Price_Change_Reason_Cd, Price_Change_Reason_Desc) 
FROM stdin with delimiter as '|';
2|Promotional Markdown
3|Initial/Original Retail Price
1|Clearance Markdown
\.

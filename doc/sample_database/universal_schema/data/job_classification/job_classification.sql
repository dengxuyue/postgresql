--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY Job_Classification(Job_Classification_Cd, Job_Classification_Desc)
FROM stdin with delimiter as '|';
FA|FULL ASSOCIATE
SM|SENIOR MANGER
MG|MANAGER
VP|VICE PRESIDENT
SV|SENIOR VP
DR|DIRECTOR
CO|CEO
EN|ENTRY
\.

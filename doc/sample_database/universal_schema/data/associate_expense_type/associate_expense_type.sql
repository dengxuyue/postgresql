--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY associate_expense_type( Associate_Expns_Type_Cd , Assoc_Expns_Type_Desc )
    FROM stdin with delimiter as '|';
1|Regular
10|Miscellaneous
2|Overtime
3|Bereavement
4|Holiday
5|Personal
6|Sick
7|Jury Duty
8|Maternity Leave
9|Training
\.

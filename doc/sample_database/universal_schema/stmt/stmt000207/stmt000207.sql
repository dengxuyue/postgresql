--Referenced Tables: LOCATION
--Referenced Views: VIEW_DR141723
--Source: DR141723
--Query text:

select *
from universal_schema.VIEW_DR141723 a, universal_schema.location b
where a.location_id = b.location_id and b.location_id > 150;
--Referenced Tables: LOCATION, LABOR_PLAN, LOCATION_PLAN
--Referenced Views:
--Source: DR143205
--Query text:

select *
from universal_schema.location a inner join universal_schema.labor_plan b
		on a.location_id = b.location_id and b.plan_period_start_dt = date'2004-01-15'
	 inner join universal_schema.location_plan c
		on a.location_id = c.location_id and c.period_start_dt = date'2004-01-15'
where a.location_open_dt = '1992-05-17';
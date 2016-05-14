--Referenced Tables: LOCATION, LABOR_PLAN, LOCATION_PLAN, COST
--Referenced Views:
--Source: DR138676
--Query text:

select lp_alias.location_id, location.location_id, cost.cost_cd
from (universal_schema.labor_plan left outer join universal_schema.location on labor_plan.location_id = location.location_id)
  full outer join
     (universal_schema.location_plan lp_alias inner join universal_schema.cost on lp_alias.cost_cd = cost.cost_cd
	  and '06/02/2005' = (select period_start_dt from universal_schema.location_plan where period_start_dt = lp_alias.period_start_dt))
on labor_plan.location_id = lp_alias.location_id
order by 1, 2, 3;
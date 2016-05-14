--Referenced Tables: ITEM_STORE_SOLD
--Referenced Views: VIEW_DR141124
--Source: DR141124
--Query text:

select a.week_of_year, b.location_name
from universal_schema.item_store_sold a join universal_schema.VIEW_DR141124 b on a.location_id = b.location_id
where a.plan_qty > 0
	and a.on_hand_qty > 0
	and (b.location_name = 'BRONX -  Store# 76' or b.location_name = 'QUEENS -  Store# 99');

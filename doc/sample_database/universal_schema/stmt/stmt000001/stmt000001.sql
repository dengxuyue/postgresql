select	l.Location_name as STORE, l.Location_total_area_meas as ft,
sum(mkb_rev_amt) as t_sales, sum(mkb_rev_amt)/l.Location_total_area_meas as Sales_per_foot
from	universal_schema.sales_transaction s, universal_schema.associate a,
		universal_schema.location l
where	a.Associate_Party_Id = s.associate_party_id
	and	
l.location_id = a.location_id 
	and	
Tran_Date = '2005-06-29' 
---and	
---sales_per_foot > (
---select	avg(sale_ft.sale_per_sqf) as avg_sqr_ft 
---from	( 
---select	sale_total.store as store_id2, sale_total.sales/l.Location_Total_Area_Meas as sale_per_sqf 
---from	( 
---select	a.Location_ID as STORE, sum(MKB_Rev_Amt)/7 as sales 
---from	universal_schema.sales_transaction s, universal_schema.associate a 
---where	a.Associate_Party_Id = s.associate_party_id 
---    and	Tran_Date >= date '2005-06-30' - interval '7' day 
---    and	Tran_Date < '2005-06-30' 
---group	by 1 ) sale_total , universal_schema.location l 
---where	l.location_id = sale_total.store ) sale_ft)
group	by 1,2 
order	by Sales_per_foot desc;
select	
ast1.store_class,
ast1.average_feet,
count(ast1.associate) associate_count,
sum(ast1.rev) as Total_Revenue,
average_feet/associate_count as ft_per_associate,
Total_revenue/ft_per_associate as RRU,
((RRU/Total_Revenue) * 100) RRU_Percentage
from	( 
sel	ast.store_class store_class, ast.average_feet average_feet,
		ast.associate associate, sum(st.MKB_Rev_Amt) as rev 
from	( 
sel	inner_store.store_class store_class, inner_store.average_feet average_feet,
		Associate_Party_Id Associate 
from	( 
select	Location_Id location_id, Location_Name name, 
case	when l.Location_Total_Area_Meas < 50000 then '40-50K Feet' 
	when	l.Location_Total_Area_Meas >= 50000 
	and	l.Location_Total_Area_Meas < 60000 then '50-60K Feet' 
	when	l.Location_Total_Area_Meas >= 60000 
	and	l.Location_Total_Area_Meas < 70000 then '60-70K Feet' 
else	'70-80K Feet' 
end	as store_class, avg(Location_Total_Area_Meas) over (partition by store_class) as average_feet 
from	universal_schema.location l ) inner_store, universal_schema.associate a 
where	inner_store.location_id = a.location_id 
	and	Position_Id not in (919,914,915,918) ) ast , universal_schema.sales_transaction st 
where	ast.associate = st.Associate_Party_Id 
group	by 1,2,3 ) ast1
group	by 1,2
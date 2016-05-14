--Referenced Tables: Cost, Cost_Type, Location_Plan
--Referenced Views:
--Source: DR125693
--Query text:

Select *
From universal_schema.Cost c
Where 2 >= (
			Select count(distinct cty.Cost_Type_Cd) 
			From universal_schema.Cost_Type cty, universal_schema.Location_Plan l 
			Where c.Cost_Cd = l.Cost_Cd
			)
;
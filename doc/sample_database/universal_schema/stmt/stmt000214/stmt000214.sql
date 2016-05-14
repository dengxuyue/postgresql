--Referenced Tables: District, Location, Location_Plan
--Referenced Views:
--Source: DR126858
--Query text:

Select *
From universal_schema.Location l left join universal_schema.District d 
				on l.District_Cd = d.District_Cd 
				left join universal_schema.Location_Plan lp 
				on l.Location_Id = lp.Location_Id
Where d.District_Cd	is null
;
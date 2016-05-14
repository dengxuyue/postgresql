--Referenced Tables: Current_Promo, Promo_Type
--Referenced Views:
--Source: DR133102
--Query text:

Select c1.Promo_Name
From universal_schema.Current_Promo c1 
     left outer join universal_schema.Current_Promo c2 on 1 = 1
	 left outer join universal_schema.Promo_Type p on 1 = 1
;
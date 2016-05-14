--Referenced Tables: Offers_20050701, Party, Current_Promo
--Referenced Views:
--Source: DR128379
--Query text:

Select c.Promo_Name,
       c.Promo_Type,
	   sum(o.Visits)
From universal_schema.Offers_20050701 o 
     join universal_schema.Party p on ( o.Party_Id = p.Party_Id )
	 join universal_schema.Current_Promo c on ( o.Promo_Id = c.Promo_Id )
Where o.Location_Id in (80, 81, 82, 83, 84, 85, 86, 87) and
	  p.Party_Id in (1, 2, 3)
Group by c.Promo_Name, c.Promo_Type;
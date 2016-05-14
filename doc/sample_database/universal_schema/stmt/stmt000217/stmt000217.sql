--Referenced Tables: Item_Inventory
--Referenced Views:
--Source: DR131464
--Query text:

Select Location_Id,
       On_Hand_Unit_Qty,
	   On_Order_Qty,
	   rank(On_Order_Qty)
From universal_schema.Item_Inventory
Group by Location_Id
Qualify rank (On_Order_Qty desc) <= 20;

--Referenced Tables: Brand, Item_Trait, Item
--Referenced Views:
--Source: DR115535
--Query text:

Select count(b.Brand_Cd + it.Trait_Cd), count(it.Trait_Cd)
From universal_schema.Brand b, universal_schema.Item i, universal_schema.Item_Trait it
Where b.Brand_Cd = i.Brand_Cd and
      i.Item_Id = it.Item_Id
Group by b.Brand_Cd
Order by b.Brand_Cd;


sel	
n2.location,
n2.item_id,
n2.balance as prev_bal,
zeroifnull (sum(n3.item_qty)) as just_sold,
prev_bal - just_sold as whats_left
from	
(
sel	
i1.location,
i1.item_id,
i1.on_hand,
i1.sold,
i1.balance
from	(
sel	
location,
iip.item_id,
iip.Plan_On_Hand_Qty as on_hand,
sum(stl.item_qty) as sold,
on_hand - sold as balance
from	universal_schema.sales_transaction_line stl,
universal_schema.item_inventory_plan iip
where	stl.tran_line_date >= date '2005-06-27' 
	and	
stl.tran_line_date < date '2005-07-01'
	and	iip.Item_Inventory_Plan_Dt = date '2005-06-27'
	and	
iip.location_id = stl.location
	and	
iip.item_id = stl.item_id
	and	iip.item_id =4300097940
group	by 1,2,3
) i1(location, item_id, on_hand, sold, balance)
where	i1.location=200
)
N2
(
location,
item_id,
on_hand,
sold,
balance
)
left outer join
(
sel	
i2.item_id,
i2.item_qty,
i2.location
from	
(
sel	
Item_Id,
Item_Qty,
location
from	universal_schema.sales_transaction_line
where	tran_line_date = '2005-07-01'
	and	
item_id = 4300097940
) i2(item_id, item_qty, location)
where	i2.location =200
)
n3(
item_id,
item_qty,
location
)
	on	
n3.item_id = n2.item_id
	and	
n3.location=n2.location
group	by 1,2,3

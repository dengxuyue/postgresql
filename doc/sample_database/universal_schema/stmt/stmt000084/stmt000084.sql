sel	a.reward_cd (title 'customer'),count(c.returned_item_id) 
from	universal_schema.sales_transaction a, universal_schema.sales_transaction_line b,
		universal_schema.return_transaction_line c 
where	a.sales_tran_id = b.sales_tran_id 
	and	b.sales_tran_id = c.original_sales_tran_id 
	and	b.location <> c.location_id
	and	cast(c.Return_Tran_Line_Start_Dttm as date) between '2005-05-01' 
	and	'2005-07-01'
group	by 1 
order	by 2 desc
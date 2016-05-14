sel	a.associate_party_id,count(d.item_name) 
from	universal_schema.sales_transaction a, universal_schema.sales_transaction_line b,
		universal_schema.return_transaction_line c, universal_schema.item d 
where	a.sales_tran_id = b.sales_tran_id 
	and	b.sales_tran_id = c.original_sales_tran_id 
	and	c.returned_item_id = d.item_id 
	and	cast(c.Return_Tran_Line_Start_Dttm as date) between '2005-05-01' 
	and	'2005-07-01' 
	and	b.location in (
select	location_id 
from	universal_schema.location 
where	cast(location_type_cd as char(1)) = '1')
group	by 1 
order	by 2 desc
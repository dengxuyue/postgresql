select	the_date, the_hour, sum(tot_qty) 
from	
(
select	tran_line_date the_date, cast(extract (hour 
from	sales_tran_line_start_dttm) as integer) the_hour, sum(item_qty) over (partition by tran_line_date 
order	by the_hour rows unbounded preceding) tot_qty 
from	universal_schema.sales_transaction_line 
where	tran_line_date = '2005-06-30') t1 
group	by 1,2 
order	by 1,2
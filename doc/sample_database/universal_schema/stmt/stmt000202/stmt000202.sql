--Referenced Tables: ITEM_PRICE_HISTORY
--Referenced Views:
--Source: DR137524
--Query text:

select sum(item_price_amt)
from universal_schema.item_price_history
group by item_id;
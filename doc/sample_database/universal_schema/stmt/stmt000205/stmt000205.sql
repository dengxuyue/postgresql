--Referenced Tables: OFFERS_20050701
--Referenced Views:
--Source: DR140452
--Query text:

select promo_id, max(visits)
from (
	select a.promo_id, a.visits
	from universal_schema.offers_20050701 a
	
	union
	
	select b.promo_id, 4
	from universal_schema.offers_20050701 b
) dt
group by 1;
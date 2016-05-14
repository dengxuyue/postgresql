--Referenced Tables: OFFERS_20050701
--Referenced Views:
--Source: DR132739
--Query text:

select party_id, club_level, sampleid
from universal_schema.offers_20050701
order by 1, 2
sample when club_level = 'level1' then 5
	   when club_level = 'level2' then 5
end;
--Referenced Tables: ASSOCIATE_EXPENSE_TYPE
--Referenced Views: VIEW_DR132613
--Source: DR132613
--Query text:

select x1, z1
from universal_schema.VIEW_DR132613
where
(
	(z1 = 9
	 and
	 x1 in (select 4 from universal_schema.associate_expense_type)
	)
	or
	 z1 = 8
);
--Referenced Tables: ASSOCIATE_BENEFIT_EXPENSE, ASSOCIATE_LABOR_EXPENSE
--Referenced Views:
--Source: DR137442
--Query text:

update universal_schema.associate_benefit_expense set benefit_hours_qty = 10 
where benefit_hours_qty between 5 and 10
;update universal_schema.associate_labor_expense set labor_hours_qty = 10 
where labor_hours_qty between 5 and 10
;select * from universal_schema.associate_labor_expense;
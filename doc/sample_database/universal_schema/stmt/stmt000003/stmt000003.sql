select	
    universal_schema.sales_transaction.reward_cd ,
    count(universal_schema.sales_transaction.Sales_Tran_Id ),
    sum(universal_schema.sales_transaction.MKB_Rev_Amt ) as rev,
    sum(universal_schema.sales_transaction.MKB_Cost_Amt ) as cost
-- ,
-- ((rev-cost)/rev)*100 as GM_Per,
-- case	when rev >=4000 then 'PREMIER'
--     when	rev >=3000 
--     and	rev <4000 then 'GOLD'
--     when	rev >=2000 
--     and	rev < 3000 then 'SILVER'
--     when	rev >= 0 
--     and	rev < 2000 then 'BRONZE'
-- end	as Club_Level 
FROM	universal_schema.sales_transaction
WHERE	universal_schema.sales_transaction.reward_cd <> ''
	and	universal_schema.sales_transaction.reward_cd ='128-11263'
GROUP	BY universal_schema.sales_transaction.reward_cd

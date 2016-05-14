select	l.Location_Name (title 'STORE'),
IDT.BENE_IDT (title 'Benefits Expense'),
IDT.LABOR_COST_IDT (title 'Store Labor Cost'),
IDT.STORE_COST_IDT (title 'Store Direct Cost'),
IDT.BENE_IDT+IDT.LABOR_COST_IDT+IDT.STORE_COST_IDT as Daily_Cost,
sum(st.MKB_Rev_Amt) as Revenue,
sum(st.MKB_Cost_Amt) as Product_cost,
revenue-product_cost as Product_Margin,
(Product_Margin/Revenue)*100 as Product_Margin_percent,
Product_Margin-Daily_Cost as Store_Margin,
(Store_margin/Revenue)*100 as Store_Margin_percent
from	
(
select	l.Location_Id as Store_ID_IDT,
zeroifnull(bene.bene_exp) as BENE_IDT,
lp.Actual_Cost_Amt/7 as STORE_COST_IDT,
sum(Labor_Cost_Amt) as LABOR_COST_IDT
from	( 
sel	a.location_id as store_id, sum(abe.Benefit_Hours_Qty)*30 as bene_exp 
from	universal_schema.ASSOCIATE a left outer join universal_schema.ASSOCIATE_BENEFIT_EXPENSE abe 
	on	abe.Associate_Party_Id = a.Associate_Party_Id 
	and	abe.Period_End_Dt='2005-06-30' 
group	by 1 ) bene,
universal_schema.location l, universal_schema.ASSOCIATE_LABOR_EXPENSE ALE,
		universal_schema.ASSOCIATE a,
universal_schema.location_plan lp
where	
bene.store_id = l.Location_Id 
	and	
ale.Associate_Party_Id = a.Associate_Party_Id 
	and	
a.Location_Id = l.location_id 
	and	
lp.Location_Id = l.location_id 
	and	
ale.Period_End_Dt='2005-06-30' 
	and	
lp.period_start_dt = date '2005-06-30' - interval '7' day
group	by 1,2,3) IDT,
universal_schema.sales_transaction ST, universal_schema.associate a,
		universal_schema.location l
where	
l.Location_Id = a.Location_Id 
	and	
a.Associate_Party_Id = ST.Associate_party_Id 
	and	
l.location_id = IDT.Store_ID_IDT 
	and	
ST.Tran_Date = '2005-06-30'
group	by 1,2,3,4
order	by 11 desc
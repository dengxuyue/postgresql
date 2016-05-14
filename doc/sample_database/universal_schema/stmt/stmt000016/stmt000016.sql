SELECT	
I.ITEM_NAME,
SUM(STL.UNIT_SELLING_PRICE_AMT)/30 AS PREV,
SUM(STL.UNIT_COST_AMT)/30 AS COST,
COUNT(DISTINCT(REWARD_CD)) AS DIST_CUST,
PREV-COST AS MARGIN
FROM	
universal_schema.ITEM I,
universal_schema.SALES_TRANSACTION_LINE STL,
universal_schema.SALES_TRANSACTION ST
WHERE	STL.TRAN_LINE_DATE < DATE'2005-06-30'
	AND	
STL.TRAN_LINE_DATE >= DATE'2005-06-01'
	AND	
STL.ITEM_ID = I.ITEM_ID
	AND	
ST.SALES_TRAN_ID=STL.SALES_TRAN_ID
GROUP	BY 1